//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.443774, -4.350133, 0.000000, 34.382858, 8.750136, 0.000000};
//+
l = [3.510036337846028, 1.5729618086454025, 1.727191562753496, 1.727191562753496, 1.6065948108896124, 1.6065948108896124, 1.7259963784527035, 1.473659743023297];
//+
MeshSize {1} = 3.510036;
//+
MeshSize {2} = 1.572962;
//+
MeshSize {3} = 1.727192;
//+
MeshSize {4} = 1.727192;
//+
Disk(2) = {18.236198, 2.410953, 0.000000, 0.643295, 0.643295};
//+
c0 = 0.0643295047949861;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.998255, 1.869706, 0.000000, 1.022345, 1.022345};
//+
c1 = 0.10223448732185064;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
