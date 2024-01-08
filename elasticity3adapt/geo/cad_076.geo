//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.919770, -3.966016, 0.000000, 37.525074, 8.108291, 0.100000};
//+
MeshSize {1} = 0.795184;
//+
MeshSize {2} = 0.795184;
//+
MeshSize {3} = 0.867508;
//+
MeshSize {4} = 0.867508;
//+
MeshSize {5} = 1.604297;
//+
MeshSize {6} = 1.604297;
//+
MeshSize {7} = 1.587918;
//+
MeshSize {8} = 1.587918;
//+
Cylinder(2) = {22.639065, 0.194295, 0.000000, 0.000000, 0.000000, 0.100000, 0.895767, 2*Pi};
//+
MeshSize {9} = 0.089577;
//+
MeshSize {10} = 0.089577;
//+
Cylinder(3) = {11.928457, -1.301273, 0.000000, 0.000000, 0.000000, 0.100000, 0.833069, 2*Pi};
//+
MeshSize {11} = 0.083307;
//+
MeshSize {12} = 0.083307;
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
Save "../msh/cad_076.msh2";
//+
Save "../mesh/cad_076.mesh";
//+
Save "../geo_unrolled/cad_076.geo_unrolled";
