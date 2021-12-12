%hd_non_uniform.m
%Harry Coules 2010
%Modified revision:
%hd_non_uniform_simple.m
%Harry Coules 2012
%This program computes residual stresses from blind hole drilling data
%according to ASTM Standard E837-08

%You need;
%Strains in txt format
%Calib Data

%Read data file
 disp('Which file contains the hole drilling data you wish to analyse?');
 disp('File must be tab-separated data in the format:');
 filename = input('Depth S1 S2 S3, without headers ','s');
 fid = fopen(filename);
 C = textscan(fid,'%f %f %f %f');
 fclose(fid);

 strain_steps = [C{2},C{3},C{4}];
 depth_steps = C{1};
%User needs to input drilling parameters
 rosette_type = input('Rosette type (A/B/C): ','s');
 total_depth = input('Overall hole depth (mm): ');
 hole_dia = input('Overall hole diameter (mm): ');
 gc_dia = [];
 gc_dia = input('Gauge circle diameter (mm) [5.13]: ');
 if isempty(gc_dia)
 gc_dia = 5.13;
 end

 d0_over_d = hole_dia/gc_dia;

 E = input('Young modulus (GPa): ')*10^9;
 nu = input('Poisson ratio: ');

 disp('If you wish to apply a stress transformation to find');
 disp('the stresses at an angle to the rosette orientation,');
 theta = input('please provide agnle (degrees, anticlockwise +ive [0]: ');
 if isempty(theta)
 theta = 0;
 end
%Plot strain vs depth
 plot(depth_steps,strain_steps(:,1),'b');
 hold on
 plot(depth_steps,strain_steps(:,2),'r');
 plot(depth_steps,strain_steps(:,3),'g');
 xlim([depth_steps(1),depth_steps(end)]);
 xlabel('Hole depth (mm)');
 ylabel('Strain');
 legend('Gauge 1','Gauge 2','Gauge 3','Location','SouthOutside')
 disp('Please verify that the strain/hole depth plots ');
 disp('follow generally smooth trends');

%Take the zero depth line off of depth_steps and strain_steps
 depth_steps(1) = [];
 strain_steps(1,:) = [];

%Compute combinational strains (see ASTM standard p742)
 p_j = 0.5*(strain_steps(:,3)+strain_steps(:,1));
 q_j = 0.5*(strain_steps(:,3)-strain_steps(:,1));
 t_j = 0.5*(strain_steps(:,3)+strain_steps(:,1)-2*strain_steps(:,2));

%Estimate the standard errors
 p_std_sq = sum(((p_j(1:length(p_j)-3)-(3*p_j(2:length(p_j)-2))+(3*p_j(3:length(p_j)-1)- p_j(4:length(p_j)))).^2)./(20*(length(p_j)-3)));
 q_std_sq = sum(((q_j(1:length(q_j)-3)-(3*q_j(2:length(q_j)-2))+(3*q_j(3:length(q_j)-1)- q_j(4:length(q_j)))).^2)./(20*(length(q_j)-3)));
 t_std_sq = sum(((t_j(1:length(t_j)-3)-(3*t_j(2:length(t_j)-2))+(3*t_j(3:length(t_j)-1)-t_j(4:length(t_j)))).^2)./(20*(length(t_j)-3)));

%Load calibration matrices:
if rosette_type == 'a'||rosette_type == 'A'
 load non_uniform_calibration_data_a.mat;
elseif rosette_type == 'b'||rosette_type == 'B'
 load non_uniform_calibration_data_b.mat;
elseif rosette_type == 'c'||rosette_type == 'C'
 load non_uniform_calibration_data_c.mat;
else
 error('Rosette type not recognised.')
end

 calib_a = calib_a.*(hole_dia/2)^2; %Adjust calibration matrices for hole dia.
 calib_b = calib_b.*(hole_dia/2)^2;
 %Also loaded: stress_depths, c (second derivitive matrix)
 
diag_size = (size(p_j,1));
diag_elements = ones(diag_size,1);
c = spdiags([diag_elements -2*diag_elements diag_elements],-1:1,diag_size,diag_size);
c(1,:) = 0;
c(end,:) = 0;

%Initial guesses at regularisation factors
 alpha_p = 10^-5;
 alpha_q = 10^-5;
 alpha_t = 10^-5;

