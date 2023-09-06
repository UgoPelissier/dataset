//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.661713, -4.346792, 0.000000, 1.000000};
//+
Point(2) = {34.119208, -4.346792, 0.000000, 1.000000};
//+
Point(3) = {34.119208, 4.843946, 0.000000, 1.000000};
//+
Point(4) = {0.661713, 4.843946, 0.000000, 1.000000};
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
Point(6) = {13.935352, 3.115964, 0.000000, 0.105834};
//+
Point(5) = {12.877007, 3.115964, 0.000000, 0.105834};
//+
Point(7) = {12.347835, 4.032517, 0.000000, 0.105834};
//+
Point(8) = {12.347835, 2.199411, 0.000000, 0.105834};
//+
Point(10) = {8.354479, 1.317192, 0.000000, 0.090328};
//+
Point(9) = {7.451202, 1.317192, 0.000000, 0.090328};
//+
Point(11) = {6.999564, 2.099453, 0.000000, 0.090328};
//+
Point(12) = {6.999564, 0.534931, 0.000000, 0.090328};
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