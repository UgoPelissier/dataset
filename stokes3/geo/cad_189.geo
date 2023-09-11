//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.308540, -4.358629, 0.000000, 39.143788, 8.763611, 1.000000};
//+
MeshSize {1} = 3.969492;
//+
MeshSize {2} = 3.969492;
//+
MeshSize {3} = 3.969492;
//+
MeshSize {4} = 3.969492;
//+
MeshSize {5} = 1.320667;
//+
MeshSize {6} = 1.320667;
//+
MeshSize {7} = 1.337849;
//+
MeshSize {8} = 1.337849;
//+
Cylinder(2) = {25.812082, -0.257765, 0.000000, 0.000000, 0.000000, 1.000000, 1.036691, 2*Pi};
//+
MeshSize {9} = 0.103669;
//+
MeshSize {10} = 0.103669;
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
