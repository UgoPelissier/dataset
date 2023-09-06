//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.547649, -3.431828, 0.000000, 1.000000};
//+
Point(2) = {36.274666, -3.431828, 0.000000, 1.000000};
//+
Point(3) = {36.274666, 4.442803, 0.000000, 1.000000};
//+
Point(4) = {0.547649, 4.442803, 0.000000, 1.000000};
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
Point(6) = {12.338904, 0.160182, 0.000000, 0.061624};
//+
Point(5) = {11.722664, 0.160182, 0.000000, 0.061624};
//+
Point(7) = {11.414544, 0.693862, 0.000000, 0.061624};
//+
Point(8) = {11.414544, -0.373497, 0.000000, 0.061624};
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
