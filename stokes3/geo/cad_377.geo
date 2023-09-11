//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.696708, -4.248710, 0.000000, 30.642123, 8.692853, 1.000000};
//+
l = [0.9103254001102381, 0.9103254001102381, 0.9103254001102381, 0.9103254001102381, 0.9103254001102381, 0.9103254001102381, 3.1638801426317116, 3.1638801426317116, 0.4492602845895453, 0.4492602845895453, 0.4492602845895453, 3.1638801426317116, 3.1638801426317116, 0.5819008931017761, 0.5819008931017761, 0.5819008931017761, 0.5938187946161617, 0.5938187946161617, 0.5938187946161617, 0.5938187946161617, 0.5938187946161617, 0.5938187946161617];
//+
MeshSize {1} = 0.910325;
//+
MeshSize {2} = 0.910325;
//+
MeshSize {3} = 0.910325;
//+
MeshSize {4} = 0.910325;
//+
MeshSize {5} = 0.910325;
//+
MeshSize {6} = 0.910325;
//+
MeshSize {7} = 3.163880;
//+
MeshSize {8} = 3.163880;
//+
Cylinder(2) = {7.286682, 3.121197, 0.000000, 0.000000, 0.000000, 1.000000, 0.783267, 2*Pi};
//+
c0 = 0.07832666680089559;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {27.476831, -0.794121, 0.000000, 0.000000, 0.000000, 1.000000, 0.689021, 2*Pi};
//+
c1 = 0.06890210137178708;
//+
MeshSize {11, 12} = c1;
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
