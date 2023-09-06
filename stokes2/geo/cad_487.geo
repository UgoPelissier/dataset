//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.575967, -4.604048, 0.000000, 1.000000};
//+
Point(2) = {38.940238, -4.604048, 0.000000, 1.000000};
//+
Point(3) = {38.940238, 4.878706, 0.000000, 1.000000};
//+
Point(4) = {0.575967, 4.878706, 0.000000, 1.000000};
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
Point(6) = {30.154549, 0.882705, 0.000000, 0.083550};
//+
Point(5) = {29.319046, 0.882705, 0.000000, 0.083550};
//+
Point(7) = {28.901294, 1.606272, 0.000000, 0.083550};
//+
Point(8) = {28.901294, 0.159137, 0.000000, 0.083550};
//+
Point(10) = {27.651541, 0.506452, 0.000000, 0.093866};
//+
Point(9) = {26.712880, 0.506452, 0.000000, 0.093866};
//+
Point(11) = {26.243550, 1.319357, 0.000000, 0.093866};
//+
Point(12) = {26.243550, -0.306452, 0.000000, 0.093866};
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