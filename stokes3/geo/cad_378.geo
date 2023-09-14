//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.591042, -3.553629, 0.000000, 30.472270, 8.742859, 1.000000};
//+
MeshSize {1} = 1.263828;
//+
MeshSize {2} = 1.263828;
//+
MeshSize {3} = 1.140439;
//+
MeshSize {4} = 1.140439;
//+
MeshSize {5} = 0.871575;
//+
MeshSize {6} = 0.871575;
//+
MeshSize {7} = 1.056735;
//+
MeshSize {8} = 1.056735;
//+
Cylinder(2) = {13.239540, 2.723584, 0.000000, 0.000000, 0.000000, 1.000000, 1.482193, 2*Pi};
//+
MeshSize {9} = 0.148219;
//+
MeshSize {10} = 0.148219;
//+
Cylinder(3) = {21.073284, -1.536689, 0.000000, 0.000000, 0.000000, 1.000000, 1.475853, 2*Pi};
//+
MeshSize {11} = 0.147585;
//+
MeshSize {12} = 0.147585;
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
Save "../geo_unrolled/cad_378.geo_unrolled";
