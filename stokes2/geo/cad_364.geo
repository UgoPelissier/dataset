//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.098202, -3.437974, 0.000000, 1.000000};
//+
Point(2) = {34.970107, -3.437974, 0.000000, 1.000000};
//+
Point(3) = {34.970107, 4.889153, 0.000000, 1.000000};
//+
Point(4) = {0.098202, 4.889153, 0.000000, 1.000000};
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
Point(6) = {5.071151, 1.294643, 0.000000, 0.060005};
//+
Point(5) = {4.471106, 1.294643, 0.000000, 0.060005};
//+
Point(7) = {4.171084, 1.814298, 0.000000, 0.060005};
//+
Point(8) = {4.171084, 0.774989, 0.000000, 0.060005};
//+
Point(10) = {22.421481, 3.331838, 0.000000, 0.081779};
//+
Point(9) = {21.603695, 3.331838, 0.000000, 0.081779};
//+
Point(11) = {21.194802, 4.040062, 0.000000, 0.081779};
//+
Point(12) = {21.194802, 2.623615, 0.000000, 0.081779};
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