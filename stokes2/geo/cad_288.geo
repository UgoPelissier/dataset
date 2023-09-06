//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.327301, -3.447748, 0.000000, 1.000000};
//+
Point(2) = {30.406993, -3.447748, 0.000000, 1.000000};
//+
Point(3) = {30.406993, 4.553930, 0.000000, 1.000000};
//+
Point(4) = {0.327301, 4.553930, 0.000000, 1.000000};
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
Point(6) = {18.081850, -1.569055, 0.000000, 0.112272};
//+
Point(5) = {16.959133, -1.569055, 0.000000, 0.112272};
//+
Point(7) = {16.397774, -0.596753, 0.000000, 0.112272};
//+
Point(8) = {16.397774, -2.541356, 0.000000, 0.112272};
//+
Point(10) = {14.948133, 0.733681, 0.000000, 0.099336};
//+
Point(9) = {13.954772, 0.733681, 0.000000, 0.099336};
//+
Point(11) = {13.458092, 1.593957, 0.000000, 0.099336};
//+
Point(12) = {13.458092, -0.126594, 0.000000, 0.099336};
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