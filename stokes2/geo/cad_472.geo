//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.111549, -3.764306, 0.000000, 1.000000};
//+
Point(2) = {36.029251, -3.764306, 0.000000, 1.000000};
//+
Point(3) = {36.029251, 4.113533, 0.000000, 1.000000};
//+
Point(4) = {0.111549, 4.113533, 0.000000, 1.000000};
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
Point(6) = {16.804008, 2.425119, 0.000000, 0.076125};
//+
Point(5) = {16.042755, 2.425119, 0.000000, 0.076125};
//+
Point(7) = {15.662129, 3.084383, 0.000000, 0.076125};
//+
Point(8) = {15.662129, 1.765855, 0.000000, 0.076125};
//+
Point(10) = {26.469595, -0.118810, 0.000000, 0.129937};
//+
Point(9) = {25.170223, -0.118810, 0.000000, 0.129937};
//+
Point(11) = {24.520537, 1.006480, 0.000000, 0.129937};
//+
Point(12) = {24.520537, -1.244099, 0.000000, 0.129937};
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