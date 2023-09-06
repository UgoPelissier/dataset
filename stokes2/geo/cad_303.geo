//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.917896, -4.444708, 0.000000, 1.000000};
//+
Point(2) = {32.222792, -4.444708, 0.000000, 1.000000};
//+
Point(3) = {32.222792, 4.847636, 0.000000, 1.000000};
//+
Point(4) = {0.917896, 4.847636, 0.000000, 1.000000};
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
Point(6) = {29.585925, 3.199206, 0.000000, 0.082359};
//+
Point(5) = {28.762336, 3.199206, 0.000000, 0.082359};
//+
Point(7) = {28.350542, 3.912455, 0.000000, 0.082359};
//+
Point(8) = {28.350542, 2.485957, 0.000000, 0.082359};
//+
Point(10) = {19.243846, -3.016744, 0.000000, 0.080682};
//+
Point(9) = {18.437023, -3.016744, 0.000000, 0.080682};
//+
Point(11) = {18.033611, -2.318015, 0.000000, 0.080682};
//+
Point(12) = {18.033611, -3.715474, 0.000000, 0.080682};
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