//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.633336, -4.402024, 0.000000, 1.000000};
//+
Point(2) = {37.219966, -4.402024, 0.000000, 1.000000};
//+
Point(3) = {37.219966, 4.886067, 0.000000, 1.000000};
//+
Point(4) = {0.633336, 4.886067, 0.000000, 1.000000};
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
Point(6) = {18.540195, -0.921331, 0.000000, 0.100661};
//+
Point(5) = {17.533582, -0.921331, 0.000000, 0.100661};
//+
Point(7) = {17.030276, -0.049579, 0.000000, 0.100661};
//+
Point(8) = {17.030276, -1.793083, 0.000000, 0.100661};
//+
Point(10) = {34.717693, 1.780609, 0.000000, 0.104365};
//+
Point(9) = {33.674048, 1.780609, 0.000000, 0.104365};
//+
Point(11) = {33.152225, 2.684433, 0.000000, 0.104365};
//+
Point(12) = {33.152225, 0.876786, 0.000000, 0.104365};
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