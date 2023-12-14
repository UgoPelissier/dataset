//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.154221, -3.962892, 0.000000, 36.184788, 9.349138, 1.000000};
//+
MeshSize {1} = 0.763300;
//+
MeshSize {2} = 0.763300;
//+
MeshSize {3} = 0.875471;
//+
MeshSize {4} = 0.875471;
//+
MeshSize {5} = 1.518142;
//+
MeshSize {6} = 1.518142;
//+
MeshSize {7} = 1.779999;
//+
MeshSize {8} = 1.779999;
//+
Cylinder(2) = {11.202134, -1.309651, 0.000000, 0.000000, 0.000000, 0.100000, 0.769766, 2*Pi};
//+
MeshSize {9} = 0.076977;
//+
MeshSize {10} = 0.076977;
//+
Cylinder(3) = {20.158702, -0.859708, 0.000000, 0.000000, 0.000000, 0.100000, 0.526262, 2*Pi};
//+
MeshSize {11} = 0.052626;
//+
MeshSize {12} = 0.052626;
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
Save "../msh/cad_145.msh2";
//+
Save "../mesh/cad_145.mesh";
//+
Save "../geo_unrolled/cad_145.geo_unrolled";
