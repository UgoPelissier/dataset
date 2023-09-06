//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.330563, -3.232440, 0.000000, 1.000000};
//+
Point(2) = {31.878620, -3.232440, 0.000000, 1.000000};
//+
Point(3) = {31.878620, 4.651819, 0.000000, 1.000000};
//+
Point(4) = {0.330563, 4.651819, 0.000000, 1.000000};
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
Point(6) = {20.411809, 1.276384, 0.000000, 0.099055};
//+
Point(5) = {19.421258, 1.276384, 0.000000, 0.099055};
//+
Point(7) = {18.925982, 2.134227, 0.000000, 0.099055};
//+
Point(8) = {18.925982, 0.418542, 0.000000, 0.099055};
//+
Point(10) = {3.066766, 0.040528, 0.000000, 0.091593};
//+
Point(9) = {2.150835, 0.040528, 0.000000, 0.091593};
//+
Point(11) = {1.692870, 0.833748, 0.000000, 0.091593};
//+
Point(12) = {1.692870, -0.752692, 0.000000, 0.091593};
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
