//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.664094, -4.475013, 0.000000, 31.810560, 9.386849, 1.000000};
//+
MeshSize {1} = 3.281206;
//+
MeshSize {2} = 3.281206;
//+
MeshSize {3} = 0.639632;
//+
MeshSize {4} = 0.639632;
//+
MeshSize {5} = 3.281206;
//+
MeshSize {6} = 3.281206;
//+
MeshSize {7} = 0.639632;
//+
MeshSize {8} = 0.639632;
//+
Cylinder(2) = {26.261996, -0.437124, 0.000000, 0.000000, 0.000000, 1.000000, 1.013248, 2*Pi};
//+
MeshSize {9} = 0.101325;
//+
MeshSize {10} = 0.101325;
//+
Cylinder(3) = {26.204297, 2.095896, 0.000000, 0.000000, 0.000000, 1.000000, 0.895949, 2*Pi};
//+
MeshSize {11} = 0.089595;
//+
MeshSize {12} = 0.089595;
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
Save "../geo_unrolled/cad_125.geo_unrolled";
