//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.646706, -2.943354, 0.000000, 1.000000};
//+
Point(2) = {39.118040, -2.943354, 0.000000, 1.000000};
//+
Point(3) = {39.118040, 4.787806, 0.000000, 1.000000};
//+
Point(4) = {0.646706, 4.787806, 0.000000, 1.000000};
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
Point(6) = {27.290678, 0.795707, 0.000000, 0.137362};
//+
Point(5) = {25.917057, 0.795707, 0.000000, 0.137362};
//+
Point(7) = {25.230247, 1.985297, 0.000000, 0.137362};
//+
Point(8) = {25.230247, -0.393883, 0.000000, 0.137362};
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