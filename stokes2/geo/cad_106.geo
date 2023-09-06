//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.746559, -4.614901, 0.000000, 1.000000};
//+
Point(2) = {31.898256, -4.614901, 0.000000, 1.000000};
//+
Point(3) = {31.898256, 5.292332, 0.000000, 1.000000};
//+
Point(4) = {0.746559, 5.292332, 0.000000, 1.000000};
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
Point(6) = {26.354953, -1.329798, 0.000000, 0.129068};
//+
Point(5) = {25.064271, -1.329798, 0.000000, 0.129068};
//+
Point(7) = {24.418930, -0.212035, 0.000000, 0.129068};
//+
Point(8) = {24.418930, -2.447561, 0.000000, 0.129068};
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