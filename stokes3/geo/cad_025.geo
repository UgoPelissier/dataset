//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.664238, -4.479819, 0.000000, 32.474919, 9.620038, 1.000000};
//+
MeshSize {1} = 3.348641;
//+
MeshSize {2} = 3.348641;
//+
MeshSize {3} = 0.882391;
//+
MeshSize {4} = 0.882391;
//+
MeshSize {5} = 1.255214;
//+
MeshSize {6} = 1.255214;
//+
MeshSize {7} = 0.882391;
//+
MeshSize {8} = 0.882391;
//+
Cylinder(2) = {23.852049, -1.920907, 0.000000, 0.000000, 0.000000, 1.000000, 0.809285, 2*Pi};
//+
MeshSize {9} = 0.080928;
//+
MeshSize {10} = 0.080928;
//+
Cylinder(3) = {13.533796, -0.938912, 0.000000, 0.000000, 0.000000, 1.000000, 0.795655, 2*Pi};
//+
MeshSize {11} = 0.079566;
//+
MeshSize {12} = 0.079566;
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
Save "../geo_unrolled/cad_025.geo_unrolled";
