//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.139423, -3.701077, 0.000000, 32.941399, 8.504075, 0.100000};
//+
MeshSize {1} = 0.843938;
//+
MeshSize {2} = 0.843938;
//+
MeshSize {3} = 0.595117;
//+
MeshSize {4} = 0.595117;
//+
MeshSize {5} = 1.523455;
//+
MeshSize {6} = 1.523455;
//+
MeshSize {7} = 2.804981;
//+
MeshSize {8} = 2.804981;
//+
Cylinder(2) = {27.816900, -0.459452, 0.000000, 0.000000, 0.000000, 0.100000, 0.592481, 2*Pi};
//+
MeshSize {9} = 0.059248;
//+
MeshSize {10} = 0.059248;
//+
Cylinder(3) = {1.820558, 1.201733, 0.000000, 0.000000, 0.000000, 0.100000, 1.083431, 2*Pi};
//+
MeshSize {11} = 0.108343;
//+
MeshSize {12} = 0.108343;
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
Save "../msh/cad_400.msh2";
//+
Save "../mesh/cad_400.mesh";
//+
Save "../geo_unrolled/cad_400.geo_unrolled";
