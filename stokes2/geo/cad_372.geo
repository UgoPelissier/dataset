//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.161246, -2.970565, 0.000000, 1.000000};
//+
Point(2) = {30.385707, -2.970565, 0.000000, 1.000000};
//+
Point(3) = {30.385707, 4.637295, 0.000000, 1.000000};
//+
Point(4) = {0.161246, 4.637295, 0.000000, 1.000000};
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
Point(6) = {18.633878, 0.483896, 0.000000, 0.051862};
//+
Point(5) = {18.115258, 0.483896, 0.000000, 0.051862};
//+
Point(7) = {17.855948, 0.933034, 0.000000, 0.051862};
//+
Point(8) = {17.855948, 0.034758, 0.000000, 0.051862};
//+
Point(10) = {22.531383, 1.230534, 0.000000, 0.078345};
//+
Point(9) = {21.747929, 1.230534, 0.000000, 0.078345};
//+
Point(11) = {21.356202, 1.909026, 0.000000, 0.078345};
//+
Point(12) = {21.356202, 0.552042, 0.000000, 0.078345};
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
