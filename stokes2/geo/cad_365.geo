//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.450646, -3.863870, 0.000000, 1.000000};
//+
Point(2) = {33.507401, -3.863870, 0.000000, 1.000000};
//+
Point(3) = {33.507401, 5.096555, 0.000000, 1.000000};
//+
Point(4) = {0.450646, 5.096555, 0.000000, 1.000000};
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
Point(6) = {19.511647, -1.214196, 0.000000, 0.081633};
//+
Point(5) = {18.695314, -1.214196, 0.000000, 0.081633};
//+
Point(7) = {18.287148, -0.507231, 0.000000, 0.081633};
//+
Point(8) = {18.287148, -1.921162, 0.000000, 0.081633};
//+
Point(10) = {8.259045, 2.148855, 0.000000, 0.093612};
//+
Point(9) = {7.322921, 2.148855, 0.000000, 0.093612};
//+
Point(11) = {6.854859, 2.959562, 0.000000, 0.093612};
//+
Point(12) = {6.854859, 1.338148, 0.000000, 0.093612};
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