//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.672374, -3.966573, 0.000000, 35.828490, 9.895816, 1.000000};
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
Cylinder(2) = {18.392546, 1.922876, 0.000000, 0.000000, 0.000000, 1.000000, 0.822381, 2*Pi};
//+
MeshSize {9} = 0.082238;
//+
MeshSize {10} = 0.082238;
//+
Cylinder(3) = {4.212391, -1.462228, 0.000000, 0.000000, 0.000000, 1.000000, 0.980370, 2*Pi};
//+
MeshSize {11} = 0.098037;
//+
MeshSize {12} = 0.098037;
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
Save "../geo_unrolled/cad_239.geo_unrolled";
