//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.867189, -3.127698, 0.000000, 34.285508, 7.897431, 1.000000};
//+
MeshSize {1} = 0.992458;
//+
MeshSize {2} = 0.992458;
//+
MeshSize {3} = 0.752227;
//+
MeshSize {4} = 0.752227;
//+
MeshSize {5} = 0.992458;
//+
MeshSize {6} = 0.992458;
//+
MeshSize {7} = 3.537378;
//+
MeshSize {8} = 3.537378;
//+
Cylinder(2) = {10.936816, 0.053665, 0.000000, 0.000000, 0.000000, 1.000000, 0.635650, 2*Pi};
//+
MeshSize {9} = 0.063565;
//+
MeshSize {10} = 0.063565;
//+
Cylinder(3) = {29.925327, 2.995753, 0.000000, 0.000000, 0.000000, 1.000000, 0.528948, 2*Pi};
//+
MeshSize {11} = 0.052895;
//+
MeshSize {12} = 0.052895;
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
