//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.787375, -4.715146, 0.000000, 1.000000};
//+
Point(2) = {39.509042, -4.715146, 0.000000, 1.000000};
//+
Point(3) = {39.509042, 4.931337, 0.000000, 1.000000};
//+
Point(4) = {0.787375, 4.931337, 0.000000, 1.000000};
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
Point(6) = {9.573308, 3.053947, 0.000000, 0.096030};
//+
Point(5) = {8.613005, 3.053947, 0.000000, 0.096030};
//+
Point(7) = {8.132853, 3.885594, 0.000000, 0.096030};
//+
Point(8) = {8.132853, 2.222300, 0.000000, 0.096030};
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