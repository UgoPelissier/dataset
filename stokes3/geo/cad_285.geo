//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.712323, -3.742346, 0.000000, 30.058377, 8.637994, 1.000000};
//+
MeshSize {1} = 0.995559;
//+
MeshSize {2} = 0.995559;
//+
MeshSize {3} = 1.355481;
//+
MeshSize {4} = 1.355481;
//+
MeshSize {5} = 0.995559;
//+
MeshSize {6} = 0.995559;
//+
MeshSize {7} = 3.107233;
//+
MeshSize {8} = 3.107233;
//+
Cylinder(2) = {11.081264, -0.003369, 0.000000, 0.000000, 0.000000, 1.000000, 1.066886, 2*Pi};
//+
MeshSize {9} = 0.106689;
//+
MeshSize {10} = 0.106689;
//+
Cylinder(3) = {17.659684, 1.924358, 0.000000, 0.000000, 0.000000, 1.000000, 0.728404, 2*Pi};
//+
MeshSize {11} = 0.072840;
//+
MeshSize {12} = 0.072840;
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
