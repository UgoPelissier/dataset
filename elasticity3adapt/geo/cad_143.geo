//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.076937, -4.630863, 0.000000, 32.327784, 9.586626, 0.100000};
//+
MeshSize {1} = 1.743757;
//+
MeshSize {2} = 1.743757;
//+
MeshSize {3} = 1.021621;
//+
MeshSize {4} = 1.021621;
//+
MeshSize {5} = 0.887053;
//+
MeshSize {6} = 0.887053;
//+
MeshSize {7} = 0.902155;
//+
MeshSize {8} = 0.902155;
//+
Cylinder(2) = {23.466319, 0.007601, 0.000000, 0.000000, 0.000000, 0.100000, 1.474323, 2*Pi};
//+
MeshSize {9} = 0.147432;
//+
MeshSize {10} = 0.147432;
//+
Cylinder(3) = {11.036813, 2.578857, 0.000000, 0.000000, 0.000000, 0.100000, 1.454858, 2*Pi};
//+
MeshSize {11} = 0.145486;
//+
MeshSize {12} = 0.145486;
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
Save "../msh/cad_143.msh2";
//+
Save "../mesh/cad_143.mesh";
//+
Save "../geo_unrolled/cad_143.geo_unrolled";
