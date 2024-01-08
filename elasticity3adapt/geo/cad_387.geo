//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.591581, -3.825533, 0.000000, 32.200128, 9.325044, 0.100000};
//+
MeshSize {1} = 2.547792;
//+
MeshSize {2} = 2.547792;
//+
MeshSize {3} = 2.030242;
//+
MeshSize {4} = 2.030242;
//+
MeshSize {5} = 0.577946;
//+
MeshSize {6} = 0.577946;
//+
MeshSize {7} = 0.790011;
//+
MeshSize {8} = 0.790011;
//+
Cylinder(2) = {24.140563, -2.362461, 0.000000, 0.000000, 0.000000, 0.100000, 0.827296, 2*Pi};
//+
MeshSize {9} = 0.082730;
//+
MeshSize {10} = 0.082730;
//+
Cylinder(3) = {19.001714, 3.653763, 0.000000, 0.000000, 0.000000, 0.100000, 1.091772, 2*Pi};
//+
MeshSize {11} = 0.109177;
//+
MeshSize {12} = 0.109177;
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
Save "../msh/cad_387.msh2";
//+
Save "../mesh/cad_387.mesh";
//+
Save "../geo_unrolled/cad_387.geo_unrolled";
