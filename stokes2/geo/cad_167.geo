//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.356974, -3.384064, 0.000000, 1.000000};
//+
Point(2) = {39.014957, -3.384064, 0.000000, 1.000000};
//+
Point(3) = {39.014957, 4.945747, 0.000000, 1.000000};
//+
Point(4) = {0.356974, 4.945747, 0.000000, 1.000000};
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
Point(6) = {6.201439, -1.099375, 0.000000, 0.138949};
//+
Point(5) = {4.811953, -1.099375, 0.000000, 0.138949};
//+
Point(7) = {4.117209, 0.103955, 0.000000, 0.138949};
//+
Point(8) = {4.117209, -2.302706, 0.000000, 0.138949};
//+
Ellipse(5) = {6, 5, 7, 7};
//+
Ellipse(6) = {7, 5, 8, 8};
//+
Ellipse(7) = {8, 5, 6, 6};
//+
Curve Loop(2) = {5, 6, 7};
//+
Plane Surface(2) = {1, 2};
//+
Physical Curve("INFLOW", 100) = {1};
//+
Physical Curve("OUTFLOW", 101) = {3};
//+
Physical Curve("WALL_BOUNDARY", 102) = {2, 4};
//+
Physical Curve("OBSTACLE", 103) = {5, 6, 7};
