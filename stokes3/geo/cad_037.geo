//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.929881, -3.898859, 0.000000, 38.832179, 9.526929, 1.000000};
//+
MeshSize {1} = 4.004637;
//+
MeshSize {2} = 4.004637;
//+
MeshSize {3} = 4.004637;
//+
MeshSize {4} = 4.004637;
//+
MeshSize {5} = 0.796622;
//+
MeshSize {6} = 0.796622;
//+
MeshSize {7} = 0.526072;
//+
MeshSize {8} = 0.526072;
//+
Cylinder(2) = {34.356966, 2.960487, 0.000000, 0.000000, 0.000000, 1.000000, 0.766806, 2*Pi};
//+
MeshSize {9} = 0.076681;
//+
MeshSize {10} = 0.076681;
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
