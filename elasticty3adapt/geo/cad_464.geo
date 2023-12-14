//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.415984, -3.018024, 0.000000, 32.620535, 8.023582, 1.000000};
//+
MeshSize {1} = 0.945980;
//+
MeshSize {2} = 0.945980;
//+
MeshSize {3} = 0.947919;
//+
MeshSize {4} = 0.947919;
//+
MeshSize {5} = 1.188232;
//+
MeshSize {6} = 1.188232;
//+
MeshSize {7} = 1.147494;
//+
MeshSize {8} = 1.147494;
//+
Cylinder(2) = {14.226201, 0.943276, 0.000000, 0.000000, 0.000000, 0.100000, 0.620688, 2*Pi};
//+
MeshSize {9} = 0.062069;
//+
MeshSize {10} = 0.062069;
//+
Cylinder(3) = {17.026607, 1.359884, 0.000000, 0.000000, 0.000000, 0.100000, 1.206405, 2*Pi};
//+
MeshSize {11} = 0.120640;
//+
MeshSize {12} = 0.120640;
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
Save "../msh/cad_464.msh2";
//+
Save "../mesh/cad_464.mesh";
//+
Save "../geo_unrolled/cad_464.geo_unrolled";
