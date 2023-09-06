//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.949612, -3.741117, 0.000000, 1.000000};
//+
Point(2) = {31.153412, -3.741117, 0.000000, 1.000000};
//+
Point(3) = {31.153412, 4.139839, 0.000000, 1.000000};
//+
Point(4) = {0.949612, 4.139839, 0.000000, 1.000000};
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
Point(6) = {4.876323, 1.335498, 0.000000, 0.106397};
//+
Point(5) = {3.812353, 1.335498, 0.000000, 0.106397};
//+
Point(7) = {3.280368, 2.256922, 0.000000, 0.106397};
//+
Point(8) = {3.280368, 0.414073, 0.000000, 0.106397};
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