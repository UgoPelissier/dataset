//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.547949, -3.202001, 0.000000, 1.000000};
//+
Point(2) = {34.386114, -3.202001, 0.000000, 1.000000};
//+
Point(3) = {34.386114, 5.149784, 0.000000, 1.000000};
//+
Point(4) = {0.547949, 5.149784, 0.000000, 1.000000};
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
Point(6) = {28.825728, 0.759764, 0.000000, 0.128431};
//+
Point(5) = {27.541414, 0.759764, 0.000000, 0.128431};
//+
Point(7) = {26.899257, 1.872012, 0.000000, 0.128431};
//+
Point(8) = {26.899257, -0.352485, 0.000000, 0.128431};
//+
Point(10) = {15.776097, 2.399692, 0.000000, 0.104453};
//+
Point(9) = {14.731570, 2.399692, 0.000000, 0.104453};
//+
Point(11) = {14.209307, 3.304278, 0.000000, 0.104453};
//+
Point(12) = {14.209307, 1.495105, 0.000000, 0.104453};
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