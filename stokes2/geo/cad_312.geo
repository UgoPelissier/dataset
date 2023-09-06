//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.226242, -4.421732, 0.000000, 1.000000};
//+
Point(2) = {30.842636, -4.421732, 0.000000, 1.000000};
//+
Point(3) = {30.842636, 4.958856, 0.000000, 1.000000};
//+
Point(4) = {0.226242, 4.958856, 0.000000, 1.000000};
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
Point(6) = {14.183898, 0.333146, 0.000000, 0.136689};
//+
Point(5) = {12.817004, 0.333146, 0.000000, 0.136689};
//+
Point(7) = {12.133557, 1.516911, 0.000000, 0.136689};
//+
Point(8) = {12.133557, -0.850619, 0.000000, 0.136689};
//+
Point(10) = {21.363957, 1.128233, 0.000000, 0.062028};
//+
Point(9) = {20.743675, 1.128233, 0.000000, 0.062028};
//+
Point(11) = {20.433534, 1.665412, 0.000000, 0.062028};
//+
Point(12) = {20.433534, 0.591053, 0.000000, 0.062028};
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
