//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.630617, -4.181728, 0.000000, 30.218008, 9.081978, 0.100000};
//+
MeshSize {1} = 0.618313;
//+
MeshSize {2} = 0.618313;
//+
MeshSize {3} = 0.615581;
//+
MeshSize {4} = 0.615581;
//+
MeshSize {5} = 2.854285;
//+
MeshSize {6} = 2.854285;
//+
MeshSize {7} = 2.447251;
//+
MeshSize {8} = 2.447251;
//+
Cylinder(2) = {22.202959, 0.844128, 0.000000, 0.000000, 0.000000, 0.100000, 0.989233, 2*Pi};
//+
MeshSize {9} = 0.098923;
//+
MeshSize {10} = 0.098923;
//+
Cylinder(3) = {1.943236, 0.368293, 0.000000, 0.000000, 0.000000, 0.100000, 0.807731, 2*Pi};
//+
MeshSize {11} = 0.080773;
//+
MeshSize {12} = 0.080773;
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
Save "../msh/cad_376.msh2";
//+
Save "../mesh/cad_376.mesh";
//+
Save "../geo_unrolled/cad_376.geo_unrolled";
