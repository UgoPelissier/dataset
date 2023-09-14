//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.412904, -3.258512, 0.000000, 31.411168, 8.223988, 1.000000};
//+
MeshSize {1} = 1.460810;
//+
MeshSize {2} = 1.460810;
//+
MeshSize {3} = 1.571684;
//+
MeshSize {4} = 1.571684;
//+
MeshSize {5} = 1.153217;
//+
MeshSize {6} = 1.153217;
//+
MeshSize {7} = 1.145525;
//+
MeshSize {8} = 1.145525;
//+
Cylinder(2) = {20.268519, 0.968205, 0.000000, 0.000000, 0.000000, 1.000000, 0.772134, 2*Pi};
//+
MeshSize {9} = 0.077213;
//+
MeshSize {10} = 0.077213;
//+
Cylinder(3) = {15.707711, -1.300107, 0.000000, 0.000000, 0.000000, 1.000000, 0.811577, 2*Pi};
//+
MeshSize {11} = 0.081158;
//+
MeshSize {12} = 0.081158;
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
Save "../geo_unrolled/cad_293.geo_unrolled";
