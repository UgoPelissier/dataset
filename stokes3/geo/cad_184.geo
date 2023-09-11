//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.638991, -3.614052, 0.000000, 35.632649, 8.224179, 1.000000};
//+
l = [3.650398822594747, 3.650398822594747, 1.1017812202183268, 1.1017812202183268, 1.1017812202183268, 1.2463138004081915, 1.2463138004081915, 1.2463138004081915, 3.650398822594747, 3.650398822594747];
//+
MeshSize {1} = 3.650399;
//+
MeshSize {2} = 3.650399;
//+
MeshSize {3} = 1.101781;
//+
MeshSize {4} = 1.101781;
//+
MeshSize {5} = 1.101781;
//+
MeshSize {6} = 1.246314;
//+
MeshSize {7} = 1.246314;
//+
MeshSize {8} = 1.246314;
//+
Cylinder(2) = {24.845741, -1.665940, 0.000000, 0.000000, 0.000000, 1.000000, 0.572973, 2*Pi};
//+
c0 = 0.057297302550534585;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
