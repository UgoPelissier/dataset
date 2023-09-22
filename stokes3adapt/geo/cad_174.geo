//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.897913, -2.936258, 0.000000, 34.050965, 7.781859, 1.000000};
//+
MeshSize {1} = 0.540467;
//+
MeshSize {2} = 0.540467;
//+
MeshSize {3} = 0.296684;
//+
MeshSize {4} = 0.296684;
//+
MeshSize {5} = 3.920962;
//+
MeshSize {6} = 3.920962;
//+
MeshSize {7} = 3.989220;
//+
MeshSize {8} = 3.989220;
//+
Cylinder(2) = {17.459849, 0.730948, 0.000000, 0.000000, 0.000000, 1.000000, 1.028287, 2*Pi};
//+
MeshSize {9} = 0.102829;
//+
MeshSize {10} = 0.102829;
//+
Cylinder(3) = {4.612653, 2.807804, 0.000000, 0.000000, 0.000000, 1.000000, 1.068380, 2*Pi};
//+
MeshSize {11} = 0.106838;
//+
MeshSize {12} = 0.106838;
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
Save "../geo_unrolled/cad_174.geo_unrolled";
