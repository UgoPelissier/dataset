//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.729732, -3.686940, 0.000000, 1.000000};
//+
Point(2) = {40.460889, -3.686940, 0.000000, 1.000000};
//+
Point(3) = {40.460889, 4.759396, 0.000000, 1.000000};
//+
Point(4) = {0.729732, 4.759396, 0.000000, 1.000000};
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
Point(6) = {23.051733, 2.782262, 0.000000, 0.111852};
//+
Point(5) = {21.933213, 2.782262, 0.000000, 0.111852};
//+
Point(7) = {21.373953, 3.750929, 0.000000, 0.111852};
//+
Point(8) = {21.373953, 1.813596, 0.000000, 0.111852};
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
