//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.154221, -3.962892, 0.000000, 36.184788, 9.349138, 1.000000};
//+
MeshSize {1} = 1.059228;
//+
MeshSize {2} = 1.059228;
//+
MeshSize {3} = 1.594893;
//+
MeshSize {4} = 1.594893;
//+
MeshSize {5} = 1.059228;
//+
MeshSize {6} = 1.059228;
//+
MeshSize {7} = 3.663844;
//+
MeshSize {8} = 3.663844;
//+
Cylinder(2) = {11.202134, -1.309651, 0.000000, 0.000000, 0.000000, 1.000000, 0.769766, 2*Pi};
//+
MeshSize {9} = 0.076977;
//+
MeshSize {10} = 0.076977;
//+
Cylinder(3) = {20.158702, -0.859708, 0.000000, 0.000000, 0.000000, 1.000000, 0.526262, 2*Pi};
//+
MeshSize {11} = 0.052626;
//+
MeshSize {12} = 0.052626;
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
Save "../geo_unrolled/cad_145.geo_unrolled";
