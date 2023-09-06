//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.840110, -4.713051, 0.000000, 1.000000};
//+
Point(2) = {38.169838, -4.713051, 0.000000, 1.000000};
//+
Point(3) = {38.169838, 4.981663, 0.000000, 1.000000};
//+
Point(4) = {0.840110, 4.981663, 0.000000, 1.000000};
//+
Line(1) = {4, 1};
//+
Line(2) = {1, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 4};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Point(6) = {18.083476, -1.369460, 0.000000, 0.080547};
//+
Point(5) = {17.278004, -1.369460, 0.000000, 0.080547};
//+
Point(7) = {16.875268, -0.671901, 0.000000, 0.080547};
//+
Point(8) = {16.875268, -2.067019, 0.000000, 0.080547};
//+
Point(10) = {32.063905, 3.477627, 0.000000, 0.064000};
//+
Point(9) = {31.423904, 3.477627, 0.000000, 0.064000};
//+
Point(11) = {31.103903, 4.031884, 0.000000, 0.064000};
//+
Point(12) = {31.103903, 2.923369, 0.000000, 0.064000};
//+
Ellipse(5) = {6, 5, 7, 7};
//+
Ellipse(6) = {7, 5, 8, 8};
//+
Ellipse(7) = {8, 5, 6, 6};
//+
Curve Loop(2) = {5, 6, 7};
//+
Ellipse(8) = {10, 9, 11, 11};
//+
Ellipse(9) = {11, 9, 12, 12};
//+
Ellipse(10) = {12, 9, 10, 10};
//+
Curve Loop(3) = {8, 9, 10};
//+
Plane Surface(3) = {1, 2, 3};
//+
Physical Curve("INFLOW", 100) = {1};
//+
Physical Curve("OUTFLOW", 101) = {3};
//+
Physical Curve("WALL_BOUNDARY", 102) = {2, 4};
//+
Physical Curve("OBSTACLE", 103) = {5, 6, 7, 8, 9, 10};
