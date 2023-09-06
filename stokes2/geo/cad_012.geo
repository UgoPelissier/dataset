//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.422160, -4.931624, 0.000000, 1.000000};
//+
Point(2) = {34.238353, -4.931624, 0.000000, 1.000000};
//+
Point(3) = {34.238353, 5.058679, 0.000000, 1.000000};
//+
Point(4) = {0.422160, 5.058679, 0.000000, 1.000000};
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
Point(6) = {19.299254, -2.329487, 0.000000, 0.114096};
//+
Point(5) = {18.158292, -2.329487, 0.000000, 0.114096};
//+
Point(7) = {17.587811, -1.341385, 0.000000, 0.114096};
//+
Point(8) = {17.587811, -3.317589, 0.000000, 0.114096};
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
