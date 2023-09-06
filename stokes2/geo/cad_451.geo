//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.443774, -4.350133, 0.000000, 1.000000};
//+
Point(2) = {35.270406, -4.350133, 0.000000, 1.000000};
//+
Point(3) = {35.270406, 4.400003, 0.000000, 1.000000};
//+
Point(4) = {0.443774, 4.400003, 0.000000, 1.000000};
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
Point(6) = {18.879493, 2.410953, 0.000000, 0.064330};
//+
Point(5) = {18.236198, 2.410953, 0.000000, 0.064330};
//+
Point(7) = {17.914551, 2.968063, 0.000000, 0.064330};
//+
Point(8) = {17.914551, 1.853843, 0.000000, 0.064330};
//+
Point(10) = {17.020599, 1.869706, 0.000000, 0.102234};
//+
Point(9) = {15.998255, 1.869706, 0.000000, 0.102234};
//+
Point(11) = {15.487082, 2.755083, 0.000000, 0.102234};
//+
Point(12) = {15.487082, 0.984330, 0.000000, 0.102234};
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