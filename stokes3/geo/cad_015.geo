//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.762511, -3.873563, 0.000000, 37.023754, 8.825884, 1.000000};
//+
MeshSize {1} = 0.517980;
//+
MeshSize {2} = 0.517980;
//+
MeshSize {3} = 0.196949;
//+
MeshSize {4} = 0.196949;
//+
MeshSize {5} = 3.804308;
//+
MeshSize {6} = 3.804308;
//+
MeshSize {7} = 3.804308;
//+
MeshSize {8} = 3.804308;
//+
Cylinder(2) = {2.615283, 2.300045, 0.000000, 0.000000, 0.000000, 1.000000, 1.265834, 2*Pi};
//+
MeshSize {9} = 0.126583;
//+
MeshSize {10} = 0.126583;
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
