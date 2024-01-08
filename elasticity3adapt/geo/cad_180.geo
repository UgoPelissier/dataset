//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.566886, -3.510943, 0.000000, 31.984275, 7.757262, 1.000000};
//+
MeshSize {1} = 0.679730;
//+
MeshSize {2} = 0.679730;
//+
MeshSize {3} = 0.731020;
//+
MeshSize {4} = 0.731020;
//+
MeshSize {5} = 2.347461;
//+
MeshSize {6} = 2.347461;
//+
MeshSize {7} = 2.001456;
//+
MeshSize {8} = 2.001456;
//+
Cylinder(2) = {18.681512, 1.728150, 0.000000, 0.000000, 0.000000, 0.100000, 0.728404, 2*Pi};
//+
MeshSize {9} = 0.072840;
//+
MeshSize {10} = 0.072840;
//+
Cylinder(3) = {7.960434, -0.219029, 0.000000, 0.000000, 0.000000, 0.100000, 0.882979, 2*Pi};
//+
MeshSize {11} = 0.088298;
//+
MeshSize {12} = 0.088298;
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
Save "../msh/cad_180.msh2";
//+
Save "../mesh/cad_180.mesh";
//+
Save "../geo_unrolled/cad_180.geo_unrolled";
