//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.578134, -3.975450, 0.000000, 31.591847, 7.978869, 1.000000};
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
Cylinder(2) = {16.219952, 1.657659, 0.000000, 0.000000, 0.000000, 1.000000, 0.866463, 2*Pi};
//+
MeshSize {9} = 0.086646;
//+
MeshSize {10} = 0.086646;
//+
Cylinder(3) = {18.960362, -0.481398, 0.000000, 0.000000, 0.000000, 1.000000, 1.457748, 2*Pi};
//+
MeshSize {11} = 0.145775;
//+
MeshSize {12} = 0.145775;
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
Save "../geo_unrolled/cad_414.geo_unrolled";
