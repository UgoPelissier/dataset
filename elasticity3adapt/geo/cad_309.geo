//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.825705, -4.194974, 0.000000, 34.936619, 9.769139, 1.000000};
//+
MeshSize {1} = 2.540498;
//+
MeshSize {2} = 2.540498;
//+
MeshSize {3} = 3.050440;
//+
MeshSize {4} = 3.050440;
//+
MeshSize {5} = 0.515557;
//+
MeshSize {6} = 0.515557;
//+
MeshSize {7} = 0.669658;
//+
MeshSize {8} = 0.669658;
//+
Cylinder(2) = {21.286851, -1.949986, 0.000000, 0.000000, 0.000000, 0.100000, 1.230789, 2*Pi};
//+
MeshSize {9} = 0.123079;
//+
MeshSize {10} = 0.123079;
//+
Cylinder(3) = {27.569230, -1.485591, 0.000000, 0.000000, 0.000000, 0.100000, 1.317142, 2*Pi};
//+
MeshSize {11} = 0.131714;
//+
MeshSize {12} = 0.131714;
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
Save "../msh/cad_309.msh2";
//+
Save "../mesh/cad_309.mesh";
//+
Save "../geo_unrolled/cad_309.geo_unrolled";
