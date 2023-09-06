//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.321802, -3.672816, 0.000000, 1.000000};
//+
Point(2) = {37.524681, -3.672816, 0.000000, 1.000000};
//+
Point(3) = {37.524681, 4.505329, 0.000000, 1.000000};
//+
Point(4) = {0.321802, 4.505329, 0.000000, 1.000000};
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
Point(6) = {3.899664, -1.040193, 0.000000, 0.100204};
//+
Point(5) = {2.897623, -1.040193, 0.000000, 0.100204};
//+
Point(7) = {2.396603, -0.172400, 0.000000, 0.100204};
//+
Point(8) = {2.396603, -1.907986, 0.000000, 0.100204};
//+
Point(10) = {18.647689, -1.780326, 0.000000, 0.134485};
//+
Point(9) = {17.302843, -1.780326, 0.000000, 0.134485};
//+
Point(11) = {16.630419, -0.615655, 0.000000, 0.134485};
//+
Point(12) = {16.630419, -2.944997, 0.000000, 0.134485};
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
