//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.410036, -4.566470, 0.000000, 33.054201, 9.598935, 0.100000};
//+
MeshSize {1} = 1.111191;
//+
MeshSize {2} = 1.111191;
//+
MeshSize {3} = 1.052539;
//+
MeshSize {4} = 1.052539;
//+
MeshSize {5} = 0.966215;
//+
MeshSize {6} = 0.966215;
//+
MeshSize {7} = 0.980801;
//+
MeshSize {8} = 0.980801;
//+
Cylinder(2) = {3.478575, 0.286187, 0.000000, 0.000000, 0.000000, 0.100000, 0.738168, 2*Pi};
//+
MeshSize {9} = 0.073817;
//+
MeshSize {10} = 0.073817;
//+
Cylinder(3) = {30.027041, 0.189667, 0.000000, 0.000000, 0.000000, 0.100000, 1.200847, 2*Pi};
//+
MeshSize {11} = 0.120085;
//+
MeshSize {12} = 0.120085;
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
Save "../msh/cad_184.msh2";
//+
Save "../mesh/cad_184.mesh";
//+
Save "../geo_unrolled/cad_184.geo_unrolled";
