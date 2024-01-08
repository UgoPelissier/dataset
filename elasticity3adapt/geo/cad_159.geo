//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.137867, -4.160667, 0.000000, 31.719670, 9.088754, 0.100000};
//+
MeshSize {1} = 2.178639;
//+
MeshSize {2} = 2.178639;
//+
MeshSize {3} = 2.270075;
//+
MeshSize {4} = 2.270075;
//+
MeshSize {5} = 0.724091;
//+
MeshSize {6} = 0.724091;
//+
MeshSize {7} = 0.665284;
//+
MeshSize {8} = 0.665284;
//+
Cylinder(2) = {22.091065, 1.320233, 0.000000, 0.000000, 0.000000, 0.100000, 1.499900, 2*Pi};
//+
MeshSize {9} = 0.149990;
//+
MeshSize {10} = 0.149990;
//+
Cylinder(3) = {17.678148, -0.094141, 0.000000, 0.000000, 0.000000, 0.100000, 0.640297, 2*Pi};
//+
MeshSize {11} = 0.064030;
//+
MeshSize {12} = 0.064030;
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
Save "../msh/cad_159.msh2";
//+
Save "../mesh/cad_159.mesh";
//+
Save "../geo_unrolled/cad_159.geo_unrolled";
