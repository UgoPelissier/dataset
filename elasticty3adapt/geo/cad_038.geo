//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.851713, -4.021308, 0.000000, 30.014916, 9.704078, 1.000000};
//+
MeshSize {1} = 0.480366;
//+
MeshSize {2} = 0.480366;
//+
MeshSize {3} = 0.581463;
//+
MeshSize {4} = 0.581463;
//+
MeshSize {5} = 3.494943;
//+
MeshSize {6} = 3.494943;
//+
MeshSize {7} = 2.866964;
//+
MeshSize {8} = 2.866964;
//+
Cylinder(2) = {7.527242, -0.342472, 0.000000, 0.000000, 0.000000, 0.100000, 1.110332, 2*Pi};
//+
MeshSize {9} = 0.111033;
//+
MeshSize {10} = 0.111033;
//+
Cylinder(3) = {10.505113, 3.690655, 0.000000, 0.000000, 0.000000, 0.100000, 1.201184, 2*Pi};
//+
MeshSize {11} = 0.120118;
//+
MeshSize {12} = 0.120118;
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
Save "../msh/cad_038.msh2";
//+
Save "../mesh/cad_038.mesh";
//+
Save "../geo_unrolled/cad_038.geo_unrolled";
