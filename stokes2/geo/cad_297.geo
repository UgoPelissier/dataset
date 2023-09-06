//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.042696, -4.006360, 0.000000, 1.000000};
//+
Point(2) = {31.722588, -4.006360, 0.000000, 1.000000};
//+
Point(3) = {31.722588, 4.928350, 0.000000, 1.000000};
//+
Point(4) = {0.042696, 4.928350, 0.000000, 1.000000};
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
Point(6) = {26.560387, -0.938156, 0.000000, 0.052948};
//+
Point(5) = {26.030905, -0.938156, 0.000000, 0.052948};
//+
Point(7) = {25.766164, -0.479611, 0.000000, 0.052948};
//+
Point(8) = {25.766164, -1.396701, 0.000000, 0.052948};
//+
Point(10) = {7.312351, -1.966936, 0.000000, 0.138342};
//+
Point(9) = {5.928927, -1.966936, 0.000000, 0.138342};
//+
Point(11) = {5.237215, -0.768856, 0.000000, 0.138342};
//+
Point(12) = {5.237215, -3.165016, 0.000000, 0.138342};
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
