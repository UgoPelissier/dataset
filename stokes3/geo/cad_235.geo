//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.341357, -3.285096, 0.000000, 39.302980, 8.229959, 1.000000};
//+
MeshSize {1} = 0.895145;
//+
MeshSize {2} = 0.895145;
//+
MeshSize {3} = 0.633843;
//+
MeshSize {4} = 0.633843;
//+
MeshSize {5} = 1.904020;
//+
MeshSize {6} = 1.904020;
//+
MeshSize {7} = 1.868684;
//+
MeshSize {8} = 1.868684;
//+
Cylinder(2) = {20.693753, 1.663242, 0.000000, 0.000000, 0.000000, 1.000000, 0.545778, 2*Pi};
//+
MeshSize {9} = 0.054578;
//+
MeshSize {10} = 0.054578;
//+
Cylinder(3) = {7.435034, 3.540662, 0.000000, 0.000000, 0.000000, 1.000000, 0.892896, 2*Pi};
//+
MeshSize {11} = 0.089290;
//+
MeshSize {12} = 0.089290;
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
Save "../geo_unrolled/cad_235.geo_unrolled";
