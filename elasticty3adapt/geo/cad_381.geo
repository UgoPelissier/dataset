//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.692358, -4.197698, 0.000000, 35.705899, 8.807717, 1.000000};
//+
MeshSize {1} = 1.712599;
//+
MeshSize {2} = 1.712599;
//+
MeshSize {3} = 1.621325;
//+
MeshSize {4} = 1.621325;
//+
MeshSize {5} = 1.033629;
//+
MeshSize {6} = 1.033629;
//+
MeshSize {7} = 0.617709;
//+
MeshSize {8} = 0.617709;
//+
Cylinder(2) = {34.589193, 1.120268, 0.000000, 0.000000, 0.000000, 0.100000, 1.282583, 2*Pi};
//+
MeshSize {9} = 0.128258;
//+
MeshSize {10} = 0.128258;
//+
Cylinder(3) = {4.277080, 0.265984, 0.000000, 0.000000, 0.000000, 0.100000, 0.595684, 2*Pi};
//+
MeshSize {11} = 0.059568;
//+
MeshSize {12} = 0.059568;
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
Save "../msh/cad_381.msh2";
//+
Save "../mesh/cad_381.mesh";
//+
Save "../geo_unrolled/cad_381.geo_unrolled";
