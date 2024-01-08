//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.365412, -4.260124, 0.000000, 37.261847, 9.886132, 0.100000};
//+
MeshSize {1} = 2.419434;
//+
MeshSize {2} = 2.419434;
//+
MeshSize {3} = 2.756652;
//+
MeshSize {4} = 2.756652;
//+
MeshSize {5} = 0.602808;
//+
MeshSize {6} = 0.602808;
//+
MeshSize {7} = 0.652574;
//+
MeshSize {8} = 0.652574;
//+
Cylinder(2) = {29.698820, 0.065353, 0.000000, 0.000000, 0.000000, 0.100000, 1.128571, 2*Pi};
//+
MeshSize {9} = 0.112857;
//+
MeshSize {10} = 0.112857;
//+
Cylinder(3) = {18.853099, -0.836051, 0.000000, 0.000000, 0.000000, 0.100000, 1.201811, 2*Pi};
//+
MeshSize {11} = 0.120181;
//+
MeshSize {12} = 0.120181;
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
Save "../msh/cad_175.msh2";
//+
Save "../mesh/cad_175.mesh";
//+
Save "../geo_unrolled/cad_175.geo_unrolled";
