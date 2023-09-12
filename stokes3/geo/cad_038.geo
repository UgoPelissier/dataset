//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.851713, -4.021308, 0.000000, 30.014916, 9.704078, 1.000000};
//+
MeshSize {1} = 0.651178;
//+
MeshSize {2} = 0.651178;
//+
MeshSize {3} = 3.124566;
//+
MeshSize {4} = 3.124566;
//+
MeshSize {5} = 0.651178;
//+
MeshSize {6} = 0.651178;
//+
MeshSize {7} = 3.124566;
//+
MeshSize {8} = 3.124566;
//+
Cylinder(2) = {7.527242, -0.342472, 0.000000, 0.000000, 0.000000, 1.000000, 1.110332, 2*Pi};
//+
MeshSize {9} = 0.111033;
//+
MeshSize {10} = 0.111033;
//+
Cylinder(3) = {10.505113, 3.690655, 0.000000, 0.000000, 0.000000, 1.000000, 1.201184, 2*Pi};
//+
MeshSize {11} = 0.120118;
//+
MeshSize {12} = 0.120118;
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
Save "../geo_unrolled/cad_038.geo_unrolled";
