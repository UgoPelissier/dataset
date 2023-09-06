//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.301842, -4.519317, 0.000000, 1.000000};
//+
Point(2) = {32.520709, -4.519317, 0.000000, 1.000000};
//+
Point(3) = {32.520709, 5.119984, 0.000000, 1.000000};
//+
Point(4) = {0.301842, 5.119984, 0.000000, 1.000000};
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
Point(6) = {9.947349, 0.517275, 0.000000, 0.105632};
//+
Point(5) = {8.891026, 0.517275, 0.000000, 0.105632};
//+
Point(7) = {8.362865, 1.432078, 0.000000, 0.105632};
//+
Point(8) = {8.362865, -0.397527, 0.000000, 0.105632};
//+
Point(10) = {30.369909, -3.328308, 0.000000, 0.053774};
//+
Point(9) = {29.832172, -3.328308, 0.000000, 0.053774};
//+
Point(11) = {29.563304, -2.862615, 0.000000, 0.053774};
//+
Point(12) = {29.563304, -3.794001, 0.000000, 0.053774};
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