//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.491619, -4.139942, 0.000000, 30.490555, 9.672250, 1.000000};
//+
MeshSize {1} = 4.652743;
//+
MeshSize {2} = 4.652743;
//+
MeshSize {3} = 4.499721;
//+
MeshSize {4} = 4.499721;
//+
MeshSize {5} = 0.330965;
//+
MeshSize {6} = 0.330965;
//+
MeshSize {7} = 0.348670;
//+
MeshSize {8} = 0.348670;
//+
Cylinder(2) = {25.585802, -2.230228, 0.000000, 0.000000, 0.000000, 0.100000, 0.916773, 2*Pi};
//+
MeshSize {9} = 0.091677;
//+
MeshSize {10} = 0.091677;
//+
Cylinder(3) = {25.528364, 2.330478, 0.000000, 0.000000, 0.000000, 0.100000, 1.259493, 2*Pi};
//+
MeshSize {11} = 0.125949;
//+
MeshSize {12} = 0.125949;
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
Save "../msh/cad_208.msh2";
//+
Save "../mesh/cad_208.mesh";
//+
Save "../geo_unrolled/cad_208.geo_unrolled";
