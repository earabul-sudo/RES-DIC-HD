R_1 = 1.5;
Stress_Depth = linspace(0.05,1,20);
Hole_Depth = linspace(0.05,1,20);

if R_1 == 1.5
%     Calibration_Coefficients_a_unweighted = [0.20796 -0.33280 0.67501 -0.13304 0.40777...
%         -0.66203 -0.02079 0.21071 -0.35728 0.31845 -0.00952 0.03450 -0.08593 ...
%         0.09945 -0.05971];
    
%     Calibration_Coefficients_a_annular = [ 0.06903 -0.12521 0.42340 -0.30930 0.40868...
%         -0.60345 -0.02870 0.66429 -0.84169 0.52238 -0.05445 0.19195 -0.51068 0.49946 -0.20142];

    Calibration_Coefficients_a_square = [ 0.08286 -0.14911 0.42412 -0.18525 0.32138 -0.52926...
        -0.01014 0.31020 -0.44786 0.35530 -0.02206 0.06943 -0.17909 0.18903 -0.09797];

    
   C_a = Calibration_Coefficients_a_square;
   
%     Calibration_Coefficients_b_unweighted = [0.19905 -0.18969 0.57390 -0.14449 ...
%         0.26720 -0.46861 0.01059 0.10824 -0.18821 ...
%         0.18496 -0.00646 0.01355 -0.03532 0.04233 -0.02825]

% Calibration_Coefficients_b_annular = [ 0.12728 -0.16104 0.30193 -0.02483 0.11501 ...
%     -0.24813 0.00064 0.03872 -0.07834 0.09513 -0.00205 0.00455 -0.01281 0.01733 -0.01401];

    Calibration_Coefficients_b_square = [ 0.09846 -0.12005 0.25395 -0.03412 0.10339 -0.20972...
        0.00297 0.03547 -0.07071 0.08118 -0.00207 0.00412 -0.01163 0.01563 -0.01207];

    C_b = Calibration_Coefficients_b_square;
    
    
end


for i = 1:length(Stress_Depth)
    for j = 1 : length(Hole_Depth)
a_cum(i,j) = C_a(1)*(Stress_Depth(i)) + C_a(2)*(Stress_Depth(i))^2 + C_a(3)*(Stress_Depth(i))*(Hole_Depth(j))+...
    C_a(4)*(Stress_Depth(i))^3 + C_a(5)*(Stress_Depth(i))^2*(Hole_Depth(j)) + C_a(6)*(Stress_Depth(i))*(Hole_Depth(j))^2 + ...
    C_a(7)*(Stress_Depth(i))^4 + C_a(8)*(Stress_Depth(i))^3*(Hole_Depth(j)) + C_a(9)*(Stress_Depth(i))^2*(Hole_Depth(j))^2 + ...
    C_a(10)*(Stress_Depth(i))*(Hole_Depth(j))^3 + C_a(11)*(Stress_Depth(i))^5 + C_a(12)*(Stress_Depth(i))^4*(Hole_Depth(j))+ ...
    C_a(13)*(Stress_Depth(i))^3*(Hole_Depth(j))^2 + C_a(14)*(Stress_Depth(i))^2*(Hole_Depth(j))^3 +  C_a(15)*(Stress_Depth(i))*(Hole_Depth(j))^4;
    end
end

a_cum_tril = tril(a_cum);

for i = 1:length(Stress_Depth)
    for j = 1 : length(Hole_Depth)
b_cum(i,j) = C_b(1)*(Stress_Depth(i)) + C_b(2)*(Stress_Depth(i))^2 + C_b(3)*(Stress_Depth(i))*(Hole_Depth(j))+...
    C_b(4)*(Stress_Depth(i))^3 + C_b(5)*(Stress_Depth(i))^2*(Hole_Depth(j)) + C_b(6)*(Stress_Depth(i))*(Hole_Depth(j))^2 + ...
    C_b(7)*(Stress_Depth(i))^4 + C_b(8)*(Stress_Depth(i))^3*(Hole_Depth(j)) + C_b(9)*(Stress_Depth(i))^2*(Hole_Depth(j))^2 + ...
    C_b(10)*(Stress_Depth(i))*(Hole_Depth(j))^3 + C_b(11)*(Stress_Depth(i))^5 + C_b(12)*(Stress_Depth(i))^4*(Hole_Depth(j))+ ...
    C_b(13)*(Stress_Depth(i))^3*(Hole_Depth(j))^2 + C_b(14)*(Stress_Depth(i))^2*(Hole_Depth(j))^3 +  C_b(15)*(Stress_Depth(i))*(Hole_Depth(j))^4;
    end
end

b_cum_tril = tril(b_cum);
