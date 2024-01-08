//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.162598, -3.954143, 0.000000, 39.041742, 8.511406, 0.100000};
//+
MeshSize {1} = 1.611208;
//+
MeshSize {2} = 1.611208;
//+
MeshSize {3} = 1.890500;
//+
MeshSize {4} = 1.890500;
//+
MeshSize {5} = 0.833055;
//+
MeshSize {6} = 0.833055;
//+
MeshSize {7} = 0.758119;
//+
MeshSize {8} = 0.758119;
//+
Cylinder(2) = {18.579355, -1.788866, 0.000000, 0.000000, 0.000000, 0.100000, 1.444010, 2*Pi};
//+
MeshSize {9} = 0.144401;
//+
MeshSize {10} = 0.144401;
//+
Cylinder(3) = {27.017552, 1.971586, 0.000000, 0.000000, 0.000000, 0.100000, 1.400174, 2*Pi};
//+
MeshSize {11} = 0.140017;
//+
MeshSize {12} = 0.140017;
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
Save "../msh/cad_399.msh2";
//+
Save "../mesh/cad_399.mesh";
//+
Save "../geo_unrolled/cad_399.geo_unrolled";
