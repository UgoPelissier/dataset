//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.058752, -4.552421, 0.000000, 32.289662, 9.770566, 1.000000};
//+
MeshSize {1} = 0.824539;
//+
MeshSize {2} = 0.824539;
//+
MeshSize {3} = 0.747270;
//+
MeshSize {4} = 0.747270;
//+
MeshSize {5} = 2.096042;
//+
MeshSize {6} = 2.096042;
//+
MeshSize {7} = 1.514601;
//+
MeshSize {8} = 1.514601;
//+
Cylinder(2) = {19.351859, 2.425463, 0.000000, 0.000000, 0.000000, 0.100000, 0.545512, 2*Pi};
//+
MeshSize {9} = 0.054551;
//+
MeshSize {10} = 0.054551;
//+
Cylinder(3) = {8.205398, 1.169125, 0.000000, 0.000000, 0.000000, 0.100000, 0.802507, 2*Pi};
//+
MeshSize {11} = 0.080251;
//+
MeshSize {12} = 0.080251;
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
Save "../msh/cad_443.msh2";
//+
Save "../mesh/cad_443.mesh";
//+
Save "../geo_unrolled/cad_443.geo_unrolled";
