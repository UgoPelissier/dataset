//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.400615, -3.231061, 0.000000, 1.000000};
//+
Point(2) = {39.988854, -3.231061, 0.000000, 1.000000};
//+
Point(3) = {39.988854, 4.495606, 0.000000, 1.000000};
//+
Point(4) = {0.400615, 4.495606, 0.000000, 1.000000};
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
Point(6) = {19.344105, 2.059219, 0.000000, 0.114779};
//+
Point(5) = {18.196313, 2.059219, 0.000000, 0.114779};
//+
Point(7) = {17.622416, 3.053237, 0.000000, 0.114779};
//+
Point(8) = {17.622416, 1.065202, 0.000000, 0.114779};
//+
Point(10) = {8.957939, 1.513517, 0.000000, 0.139646};
//+
Point(9) = {7.561479, 1.513517, 0.000000, 0.139646};
//+
Point(11) = {6.863248, 2.722888, 0.000000, 0.139646};
//+
Point(12) = {6.863248, 0.304147, 0.000000, 0.139646};
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