//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.487581, -3.912091, 0.000000, 31.280662, 9.086247, 1.000000};
//+
MeshSize {1} = 0.826061;
//+
MeshSize {2} = 0.826061;
//+
MeshSize {3} = 0.545514;
//+
MeshSize {4} = 0.545514;
//+
MeshSize {5} = 1.951974;
//+
MeshSize {6} = 1.951974;
//+
MeshSize {7} = 2.620483;
//+
MeshSize {8} = 2.620483;
//+
Cylinder(2) = {5.356309, 2.403165, 0.000000, 0.000000, 0.000000, 0.100000, 0.989577, 2*Pi};
//+
MeshSize {9} = 0.098958;
//+
MeshSize {10} = 0.098958;
//+
Cylinder(3) = {20.124786, -0.877791, 0.000000, 0.000000, 0.000000, 0.100000, 1.465328, 2*Pi};
//+
MeshSize {11} = 0.146533;
//+
MeshSize {12} = 0.146533;
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
Save "../msh/cad_219.msh2";
//+
Save "../mesh/cad_219.mesh";
//+
Save "../geo_unrolled/cad_219.geo_unrolled";
