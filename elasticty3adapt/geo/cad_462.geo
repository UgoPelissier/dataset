//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.020807, -3.891798, 0.000000, 31.901206, 8.359618, 1.000000};
//+
MeshSize {1} = 1.092979;
//+
MeshSize {2} = 1.092979;
//+
MeshSize {3} = 0.989935;
//+
MeshSize {4} = 0.989935;
//+
MeshSize {5} = 1.159879;
//+
MeshSize {6} = 1.159879;
//+
MeshSize {7} = 0.929304;
//+
MeshSize {8} = 0.929304;
//+
Cylinder(2) = {10.826446, 0.853518, 0.000000, 0.000000, 0.000000, 0.100000, 1.342467, 2*Pi};
//+
MeshSize {9} = 0.134247;
//+
MeshSize {10} = 0.134247;
//+
Cylinder(3) = {21.486940, 1.961038, 0.000000, 0.000000, 0.000000, 0.100000, 1.295973, 2*Pi};
//+
MeshSize {11} = 0.129597;
//+
MeshSize {12} = 0.129597;
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
Save "../msh/cad_462.msh2";
//+
Save "../mesh/cad_462.mesh";
//+
Save "../geo_unrolled/cad_462.geo_unrolled";
