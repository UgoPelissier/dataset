//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.106331, -3.361472, 0.000000, 29.952140, 7.791696, 0.100000};
//+
MeshSize {1} = 0.486555;
//+
MeshSize {2} = 0.486555;
//+
MeshSize {3} = 0.574715;
//+
MeshSize {4} = 0.574715;
//+
MeshSize {5} = 3.235550;
//+
MeshSize {6} = 3.235550;
//+
MeshSize {7} = 3.110091;
//+
MeshSize {8} = 3.110091;
//+
Cylinder(2) = {5.162102, -0.178275, 0.000000, 0.000000, 0.000000, 0.100000, 1.191806, 2*Pi};
//+
MeshSize {9} = 0.119181;
//+
MeshSize {10} = 0.119181;
//+
Cylinder(3) = {14.630134, 0.923311, 0.000000, 0.000000, 0.000000, 0.100000, 1.473922, 2*Pi};
//+
MeshSize {11} = 0.147392;
//+
MeshSize {12} = 0.147392;
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
Save "../msh/cad_457.msh2";
//+
Save "../mesh/cad_457.mesh";
//+
Save "../geo_unrolled/cad_457.geo_unrolled";
