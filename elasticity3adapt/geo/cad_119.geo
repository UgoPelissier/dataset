//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.479079, -4.714212, 0.000000, 34.906700, 9.832560, 0.100000};
//+
MeshSize {1} = 1.476678;
//+
MeshSize {2} = 1.476678;
//+
MeshSize {3} = 1.339875;
//+
MeshSize {4} = 1.339875;
//+
MeshSize {5} = 0.827180;
//+
MeshSize {6} = 0.827180;
//+
MeshSize {7} = 0.931630;
//+
MeshSize {8} = 0.931630;
//+
Cylinder(2) = {20.765454, -2.532297, 0.000000, 0.000000, 0.000000, 0.100000, 1.169834, 2*Pi};
//+
MeshSize {9} = 0.116983;
//+
MeshSize {10} = 0.116983;
//+
Cylinder(3) = {18.791317, 1.356348, 0.000000, 0.000000, 0.000000, 0.100000, 0.552491, 2*Pi};
//+
MeshSize {11} = 0.055249;
//+
MeshSize {12} = 0.055249;
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
Save "../msh/cad_119.msh2";
//+
Save "../mesh/cad_119.mesh";
//+
Save "../geo_unrolled/cad_119.geo_unrolled";
