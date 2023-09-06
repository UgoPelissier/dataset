//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.279630, -4.289977, 0.000000, 1.000000};
//+
Point(2) = {31.591021, -4.289977, 0.000000, 1.000000};
//+
Point(3) = {31.591021, 4.649755, 0.000000, 1.000000};
//+
Point(4) = {0.279630, 4.649755, 0.000000, 1.000000};
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
Point(6) = {8.264272, -0.605946, 0.000000, 0.088088};
//+
Point(5) = {7.383388, -0.605946, 0.000000, 0.088088};
//+
Point(7) = {6.942946, 0.156921, 0.000000, 0.088088};
//+
Point(8) = {6.942946, -1.368814, 0.000000, 0.088088};
//+
Point(10) = {23.361781, 2.550800, 0.000000, 0.080003};
//+
Point(9) = {22.561747, 2.550800, 0.000000, 0.080003};
//+
Point(11) = {22.161730, 3.243650, 0.000000, 0.080003};
//+
Point(12) = {22.161730, 1.857950, 0.000000, 0.080003};
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
