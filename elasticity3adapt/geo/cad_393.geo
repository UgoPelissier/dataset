//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.267358, -3.148985, 0.000000, 32.504095, 7.658423, 0.100000};
//+
MeshSize {1} = 0.390334;
//+
MeshSize {2} = 0.390334;
//+
MeshSize {3} = 0.285265;
//+
MeshSize {4} = 0.285265;
//+
MeshSize {5} = 4.501673;
//+
MeshSize {6} = 4.501673;
//+
MeshSize {7} = 4.684561;
//+
MeshSize {8} = 4.684561;
//+
Cylinder(2) = {11.313577, -0.105480, 0.000000, 0.000000, 0.000000, 0.100000, 1.026683, 2*Pi};
//+
MeshSize {9} = 0.102668;
//+
MeshSize {10} = 0.102668;
//+
Cylinder(3) = {4.021366, 1.606931, 0.000000, 0.000000, 0.000000, 0.100000, 1.178308, 2*Pi};
//+
MeshSize {11} = 0.117831;
//+
MeshSize {12} = 0.117831;
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
Save "../msh/cad_393.msh2";
//+
Save "../mesh/cad_393.mesh";
//+
Save "../geo_unrolled/cad_393.geo_unrolled";
