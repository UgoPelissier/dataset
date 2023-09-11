//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.813566, -3.593050, 0.000000, 33.734693, 8.286293, 1.000000};
//+
MeshSize {1} = 3.479580;
//+
MeshSize {2} = 3.479580;
//+
MeshSize {3} = 1.537427;
//+
MeshSize {4} = 1.537427;
//+
MeshSize {5} = 1.537427;
//+
MeshSize {6} = 1.601609;
//+
MeshSize {7} = 1.601609;
//+
MeshSize {8} = 1.601609;
//+
Cylinder(2) = {18.745664, -0.718856, 0.000000, 0.000000, 0.000000, 1.000000, 0.687583, 2*Pi};
//+
MeshSize {9} = 0.068758;
//+
MeshSize {10} = 0.068758;
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
