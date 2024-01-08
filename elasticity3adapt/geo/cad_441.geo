//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.130199, -4.137672, 0.000000, 35.870629, 9.988019, 0.100000};
//+
MeshSize {1} = 0.658442;
//+
MeshSize {2} = 0.658442;
//+
MeshSize {3} = 0.608785;
//+
MeshSize {4} = 0.608785;
//+
MeshSize {5} = 2.624283;
//+
MeshSize {6} = 2.624283;
//+
MeshSize {7} = 2.479215;
//+
MeshSize {8} = 2.479215;
//+
Cylinder(2) = {10.187055, 1.769764, 0.000000, 0.000000, 0.000000, 0.100000, 0.918331, 2*Pi};
//+
MeshSize {9} = 0.091833;
//+
MeshSize {10} = 0.091833;
//+
Cylinder(3) = {13.307265, 1.840463, 0.000000, 0.000000, 0.000000, 0.100000, 0.958164, 2*Pi};
//+
MeshSize {11} = 0.095816;
//+
MeshSize {12} = 0.095816;
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
Save "../msh/cad_441.msh2";
//+
Save "../mesh/cad_441.mesh";
//+
Save "../geo_unrolled/cad_441.geo_unrolled";
