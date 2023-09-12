//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.868173, -4.205267, 0.000000, 30.814777, 8.771844, 1.000000};
//+
MeshSize {1} = 3.198508;
//+
MeshSize {2} = 3.198508;
//+
MeshSize {3} = 0.794296;
//+
MeshSize {4} = 0.794296;
//+
MeshSize {5} = 3.198508;
//+
MeshSize {6} = 3.198508;
//+
MeshSize {7} = 1.345814;
//+
MeshSize {8} = 1.345814;
//+
Cylinder(2) = {18.084242, -0.733160, 0.000000, 0.000000, 0.000000, 1.000000, 0.576835, 2*Pi};
//+
MeshSize {9} = 0.057684;
//+
MeshSize {10} = 0.057684;
//+
Cylinder(3) = {24.340535, 1.551814, 0.000000, 0.000000, 0.000000, 1.000000, 1.387368, 2*Pi};
//+
MeshSize {11} = 0.138737;
//+
MeshSize {12} = 0.138737;
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
Save "../geo_unrolled/cad_448.geo_unrolled";
