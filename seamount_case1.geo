//Mesh and geometry parameters 
L = 1200; 
H = 500; 
ho = -3*H/5; 
lo = -L/5; 
h1 = 8.0; 
h2 = 8.0; 
// Domain 
Point(1) = {lo, ho, 0, h2}; 
Point(2) = {lo, H+ho, 0, h2}; 
Point(3) = {L+lo, H+ho, 0, h2}; 
Point(4) = {L+lo, ho, 0, h2}; 
// Semi-arbitrary seamount 
L1 = L/4; 
Point(5) = {L1, ho, 0, h1}; // observer
Point(6) = {L1+9*L/60, ho+3*H/8, 0, h1}; 
Point(7) = {L1+18*L/60, ho+3*H/8-4*H/16, 0, h1}; 
Point(8) = {L1+21*L/60, ho, 0, h1}; 
//observation point
Point(9) = {L1, ho+3*H/8, 0, h1}; 
//Curves 
Line(1) = {1,2}; 
Line(2) = {2,3}; 
Line(3) = {3,4}; 
Line(4) = {4,8}; 
Line(5) = {8,7}; 
Line(6) = {7,6}; 
Line(7) = {6,5}; 
Line(8) = {5,1}; 
Curve Loop(1) = {1,2,3,4,5,6,7,8}; 
//Surfaces 
Plane Surface(107) = {1}; 
Point{9} In Surface {107};
//Physical_names 
Physical Curve(101) = {1,3}; 
Physical Curve(102) = {2}; 
Physical Curve(103) = {4,8}; 
Physical Curve(104) = {5,6,7}; 
Physical Surface(150) = {107}; 
Recombine Surface{107}; 
