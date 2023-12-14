//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.577560, -3.838958, 0.000000, 38.343796, 8.302201, 1.000000};
//+
MeshSize {1} = 0.487483;
//+
MeshSize {2} = 0.487483;
//+
MeshSize {3} = 0.653518;
//+
MeshSize {4} = 0.653518;
//+
MeshSize {5} = 2.656088;
//+
MeshSize {6} = 2.656088;
//+
MeshSize {7} = 3.203258;
//+
MeshSize {8} = 3.203258;
//+
Cylinder(2) = {7.494137, -1.854300, 0.000000, 0.000000, 0.000000, 0.100000, 0.819150, 2*Pi};
//+
MeshSize {9} = 0.081915;
//+
MeshSize {10} = 0.081915;
//+
Cylinder(3) = {20.007938, -2.436054, 0.000000, 0.000000, 0.000000, 0.100000, 0.850318, 2*Pi};
//+
MeshSize {11} = 0.085032;
//+
MeshSize {12} = 0.085032;
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
Save "../msh/cad_345.msh2";
//+
Save "../mesh/cad_345.mesh";
//+
Save "../geo_unrolled/cad_345.geo_unrolled";
