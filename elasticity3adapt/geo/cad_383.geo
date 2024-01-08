//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.968574, -4.113265, 0.000000, 30.794664, 9.175357, 0.100000};
//+
MeshSize {1} = 1.300883;
//+
MeshSize {2} = 1.300883;
//+
MeshSize {3} = 1.792549;
//+
MeshSize {4} = 1.792549;
//+
MeshSize {5} = 0.862821;
//+
MeshSize {6} = 0.862821;
//+
MeshSize {7} = 0.830780;
//+
MeshSize {8} = 0.830780;
//+
Cylinder(2) = {13.806579, -1.520406, 0.000000, 0.000000, 0.000000, 0.100000, 1.305154, 2*Pi};
//+
MeshSize {9} = 0.130515;
//+
MeshSize {10} = 0.130515;
//+
Cylinder(3) = {22.914098, 0.850617, 0.000000, 0.000000, 0.000000, 0.100000, 0.825972, 2*Pi};
//+
MeshSize {11} = 0.082597;
//+
MeshSize {12} = 0.082597;
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
Save "../msh/cad_383.msh2";
//+
Save "../mesh/cad_383.mesh";
//+
Save "../geo_unrolled/cad_383.geo_unrolled";
