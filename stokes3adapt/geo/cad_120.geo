//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.413301, -3.996100, 0.000000, 30.592148, 9.426915, 1.000000};
//+
MeshSize {1} = 0.345788;
//+
MeshSize {2} = 0.345788;
//+
MeshSize {3} = 0.348500;
//+
MeshSize {4} = 0.348500;
//+
MeshSize {5} = 4.612711;
//+
MeshSize {6} = 4.612711;
//+
MeshSize {7} = 4.419647;
//+
MeshSize {8} = 4.419647;
//+
Cylinder(2) = {9.957949, 1.375367, 0.000000, 0.000000, 0.000000, 1.000000, 1.407937, 2*Pi};
//+
MeshSize {9} = 0.140794;
//+
MeshSize {10} = 0.140794;
//+
Cylinder(3) = {2.773770, 0.698849, 0.000000, 0.000000, 0.000000, 1.000000, 1.035152, 2*Pi};
//+
MeshSize {11} = 0.103515;
//+
MeshSize {12} = 0.103515;
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
Save "../geo_unrolled/cad_120.geo_unrolled";
