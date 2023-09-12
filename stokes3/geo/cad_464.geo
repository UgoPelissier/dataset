//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.415984, -3.018024, 0.000000, 32.620535, 8.023582, 1.000000};
//+
MeshSize {1} = 1.374643;
//+
MeshSize {2} = 1.374643;
//+
MeshSize {3} = 1.539129;
//+
MeshSize {4} = 1.539129;
//+
MeshSize {5} = 1.374643;
//+
MeshSize {6} = 1.374643;
//+
MeshSize {7} = 3.327921;
//+
MeshSize {8} = 3.327921;
//+
Cylinder(2) = {14.226201, 0.943276, 0.000000, 0.000000, 0.000000, 1.000000, 0.620688, 2*Pi};
//+
MeshSize {9} = 0.062069;
//+
MeshSize {10} = 0.062069;
//+
Cylinder(3) = {17.026607, 1.359884, 0.000000, 0.000000, 0.000000, 1.000000, 1.206405, 2*Pi};
//+
MeshSize {11} = 0.120640;
//+
MeshSize {12} = 0.120640;
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
Save "../geo_unrolled/cad_464.geo_unrolled";
