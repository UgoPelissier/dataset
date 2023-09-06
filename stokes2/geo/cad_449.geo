//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.685493, -3.392459, 0.000000, 1.000000};
//+
Point(2) = {39.565788, -3.392459, 0.000000, 1.000000};
//+
Point(3) = {39.565788, 4.991530, 0.000000, 1.000000};
//+
Point(4) = {0.685493, 4.991530, 0.000000, 1.000000};
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
Point(6) = {38.230024, -1.840621, 0.000000, 0.053117};
//+
Point(5) = {37.698851, -1.840621, 0.000000, 0.053117};
//+
Point(7) = {37.433264, -1.380611, 0.000000, 0.053117};
//+
Point(8) = {37.433264, -2.300630, 0.000000, 0.053117};
//+
Point(10) = {23.295126, -0.925875, 0.000000, 0.109519};
//+
Point(9) = {22.199934, -0.925875, 0.000000, 0.109519};
//+
Point(11) = {21.652339, 0.022589, 0.000000, 0.109519};
//+
Point(12) = {21.652339, -1.874339, 0.000000, 0.109519};
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
