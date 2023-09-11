//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.914548, -3.599433, 0.000000, 31.734254, 8.116569, 1.000000};
//+
MeshSize {1} = 1.640911;
//+
MeshSize {2} = 1.640911;
//+
MeshSize {3} = 3.290006;
//+
MeshSize {4} = 3.290006;
//+
MeshSize {5} = 1.333369;
//+
MeshSize {6} = 1.333369;
//+
MeshSize {7} = 1.461879;
//+
MeshSize {8} = 1.461879;
//+
Cylinder(2) = {18.327997, -1.925724, 0.000000, 0.000000, 0.000000, 1.000000, 1.084586, 2*Pi};
//+
MeshSize {9} = 0.108459;
//+
MeshSize {10} = 0.108459;
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
Save "../geo_unrolled/cad_010.geo_unrolled";
