//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.677139, -3.890537, 0.000000, 1.000000};
//+
Point(2) = {40.516144, -3.890537, 0.000000, 1.000000};
//+
Point(3) = {40.516144, 4.219245, 0.000000, 1.000000};
//+
Point(4) = {0.677139, 4.219245, 0.000000, 1.000000};
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
Point(6) = {39.089244, -2.174593, 0.000000, 0.090505};
//+
Point(5) = {38.184197, -2.174593, 0.000000, 0.090505};
//+
Point(7) = {37.731673, -1.390799, 0.000000, 0.090505};
//+
Point(8) = {37.731673, -2.958387, 0.000000, 0.090505};
//+
Point(10) = {8.280510, 1.139253, 0.000000, 0.093213};
//+
Point(9) = {7.348375, 1.139253, 0.000000, 0.093213};
//+
Point(11) = {6.882308, 1.946505, 0.000000, 0.093213};
//+
Point(12) = {6.882308, 0.332001, 0.000000, 0.093213};
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