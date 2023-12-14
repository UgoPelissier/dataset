//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.383316, -4.178651, 0.000000, 31.610826, 8.432754, 1.000000};
//+
MeshSize {1} = 0.258290;
//+
MeshSize {2} = 0.258290;
//+
MeshSize {3} = 0.351828;
//+
MeshSize {4} = 0.351828;
//+
MeshSize {5} = 5.005923;
//+
MeshSize {6} = 5.005923;
//+
MeshSize {7} = 4.735128;
//+
MeshSize {8} = 4.735128;
//+
Cylinder(2) = {6.097338, 1.490474, 0.000000, 0.000000, 0.000000, 0.100000, 1.126687, 2*Pi};
//+
MeshSize {9} = 0.112669;
//+
MeshSize {10} = 0.112669;
//+
Cylinder(3) = {4.125030, -0.981990, 0.000000, 0.000000, 0.000000, 0.100000, 1.088671, 2*Pi};
//+
MeshSize {11} = 0.108867;
//+
MeshSize {12} = 0.108867;
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
Save "../msh/cad_220.msh2";
//+
Save "../mesh/cad_220.mesh";
//+
Save "../geo_unrolled/cad_220.geo_unrolled";
