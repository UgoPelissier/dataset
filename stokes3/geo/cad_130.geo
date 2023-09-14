//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.301764, -3.883043, 0.000000, 36.300360, 8.052607, 1.000000};
//+
MeshSize {1} = 1.433777;
//+
MeshSize {2} = 1.433777;
//+
MeshSize {3} = 1.442844;
//+
MeshSize {4} = 1.442844;
//+
MeshSize {5} = 0.439472;
//+
MeshSize {6} = 0.439472;
//+
MeshSize {7} = 0.222907;
//+
MeshSize {8} = 0.222907;
//+
Cylinder(2) = {15.636449, -0.035264, 0.000000, 0.000000, 0.000000, 1.000000, 1.472290, 2*Pi};
//+
MeshSize {9} = 0.147229;
//+
MeshSize {10} = 0.147229;
//+
Cylinder(3) = {34.464063, 1.379754, 0.000000, 0.000000, 0.000000, 1.000000, 1.285805, 2*Pi};
//+
MeshSize {11} = 0.128580;
//+
MeshSize {12} = 0.128580;
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
Save "../geo_unrolled/cad_130.geo_unrolled";
