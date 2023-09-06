//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.676622, -4.393278, 0.000000, 1.000000};
//+
Point(2) = {40.478228, -4.393278, 0.000000, 1.000000};
//+
Point(3) = {40.478228, 5.152666, 0.000000, 1.000000};
//+
Point(4) = {0.676622, 5.152666, 0.000000, 1.000000};
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
Point(6) = {38.785418, 2.907846, 0.000000, 0.079045};
//+
Point(5) = {37.994965, 2.907846, 0.000000, 0.079045};
//+
Point(7) = {37.599739, 3.592398, 0.000000, 0.079045};
//+
Point(8) = {37.599739, 2.223294, 0.000000, 0.079045};
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