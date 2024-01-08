//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.146444, -4.502997, 0.000000, 35.877546, 9.400538, 1.000000};
//+
MeshSize {1} = 1.682496;
//+
MeshSize {2} = 1.682496;
//+
MeshSize {3} = 1.382328;
//+
MeshSize {4} = 1.382328;
//+
MeshSize {5} = 0.870325;
//+
MeshSize {6} = 0.870325;
//+
MeshSize {7} = 0.826340;
//+
MeshSize {8} = 0.826340;
//+
Cylinder(2) = {17.800067, 2.391928, 0.000000, 0.000000, 0.000000, 0.100000, 1.259877, 2*Pi};
//+
MeshSize {9} = 0.125988;
//+
MeshSize {10} = 0.125988;
//+
Cylinder(3) = {22.885980, 1.170572, 0.000000, 0.000000, 0.000000, 0.100000, 1.364247, 2*Pi};
//+
MeshSize {11} = 0.136425;
//+
MeshSize {12} = 0.136425;
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
Save "../msh/cad_078.msh2";
//+
Save "../mesh/cad_078.mesh";
//+
Save "../geo_unrolled/cad_078.geo_unrolled";
