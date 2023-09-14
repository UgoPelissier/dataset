//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.696708, -4.248710, 0.000000, 30.642123, 8.692853, 1.000000};
//+
MeshSize {1} = 0.910325;
//+
MeshSize {2} = 0.910325;
//+
MeshSize {3} = 0.593819;
//+
MeshSize {4} = 0.593819;
//+
MeshSize {5} = 0.449260;
//+
MeshSize {6} = 0.449260;
//+
MeshSize {7} = 0.581901;
//+
MeshSize {8} = 0.581901;
//+
Cylinder(2) = {7.286682, 3.121197, 0.000000, 0.000000, 0.000000, 1.000000, 0.783267, 2*Pi};
//+
MeshSize {9} = 0.078327;
//+
MeshSize {10} = 0.078327;
//+
Cylinder(3) = {27.476831, -0.794121, 0.000000, 0.000000, 0.000000, 1.000000, 0.689021, 2*Pi};
//+
MeshSize {11} = 0.068902;
//+
MeshSize {12} = 0.068902;
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
Save "../geo_unrolled/cad_269.geo_unrolled";
