//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.349821, -3.272251, 0.000000, 1.000000};
//+
Point(2) = {37.334620, -3.272251, 0.000000, 1.000000};
//+
Point(3) = {37.334620, 5.207644, 0.000000, 1.000000};
//+
Point(4) = {0.349821, 5.207644, 0.000000, 1.000000};
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
Point(6) = {22.817062, 3.714213, 0.000000, 0.080958};
//+
Point(5) = {22.007481, 3.714213, 0.000000, 0.080958};
//+
Point(7) = {21.602690, 4.415331, 0.000000, 0.080958};
//+
Point(8) = {21.602690, 3.013094, 0.000000, 0.080958};
//+
Ellipse(5) = {6, 5, 7, 7};
//+
Ellipse(6) = {7, 5, 8, 8};
//+
Ellipse(7) = {8, 5, 6, 6};
//+
Curve Loop(2) = {5, 6, 7};
//+
Plane Surface(2) = {1, 2};
//+
Physical Curve("INFLOW", 100) = {1};
//+
Physical Curve("OUTFLOW", 101) = {3};
//+
Physical Curve("WALL_BOUNDARY", 102) = {2, 4};
//+
Physical Curve("OBSTACLE", 103) = {5, 6, 7};