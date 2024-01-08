//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.696708, -4.248710, 0.000000, 30.642123, 8.692853, 1.000000};
//+
MeshSize {1} = 2.962642;
//+
MeshSize {2} = 2.962642;
//+
MeshSize {3} = 0.936879;
//+
MeshSize {4} = 0.936879;
//+
MeshSize {5} = 0.708807;
//+
MeshSize {6} = 0.708807;
//+
MeshSize {7} = 0.918076;
//+
MeshSize {8} = 0.918076;
//+
Cylinder(2) = {7.286682, 3.121197, 0.000000, 0.000000, 0.000000, 0.100000, 0.783267, 2*Pi};
//+
MeshSize {9} = 0.078327;
//+
MeshSize {10} = 0.078327;
//+
Cylinder(3) = {27.476831, -0.794121, 0.000000, 0.000000, 0.000000, 0.100000, 0.689021, 2*Pi};
//+
MeshSize {11} = 0.068902;
//+
MeshSize {12} = 0.068902;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; }
//+
Physical Volume("SOLID", 1) = {1, 2, 3};
//+
Physical Surface("WALLS", 2) = {13, 18};
//+
Physical Surface("LOAD", 3) = {8, 11};
//+
Physical Surface("BORDER", 4) = {7, 9, 10, 12, 14, 15, 16, 17};
//+
//+
//+
//+
//+
//+
Mesh 3;
//+
Save "../msh/cad_269.msh2";
//+
Save "../mesh/cad_269.mesh";
//+
Save "../geo_unrolled/cad_269.geo_unrolled";
