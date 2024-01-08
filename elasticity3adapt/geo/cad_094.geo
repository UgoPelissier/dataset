//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.546014, -3.910419, 0.000000, 31.204878, 9.447856, 0.100000};
//+
MeshSize {1} = 0.902608;
//+
MeshSize {2} = 0.902608;
//+
MeshSize {3} = 0.900466;
//+
MeshSize {4} = 0.900466;
//+
MeshSize {5} = 1.389385;
//+
MeshSize {6} = 1.389385;
//+
MeshSize {7} = 1.263466;
//+
MeshSize {8} = 1.263466;
//+
Cylinder(2) = {14.752191, 1.846010, 0.000000, 0.000000, 0.000000, 0.100000, 1.131736, 2*Pi};
//+
MeshSize {9} = 0.113174;
//+
MeshSize {10} = 0.113174;
//+
Cylinder(3) = {14.531735, -1.951525, 0.000000, 0.000000, 0.000000, 0.100000, 0.543806, 2*Pi};
//+
MeshSize {11} = 0.054381;
//+
MeshSize {12} = 0.054381;
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
Save "../msh/cad_094.msh2";
//+
Save "../mesh/cad_094.mesh";
//+
Save "../geo_unrolled/cad_094.geo_unrolled";
