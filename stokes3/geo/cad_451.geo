//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.443774, -4.350133, 0.000000, 34.382858, 8.750136, 1.000000};
//+
l = [3.510036337846028, 3.510036337846028, 1.5729618086454025, 1.5729618086454025, 1.5729618086454025, 1.727191562753496, 1.727191562753496, 1.727191562753496, 1.727191562753496, 1.727191562753496, 1.727191562753496, 1.6065948108896124, 1.6065948108896124, 1.6065948108896124, 1.6065948108896124, 1.6065948108896124, 1.6065948108896124, 1.7259963784527035, 1.7259963784527035, 1.7259963784527035, 1.473659743023297, 1.473659743023297, 1.473659743023297];
//+
MeshSize {1} = 3.510036;
//+
MeshSize {2} = 3.510036;
//+
MeshSize {3} = 1.572962;
//+
MeshSize {4} = 1.572962;
//+
MeshSize {5} = 1.572962;
//+
MeshSize {6} = 1.727192;
//+
MeshSize {7} = 1.727192;
//+
MeshSize {8} = 1.727192;
//+
Cylinder(2) = {18.236198, 2.410953, 0.000000, 0.000000, 0.000000, 1.000000, 0.643295, 2*Pi};
//+
c0 = 0.0643295047949861;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {15.998255, 1.869706, 0.000000, 0.000000, 0.000000, 1.000000, 1.022345, 2*Pi};
//+
c1 = 0.10223448732185064;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
