//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.482926, -4.144792, 0.000000, 1.000000};
//+
Point(2) = {34.864585, -4.144792, 0.000000, 1.000000};
//+
Point(3) = {34.864585, 5.097117, 0.000000, 1.000000};
//+
Point(4) = {0.482926, 5.097117, 0.000000, 1.000000};
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
Point(6) = {12.274823, -1.845941, 0.000000, 0.131019};
//+
Point(5) = {10.964637, -1.845941, 0.000000, 0.131019};
//+
Point(7) = {10.309544, -0.711287, 0.000000, 0.131019};
//+
Point(8) = {10.309544, -2.980595, 0.000000, 0.131019};
//+
Point(10) = {5.104792, 3.227090, 0.000000, 0.114797};
//+
Point(9) = {3.956822, 3.227090, 0.000000, 0.114797};
//+
Point(11) = {3.382837, 4.221261, 0.000000, 0.114797};
//+
Point(12) = {3.382837, 2.232918, 0.000000, 0.114797};
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