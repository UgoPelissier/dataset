//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.229048, -4.052576, 0.000000, 1.000000};
//+
Point(2) = {33.383579, -4.052576, 0.000000, 1.000000};
//+
Point(3) = {33.383579, 4.116776, 0.000000, 1.000000};
//+
Point(4) = {0.229048, 4.116776, 0.000000, 1.000000};
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
Point(6) = {11.328629, 1.269833, 0.000000, 0.089563};
//+
Point(5) = {10.432997, 1.269833, 0.000000, 0.089563};
//+
Point(7) = {9.985181, 2.045473, 0.000000, 0.089563};
//+
Point(8) = {9.985181, 0.494193, 0.000000, 0.089563};
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
