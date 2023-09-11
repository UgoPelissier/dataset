//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.823339, -4.479173, 0.000000, 38.900458, 9.105846, 1.000000};
//+
MeshSize {1} = 1.727160;
//+
MeshSize {2} = 1.727160;
//+
MeshSize {3} = 1.646643;
//+
MeshSize {4} = 1.646643;
//+
MeshSize {5} = 3.998386;
//+
MeshSize {6} = 3.998386;
//+
MeshSize {7} = 3.998386;
//+
MeshSize {8} = 3.998386;
//+
Cylinder(2) = {17.874696, 1.640045, 0.000000, 0.000000, 0.000000, 1.000000, 0.844515, 2*Pi};
//+
MeshSize {9} = 0.084451;
//+
MeshSize {10} = 0.084451;
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
//+
Save "../geo_unrolled/cad_179.geo_unrolled";
