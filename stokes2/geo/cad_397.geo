//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.969542, -3.799357, 0.000000, 1.000000};
//+
Point(2) = {32.739909, -3.799357, 0.000000, 1.000000};
//+
Point(3) = {32.739909, 5.194603, 0.000000, 1.000000};
//+
Point(4) = {0.969542, 5.194603, 0.000000, 1.000000};
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
Point(6) = {21.112595, 1.221840, 0.000000, 0.106398};
//+
Point(5) = {20.048611, 1.221840, 0.000000, 0.106398};
//+
Point(7) = {19.516619, 2.143277, 0.000000, 0.106398};
//+
Point(8) = {19.516619, 0.300402, 0.000000, 0.106398};
//+
Point(10) = {17.440171, 1.254912, 0.000000, 0.080966};
//+
Point(9) = {16.630510, 1.254912, 0.000000, 0.080966};
//+
Point(11) = {16.225679, 1.956099, 0.000000, 0.080966};
//+
Point(12) = {16.225679, 0.553724, 0.000000, 0.080966};
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
