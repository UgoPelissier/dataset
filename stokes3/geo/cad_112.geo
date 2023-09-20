//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.509123, -3.421218, 0.000000, 29.943911, 7.842591, 1.000000};
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
Cylinder(2) = {10.142100, -0.205914, 0.000000, 0.000000, 0.000000, 1.000000, 0.956989, 2*Pi};
//+
MeshSize {9} = 0.095699;
//+
MeshSize {10} = 0.095699;
//+
Cylinder(3) = {18.462472, 0.121605, 0.000000, 0.000000, 0.000000, 1.000000, 0.827966, 2*Pi};
//+
MeshSize {11} = 0.082797;
//+
MeshSize {12} = 0.082797;
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
Save "../geo_unrolled/cad_112.geo_unrolled";
