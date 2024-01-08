//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.316661, -4.121761, 0.000000, 37.277357, 9.680958, 0.100000};
//+
MeshSize {1} = 1.888724;
//+
MeshSize {2} = 1.888724;
//+
MeshSize {3} = 2.875348;
//+
MeshSize {4} = 2.875348;
//+
MeshSize {5} = 0.565639;
//+
MeshSize {6} = 0.565639;
//+
MeshSize {7} = 0.776262;
//+
MeshSize {8} = 0.776262;
//+
Cylinder(2) = {32.803759, -0.545246, 0.000000, 0.000000, 0.000000, 0.100000, 1.194001, 2*Pi};
//+
MeshSize {9} = 0.119400;
//+
MeshSize {10} = 0.119400;
//+
Cylinder(3) = {11.028873, -1.211658, 0.000000, 0.000000, 0.000000, 0.100000, 0.645570, 2*Pi};
//+
MeshSize {11} = 0.064557;
//+
MeshSize {12} = 0.064557;
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
Save "../msh/cad_055.msh2";
//+
Save "../mesh/cad_055.mesh";
//+
Save "../geo_unrolled/cad_055.geo_unrolled";
