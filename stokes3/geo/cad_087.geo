//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.376720, -4.551625, 0.000000, 37.936731, 9.427745, 1.000000};
//+
MeshSize {1} = 1.583629;
//+
MeshSize {2} = 1.583629;
//+
MeshSize {3} = 3.860235;
//+
MeshSize {4} = 3.860235;
//+
MeshSize {5} = 1.558384;
//+
MeshSize {6} = 1.558384;
//+
MeshSize {7} = 3.860235;
//+
MeshSize {8} = 3.860235;
//+
Cylinder(2) = {15.741411, 1.662705, 0.000000, 0.000000, 0.000000, 1.000000, 0.737530, 2*Pi};
//+
MeshSize {9} = 0.073753;
//+
MeshSize {10} = 0.073753;
//+
Cylinder(3) = {17.018785, -2.027645, 0.000000, 0.000000, 0.000000, 1.000000, 1.248537, 2*Pi};
//+
MeshSize {11} = 0.124854;
//+
MeshSize {12} = 0.124854;
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
Save "../geo_unrolled/cad_087.geo_unrolled";
