//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.435574, -4.083615, 0.000000, 1.000000};
//+
Point(2) = {33.119530, -4.083615, 0.000000, 1.000000};
//+
Point(3) = {33.119530, 5.545668, 0.000000, 1.000000};
//+
Point(4) = {0.435574, 5.545668, 0.000000, 1.000000};
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
Point(6) = {9.080753, -0.339832, 0.000000, 0.111033};
//+
Point(5) = {7.970422, -0.339832, 0.000000, 0.111033};
//+
Point(7) = {7.415256, 0.621743, 0.000000, 0.111033};
//+
Point(8) = {7.415256, -1.301408, 0.000000, 0.111033};
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
