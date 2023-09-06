//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.489097, -3.769117, 0.000000, 1.000000};
//+
Point(2) = {31.400466, -3.769117, 0.000000, 1.000000};
//+
Point(3) = {31.400466, 5.091198, 0.000000, 1.000000};
//+
Point(4) = {0.489097, 5.091198, 0.000000, 1.000000};
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
Point(6) = {6.584333, 3.415587, 0.000000, 0.086940};
//+
Point(5) = {5.714932, 3.415587, 0.000000, 0.086940};
//+
Point(7) = {5.280231, 4.168511, 0.000000, 0.086940};
//+
Point(8) = {5.280231, 2.662663, 0.000000, 0.086940};
//+
Point(10) = {14.744582, -2.097272, 0.000000, 0.096506};
//+
Point(9) = {13.779524, -2.097272, 0.000000, 0.096506};
//+
Point(11) = {13.296995, -1.261508, 0.000000, 0.096506};
//+
Point(12) = {13.296995, -2.933037, 0.000000, 0.096506};
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
