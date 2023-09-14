//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.670260, -4.334589, 0.000000, 31.980484, 9.916799, 1.000000};
//+
MeshSize {1} = 3.302509;
//+
MeshSize {2} = 3.302509;
//+
MeshSize {3} = 3.302509;
//+
MeshSize {4} = 3.302509;
//+
MeshSize {5} = 0.369269;
//+
MeshSize {6} = 0.369269;
//+
MeshSize {7} = 0.805854;
//+
MeshSize {8} = 0.805854;
//+
Cylinder(2) = {28.450057, -3.102057, 0.000000, 0.000000, 0.000000, 1.000000, 0.685087, 2*Pi};
//+
MeshSize {9} = 0.068509;
//+
MeshSize {10} = 0.068509;
//+
Cylinder(3) = {24.391063, 1.031871, 0.000000, 0.000000, 0.000000, 1.000000, 1.371616, 2*Pi};
//+
MeshSize {11} = 0.137162;
//+
MeshSize {12} = 0.137162;
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
Save "../geo_unrolled/cad_456.geo_unrolled";
