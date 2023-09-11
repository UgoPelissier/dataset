//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179797, -3.803142, 0.000000, 35.340703, 8.625114, 1.000000};
//+
MeshSize {1} = 3.578134;
//+
MeshSize {2} = 3.578134;
//+
MeshSize {3} = 1.685470;
//+
MeshSize {4} = 1.685470;
//+
MeshSize {5} = 1.685470;
//+
MeshSize {6} = 1.572285;
//+
MeshSize {7} = 1.572285;
//+
MeshSize {8} = 1.572285;
//+
Cylinder(2) = {20.528665, 2.991223, 0.000000, 0.000000, 0.000000, 1.000000, 0.736750, 2*Pi};
//+
MeshSize {9} = 0.073675;
//+
MeshSize {10} = 0.073675;
//+
Cylinder(3) = {17.821658, -0.769034, 0.000000, 0.000000, 0.000000, 1.000000, 1.046166, 2*Pi};
//+
MeshSize {11} = 0.104617;
//+
MeshSize {12} = 0.104617;
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
