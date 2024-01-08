//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.805819, -3.246210, 0.000000, 32.596686, 7.888699, 0.100000};
//+
MeshSize {1} = 3.113032;
//+
MeshSize {2} = 3.113032;
//+
MeshSize {3} = 0.539093;
//+
MeshSize {4} = 0.539093;
//+
MeshSize {5} = 0.499068;
//+
MeshSize {6} = 0.499068;
//+
MeshSize {7} = 3.386476;
//+
MeshSize {8} = 3.386476;
//+
Cylinder(2) = {31.973315, -1.289056, 0.000000, 0.000000, 0.000000, 0.100000, 0.592746, 2*Pi};
//+
MeshSize {9} = 0.059275;
//+
MeshSize {10} = 0.059275;
//+
Cylinder(3) = {3.230569, 2.741278, 0.000000, 0.000000, 0.000000, 0.100000, 1.103726, 2*Pi};
//+
MeshSize {11} = 0.110373;
//+
MeshSize {12} = 0.110373;
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
Save "../msh/cad_002.msh2";
//+
Save "../mesh/cad_002.mesh";
//+
Save "../geo_unrolled/cad_002.geo_unrolled";
