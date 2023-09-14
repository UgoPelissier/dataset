//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.807497, -4.098404, 0.000000, 30.161811, 8.577628, 1.000000};
//+
MeshSize {1} = 1.165911;
//+
MeshSize {2} = 1.165911;
//+
MeshSize {3} = 1.197033;
//+
MeshSize {4} = 1.197033;
//+
MeshSize {5} = 0.296112;
//+
MeshSize {6} = 0.296112;
//+
MeshSize {7} = 0.414489;
//+
MeshSize {8} = 0.414489;
//+
Cylinder(2) = {13.117937, -0.282850, 0.000000, 0.000000, 0.000000, 1.000000, 1.229076, 2*Pi};
//+
MeshSize {9} = 0.122908;
//+
MeshSize {10} = 0.122908;
//+
Cylinder(3) = {28.592897, -0.487803, 0.000000, 0.000000, 0.000000, 1.000000, 1.361349, 2*Pi};
//+
MeshSize {11} = 0.136135;
//+
MeshSize {12} = 0.136135;
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
Save "../geo_unrolled/cad_012.geo_unrolled";
