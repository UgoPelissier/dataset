//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.144941, -3.306276, 0.000000, 1.000000};
//+
Point(2) = {34.694850, -3.306276, 0.000000, 1.000000};
//+
Point(3) = {34.694850, 5.162050, 0.000000, 1.000000};
//+
Point(4) = {0.144941, 5.162050, 0.000000, 1.000000};
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
Point(6) = {5.844788, 1.861518, 0.000000, 0.113202};
//+
Point(5) = {4.712767, 1.861518, 0.000000, 0.113202};
//+
Point(7) = {4.146756, 2.841877, 0.000000, 0.113202};
//+
Point(8) = {4.146756, 0.881159, 0.000000, 0.113202};
//+
Point(10) = {30.095678, -0.350767, 0.000000, 0.067120};
//+
Point(9) = {29.424477, -0.350767, 0.000000, 0.067120};
//+
Point(11) = {29.088876, 0.230510, 0.000000, 0.067120};
//+
Point(12) = {29.088876, -0.932045, 0.000000, 0.067120};
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
