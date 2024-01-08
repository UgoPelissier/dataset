//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.520688, -4.334692, 0.000000, 32.411007, 9.923937, 0.100000};
//+
MeshSize {1} = 0.653267;
//+
MeshSize {2} = 0.653267;
//+
MeshSize {3} = 0.151085;
//+
MeshSize {4} = 0.151085;
//+
MeshSize {5} = 4.223027;
//+
MeshSize {6} = 4.223027;
//+
MeshSize {7} = 3.938895;
//+
MeshSize {8} = 3.938895;
//+
Cylinder(2) = {14.617064, 1.435839, 0.000000, 0.000000, 0.000000, 0.100000, 0.791517, 2*Pi};
//+
MeshSize {9} = 0.079152;
//+
MeshSize {10} = 0.079152;
//+
Cylinder(3) = {2.073034, 3.689657, 0.000000, 0.000000, 0.000000, 0.100000, 0.732328, 2*Pi};
//+
MeshSize {11} = 0.073233;
//+
MeshSize {12} = 0.073233;
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
Save "../msh/cad_395.msh2";
//+
Save "../mesh/cad_395.mesh";
//+
Save "../geo_unrolled/cad_395.geo_unrolled";
