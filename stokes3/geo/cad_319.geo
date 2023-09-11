//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.870481, -3.367512, 0.000000, 32.627118, 7.908784, 1.000000};
//+
MeshSize {1} = 3.373020;
//+
MeshSize {2} = 3.373020;
//+
MeshSize {3} = 0.836050;
//+
MeshSize {4} = 0.836050;
//+
MeshSize {5} = 0.836050;
//+
MeshSize {6} = 0.521187;
//+
MeshSize {7} = 0.521187;
//+
MeshSize {8} = 0.521187;
//+
Cylinder(2) = {29.963332, 1.968980, 0.000000, 0.000000, 0.000000, 1.000000, 1.188851, 2*Pi};
//+
MeshSize {9} = 0.118885;
//+
MeshSize {10} = 0.118885;
//+
Cylinder(3) = {9.549140, -0.897128, 0.000000, 0.000000, 0.000000, 1.000000, 0.662907, 2*Pi};
//+
MeshSize {11} = 0.066291;
//+
MeshSize {12} = 0.066291;
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
