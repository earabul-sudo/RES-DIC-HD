; Capture Reference Image before Starting!!!!

; Starting Sequence, make sure device is at the desired home position using jog mode

g28.1 ; Set Absolute Pos
m8 ; start blowerg

g1 x-75 z-81.9 f500 ;; move to predetermined drilling position, allow for clearance for z axis EDIT THIS LINE ACCORDING TO YOUR MEASUREMENT. 
g91 ; switch to incremental distance mode
g30.1; Redefine secondary work home position, zero depth with the clearance

g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.05 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 x0 z0 ; Switch to work home position x,z

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2  f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.1 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2  f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.15 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.2 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.25 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.30 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.35 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.40 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.45 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.50 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.55 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold


g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.6 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.65 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.7 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.75 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.8 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.85 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.9 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-0.95 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

;g04 p5 ; pause for 5 seconds to evaluate + capturing image
m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.05 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.1 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.15 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.2 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.25 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.3 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.35 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.4 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.45 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.5 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.55 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.6 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.65 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.7 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.75 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.8 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.85 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.9 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-1.95 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

m0 ; wait on user input for unlocking. Uncomment above line for time limitied hold

g30 ; Move to work home position, with z offset added, as quick as possible
g1 z-2 f50; Bring the drill closer, without the clearance, EDIT THIS LINE

g1 z-2 f10 ; Drill Incrementally Slowly
g04 p5 ; pause for 5 seconds to cut

g30 z0; Move to work home position z, ALWAYS LIFT Z AXIS FIRST
g28 z0 x0 ; home device to absolute position

g28.1
g30.1
g90
m9 ; turn off blower