%Iterate to find good regularisation factors, and hence the stresses
 alpha_p_ok = 0;
 alpha_q_ok = 0;
 alpha_t_ok = 0;
 all_alphas_ok = 0;
 k = 0;

 while all_alphas_ok == 0
 %Apply the regularisation and calculate the stresses
 P = ((calib_a'*calib_a)+(alpha_p*c'*c))\((E/(1+nu))*calib_a'*p_j);
 Q = ((calib_b'*calib_b)+(alpha_q*c'*c))\(E*calib_b'*q_j);
 T = ((calib_b'*calib_b)+(alpha_t*c'*c))\(E*calib_b'*t_j);

 %P = pinv((calib_a'*calib_a)+(alpha_p*c'*c))*((E/(1+nu))*calib_a'*p_j);
 %Q = pinv((calib_b'*calib_b)+(alpha_q*c'*c))*(E*calib_b'*q_j);
 %T = pinv((calib_b'*calib_b)+(alpha_t*c'*c))*(E*calib_b'*t_j);
 %Calculate 'misfit' strains
 p_m = p_j-(((1+nu)/E)*calib_a*P);
 q_m = q_j-((1/E)*calib_b*Q);
 t_m = t_j-((1/E)*calib_b*T);
 %Mean squares of misfit vectors
 p_rms_sq = sum(abs(p_m.^2))/length(p_m);
 q_rms_sq = sum(abs(q_m.^2))/length(q_m);
 t_rms_sq = sum(abs(t_m.^2))/length(t_m);

 if isnan(p_rms_sq) == 1 || isnan(q_rms_sq) == 1 || isnan(t_rms_sq) == 1
 error('Mean squares of misfit vector = NaN');
 end

 %Check rms of misfit vectors against raw strain errors, and accept the
 %regularisation factors if they're similar. If not, make a new guess
 %based on the ratio of errors.
 if 0.95*p_std_sq < p_rms_sq && p_rms_sq < 1.05*p_std_sq
 alpha_p_ok = 1;
 else
 alpha_p = alpha_p*(p_std_sq/p_rms_sq);
 end
 if 0.95*q_std_sq < q_rms_sq && q_rms_sq < 1.05*q_std_sq
 alpha_q_ok = 1;
 else
 alpha_q = alpha_q*(q_std_sq/q_rms_sq);
 end
 if 0.95*t_std_sq < t_rms_sq && t_rms_sq < 1.05*t_std_sq
 alpha_t_ok = 1;
 else
 alpha_t = alpha_t*(t_std_sq/t_rms_sq);
 end

 %Check all factors okay
 if alpha_p_ok == 1 && alpha_q_ok == 1 && alpha_t_ok == 1
 all_alphas_ok = 1;
 end

 %Increment iteration counter
 k = k+1;
 end
%Compute Cartesian stresses:
 s_x = P - Q; %Note s_x is in the transverse weld dir if gauge 1 was oriented transverse
 s_y = P + Q; %Note s_y is in the longitudinal weld dir if gauge 1 was oriented transverse
 tau_xy = T;

 %Apply stress transformation
%  [s_x,s_y,tau_xy] = stress_trans(s_x,s_y,tau_xy,theta);

 s_x_av = mean(s_x); %Mean cartesian stresses
 s_y_av = mean(s_y);
 tau_xy_av = mean(tau_xy);
%Compute Principal stresses
 princ_s_1 = P+((Q.^2+T.^2).^0.5);
 princ_s_2 = P-((Q.^2+T.^2).^0.5);

 princ_s_1_av = mean(princ_s_1); %Mean principal stresses
 princ_s_2_av = mean(princ_s_2);

%Display Stress Components
 disp(' ');
 disp(' ');
 disp('*** NUMERICAL RESULTS ***');
 disp('Mean stresses over 1mm depth into surface:');
 disp(['Longitudinal: ',num2str(s_y_av*10^-6),' MPa']);
 disp(['Transverse: ',num2str(s_x_av*10^-6),' MPa']);
 disp(['Shear: ',num2str(tau_xy_av*10^-6),' MPa']);
 disp(' ');
 disp(['Principal (1): ',num2str(princ_s_1_av*10^-6),' MPa']);
 disp(['Principal (2): ',num2str(princ_s_2_av*10^-6),' MPa']);

 disp('*************************');

%Plot Cartesian stresses (in MPa) over the depth (in mm)
 figure
 plot(-stress_depths,s_y*10^-6,'or');
 hold on
 plot(-stress_depths,s_x*10^-6,'ob');
 plot(-stress_depths,tau_xy*10^-6,'og');
 line([0,0],[0,-total_depth],'color','k');
 legend('Longitudinal Stress','Transverse Stress','Shear Stress','Location','SouthOutside') %Assumes that gauge 1 was oriented transverse, and gauge 3 longitudinal.
 title('Depth-varying stresses (Cartesian directions)')

 xlabel('Depth (mm)');
 ylabel('Stress (MPa)');

%Plot Principal stresses (in MPa) over the depth (in mm)
 figure
 plot(stress_depths,princ_s_1*10^-6,'or');
 hold on
 plot(stress_depths,princ_s_2*10^-6,'ob');
 line([0,0],[0,-total_depth],'color','k');
 legend('First Principal Stress (s_1)','Second Principal Stress (s_2)','Location','SouthOutside') %Doesn't sort into max and min principals
 title('Depth-varying principal stresses')

 xlabel('Depth (mm)');
 ylabel('Stress (MPa)');
 