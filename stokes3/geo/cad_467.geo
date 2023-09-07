//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179797, -3.803142, 0.000000, 35.340703, 8.625114, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {20.528665, 2.991223, 0.000000, 0.000000, 0.000000, 1.000000, 0.736750, 2*Pi};
//+
c0 = 0.07367499672780185;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {17.821658, -0.769034, 0.000000, 0.000000, 0.000000, 1.000000, 1.046166, 2*Pi};
//+
c1 = 0.10461662603642968;
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
