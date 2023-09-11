//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.350815, -3.873482, 0.000000, 35.036870, 8.309134, 1.000000};
//+
MeshSize {1} = 3.563073;
//+
MeshSize {2} = 3.563073;
//+
MeshSize {3} = 0.991853;
//+
MeshSize {4} = 0.991853;
//+
MeshSize {5} = 0.730987;
//+
MeshSize {6} = 0.730987;
//+
MeshSize {7} = 0.991853;
//+
MeshSize {8} = 0.991853;
//+
Cylinder(2) = {24.914833, -1.750458, 0.000000, 0.000000, 0.000000, 1.000000, 0.767343, 2*Pi};
//+
MeshSize {9} = 0.076734;
//+
MeshSize {10} = 0.076734;
//+
Cylinder(3) = {4.490279, 3.041798, 0.000000, 0.000000, 0.000000, 1.000000, 0.749677, 2*Pi};
//+
MeshSize {11} = 0.074968;
//+
MeshSize {12} = 0.074968;
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
Save "../geo_unrolled/cad_271.geo_unrolled";
