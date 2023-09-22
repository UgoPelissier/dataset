//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.372492, -2.894916, 0.000000, 30.476532, 7.738943, 1.000000};
//+
MeshSize {1} = 0.686394;
//+
MeshSize {2} = 0.686394;
//+
MeshSize {3} = 0.443182;
//+
MeshSize {4} = 0.443182;
//+
MeshSize {5} = 2.674799;
//+
MeshSize {6} = 2.674799;
//+
MeshSize {7} = 3.256883;
//+
MeshSize {8} = 3.256883;
//+
Cylinder(2) = {4.118772, 2.476174, 0.000000, 0.000000, 0.000000, 1.000000, 0.574830, 2*Pi};
//+
MeshSize {9} = 0.057483;
//+
MeshSize {10} = 0.057483;
//+
Cylinder(3) = {17.516715, -0.503164, 0.000000, 0.000000, 0.000000, 1.000000, 1.464218, 2*Pi};
//+
MeshSize {11} = 0.146422;
//+
MeshSize {12} = 0.146422;
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
Save "../geo_unrolled/cad_185.geo_unrolled";
