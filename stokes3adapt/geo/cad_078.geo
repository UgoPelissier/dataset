//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.146444, -4.502997, 0.000000, 35.877546, 9.400538, 1.000000};
//+
MeshSize {1} = 1.682496;
//+
MeshSize {2} = 1.682496;
//+
MeshSize {3} = 1.382328;
//+
MeshSize {4} = 1.382328;
//+
MeshSize {5} = 0.870325;
//+
MeshSize {6} = 0.870325;
//+
MeshSize {7} = 0.826340;
//+
MeshSize {8} = 0.826340;
//+
Cylinder(2) = {17.800067, 2.391928, 0.000000, 0.000000, 0.000000, 1.000000, 1.259877, 2*Pi};
//+
MeshSize {9} = 0.125988;
//+
MeshSize {10} = 0.125988;
//+
Cylinder(3) = {22.885980, 1.170572, 0.000000, 0.000000, 0.000000, 1.000000, 1.364247, 2*Pi};
//+
MeshSize {11} = 0.136425;
//+
MeshSize {12} = 0.136425;
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
//+
Save "../geo_unrolled/cad_078.geo_unrolled";
