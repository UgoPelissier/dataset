//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.743308, -4.072517, 0.000000, 33.123140, 9.934309, 1.000000};
//+
MeshSize {1} = 0.404573;
//+
MeshSize {2} = 0.404573;
//+
MeshSize {3} = 0.382034;
//+
MeshSize {4} = 0.382034;
//+
MeshSize {5} = 3.955595;
//+
MeshSize {6} = 3.955595;
//+
MeshSize {7} = 4.345816;
//+
MeshSize {8} = 4.345816;
//+
Cylinder(2) = {16.804641, -0.024603, 0.000000, 0.000000, 0.000000, 0.100000, 1.424310, 2*Pi};
//+
MeshSize {9} = 0.142431;
//+
MeshSize {10} = 0.142431;
//+
Cylinder(3) = {2.672977, 1.017803, 0.000000, 0.000000, 0.000000, 0.100000, 1.322341, 2*Pi};
//+
MeshSize {11} = 0.132234;
//+
MeshSize {12} = 0.132234;
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
Save "../msh/cad_096.msh2";
//+
Save "../mesh/cad_096.mesh";
//+
Save "../geo_unrolled/cad_096.geo_unrolled";
