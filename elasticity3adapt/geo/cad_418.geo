//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.101722, -2.905598, 0.000000, 39.676811, 7.661776, 0.100000};
//+
MeshSize {1} = 0.920769;
//+
MeshSize {2} = 0.920769;
//+
MeshSize {3} = 0.861315;
//+
MeshSize {4} = 0.861315;
//+
MeshSize {5} = 1.237835;
//+
MeshSize {6} = 1.237835;
//+
MeshSize {7} = 1.497996;
//+
MeshSize {8} = 1.497996;
//+
Cylinder(2) = {25.610660, -0.764373, 0.000000, 0.000000, 0.000000, 0.100000, 0.975826, 2*Pi};
//+
MeshSize {9} = 0.097583;
//+
MeshSize {10} = 0.097583;
//+
Cylinder(3) = {11.093860, 2.053353, 0.000000, 0.000000, 0.000000, 0.100000, 0.608037, 2*Pi};
//+
MeshSize {11} = 0.060804;
//+
MeshSize {12} = 0.060804;
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
Save "../msh/cad_418.msh2";
//+
Save "../mesh/cad_418.mesh";
//+
Save "../geo_unrolled/cad_418.geo_unrolled";
