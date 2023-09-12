//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.422005, -4.550246, 0.000000, 30.213101, 9.732193, 1.000000};
//+
MeshSize {1} = 1.208601;
//+
MeshSize {2} = 1.208601;
//+
MeshSize {3} = 0.238763;
//+
MeshSize {4} = 0.238763;
//+
MeshSize {5} = 1.208601;
//+
MeshSize {6} = 1.208601;
//+
MeshSize {7} = 3.101916;
//+
MeshSize {8} = 3.101916;
//+
Cylinder(2) = {12.779050, -0.259480, 0.000000, 0.000000, 0.000000, 1.000000, 0.994789, 2*Pi};
//+
MeshSize {9} = 0.099479;
//+
MeshSize {10} = 0.099479;
//+
Cylinder(3) = {28.765276, -1.491321, 0.000000, 0.000000, 0.000000, 1.000000, 1.197514, 2*Pi};
//+
MeshSize {11} = 0.119751;
//+
MeshSize {12} = 0.119751;
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
Save "../geo_unrolled/cad_461.geo_unrolled";
