//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.347168, -3.762657, 0.000000, 1.000000};
//+
Point(2) = {38.394246, -3.762657, 0.000000, 1.000000};
//+
Point(3) = {38.394246, 4.841994, 0.000000, 1.000000};
//+
Point(4) = {0.347168, 4.841994, 0.000000, 1.000000};
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
Point(6) = {14.720559, -2.066777, 0.000000, 0.080357};
//+
Point(5) = {13.916986, -2.066777, 0.000000, 0.080357};
//+
Point(7) = {13.515200, -1.370862, 0.000000, 0.080357};
//+
Point(8) = {13.515200, -2.762691, 0.000000, 0.080357};
//+
Point(10) = {13.592133, -0.265041, 0.000000, 0.050832};
//+
Point(9) = {13.083816, -0.265041, 0.000000, 0.050832};
//+
Point(11) = {12.829658, 0.175175, 0.000000, 0.050832};
//+
Point(12) = {12.829658, -0.705256, 0.000000, 0.050832};
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