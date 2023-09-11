//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.832143, -3.887715, 0.000000, 36.333890, 8.772180, 1.000000};
//+
MeshSize {1} = 0.841622;
//+
MeshSize {2} = 0.841622;
//+
MeshSize {3} = 0.846201;
//+
MeshSize {4} = 0.846201;
//+
MeshSize {5} = 3.742395;
//+
MeshSize {6} = 3.742395;
//+
MeshSize {7} = 3.742395;
//+
MeshSize {8} = 3.742395;
//+
Cylinder(2) = {9.058511, 0.449706, 0.000000, 0.000000, 0.000000, 1.000000, 0.883586, 2*Pi};
//+
MeshSize {9} = 0.088359;
//+
MeshSize {10} = 0.088359;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
