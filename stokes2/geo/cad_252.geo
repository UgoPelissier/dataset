//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.084700, -4.071580, 0.000000, 1.000000};
//+
Point(2) = {39.136775, -4.071580, 0.000000, 1.000000};
//+
Point(3) = {39.136775, 5.873852, 0.000000, 1.000000};
//+
Point(4) = {0.084700, 5.873852, 0.000000, 1.000000};
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
Point(6) = {6.415116, -1.977836, 0.000000, 0.099312};
//+
Point(5) = {5.421992, -1.977836, 0.000000, 0.099312};
//+
Point(7) = {4.925431, -1.117765, 0.000000, 0.099312};
//+
Point(8) = {4.925431, -2.837906, 0.000000, 0.099312};
//+
Point(10) = {3.391816, -0.649673, 0.000000, 0.092110};
//+
Point(9) = {2.470714, -0.649673, 0.000000, 0.092110};
//+
Point(11) = {2.010162, 0.148025, 0.000000, 0.092110};
//+
Point(12) = {2.010162, -1.447371, 0.000000, 0.092110};
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
