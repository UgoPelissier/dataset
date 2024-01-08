//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.632207, -3.221697, 0.000000, 34.471077, 7.613712, 0.100000};
//+
MeshSize {1} = 2.233180;
//+
MeshSize {2} = 2.233180;
//+
MeshSize {3} = 2.579695;
//+
MeshSize {4} = 2.579695;
//+
MeshSize {5} = 0.657793;
//+
MeshSize {6} = 0.657793;
//+
MeshSize {7} = 0.663630;
//+
MeshSize {8} = 0.663630;
//+
Cylinder(2) = {25.947749, 0.480285, 0.000000, 0.000000, 0.000000, 0.100000, 0.800638, 2*Pi};
//+
MeshSize {9} = 0.080064;
//+
MeshSize {10} = 0.080064;
//+
Cylinder(3) = {19.534243, -1.679141, 0.000000, 0.000000, 0.000000, 0.100000, 0.931962, 2*Pi};
//+
MeshSize {11} = 0.093196;
//+
MeshSize {12} = 0.093196;
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
Save "../msh/cad_487.msh2";
//+
Save "../mesh/cad_487.mesh";
//+
Save "../geo_unrolled/cad_487.geo_unrolled";
