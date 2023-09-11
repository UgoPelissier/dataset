//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.721400, -3.952758, 0.000000, 30.983721, 9.072563, 1.000000};
//+
MeshSize {1} = 3.202800;
//+
MeshSize {2} = 3.202800;
//+
MeshSize {3} = 3.202800;
//+
MeshSize {4} = 3.202800;
//+
MeshSize {5} = 1.331752;
//+
MeshSize {6} = 1.331752;
//+
MeshSize {7} = 1.157735;
//+
MeshSize {8} = 1.157735;
//+
Cylinder(2) = {19.648798, 3.095260, 0.000000, 0.000000, 0.000000, 1.000000, 0.647776, 2*Pi};
//+
MeshSize {9} = 0.064778;
//+
MeshSize {10} = 0.064778;
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
