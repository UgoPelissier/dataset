//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.822417, -3.101985, 0.000000, 30.261044, 8.084555, 1.000000};
//+
MeshSize {1} = 3.134520;
//+
MeshSize {2} = 3.134520;
//+
MeshSize {3} = 0.762915;
//+
MeshSize {4} = 0.762915;
//+
MeshSize {5} = 0.856119;
//+
MeshSize {6} = 0.856119;
//+
MeshSize {7} = 0.762915;
//+
MeshSize {8} = 0.762915;
//+
Cylinder(2) = {25.608276, 3.309717, 0.000000, 0.000000, 0.000000, 1.000000, 0.802190, 2*Pi};
//+
MeshSize {9} = 0.080219;
//+
MeshSize {10} = 0.080219;
//+
Cylinder(3) = {9.460705, -0.059627, 0.000000, 0.000000, 0.000000, 1.000000, 0.597192, 2*Pi};
//+
MeshSize {11} = 0.059719;
//+
MeshSize {12} = 0.059719;
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
Save "../geo_unrolled/cad_062.geo_unrolled";
