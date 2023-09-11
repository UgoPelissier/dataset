//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.942442, -3.781383, 0.000000, 37.955090, 7.892759, 1.000000};
//+
l = [0.26418834471035607, 0.26418834471035607, 0.26418834471035607, 0.26418834471035607, 0.26418834471035607, 0.26418834471035607, 3.909721170837445, 3.909721170837445, 1.1783563537060793, 1.1783563537060793, 1.1783563537060793, 3.909721170837445, 3.909721170837445, 1.0782216006465968, 1.0782216006465968, 1.0782216006465968, 0.6408731019548728, 0.6408731019548728, 0.6408731019548728, 0.6408731019548728, 0.6408731019548728, 0.6408731019548728];
//+
MeshSize {1} = 0.264188;
//+
MeshSize {2} = 0.264188;
//+
MeshSize {3} = 0.264188;
//+
MeshSize {4} = 0.264188;
//+
MeshSize {5} = 0.264188;
//+
MeshSize {6} = 0.264188;
//+
MeshSize {7} = 3.909721;
//+
MeshSize {8} = 3.909721;
//+
Cylinder(2) = {3.938679, -2.324019, 0.000000, 0.000000, 0.000000, 1.000000, 0.689984, 2*Pi};
//+
c0 = 0.06899842575883855;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {27.119232, 1.752493, 0.000000, 0.000000, 0.000000, 1.000000, 1.229974, 2*Pi};
//+
c1 = 0.122997400567029;
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
