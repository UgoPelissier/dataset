//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.416522, -3.165566, 0.000000, 1.000000};
//+
Point(2) = {39.114387, -3.165566, 0.000000, 1.000000};
//+
Point(3) = {39.114387, 4.901228, 0.000000, 1.000000};
//+
Point(4) = {0.416522, 4.901228, 0.000000, 1.000000};
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
Point(6) = {25.772595, 0.825246, 0.000000, 0.051143};
//+
Point(5) = {25.261161, 0.825246, 0.000000, 0.051143};
//+
Point(7) = {25.005444, 1.268161, 0.000000, 0.051143};
//+
Point(8) = {25.005444, 0.382331, 0.000000, 0.051143};
//+
Point(10) = {30.889224, -0.947953, 0.000000, 0.080478};
//+
Point(9) = {30.084441, -0.947953, 0.000000, 0.080478};
//+
Point(11) = {29.682049, -0.250991, 0.000000, 0.080478};
//+
Point(12) = {29.682049, -1.644916, 0.000000, 0.080478};
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
