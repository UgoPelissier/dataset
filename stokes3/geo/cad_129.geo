//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.883757, -3.860475, 0.000000, 31.177060, 7.752242, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {26.154773, 1.794780, 0.000000, 0.000000, 0.000000, 1.000000, 0.818904, 2*Pi};
//+
MeshSize {9} = 0.081890;
//+
MeshSize {10} = 0.081890;
//+
Cylinder(3) = {19.169729, 1.337509, 0.000000, 0.000000, 0.000000, 1.000000, 0.820665, 2*Pi};
//+
MeshSize {11} = 0.082067;
//+
MeshSize {12} = 0.082067;
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
Save "../geo_unrolled/cad_129.geo_unrolled";
