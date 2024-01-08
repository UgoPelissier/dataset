//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.127288, -4.176201, 0.000000, 39.276349, 9.193295, 1.000000};
//+
MeshSize {1} = 3.537910;
//+
MeshSize {2} = 3.537910;
//+
MeshSize {3} = 3.431264;
//+
MeshSize {4} = 3.431264;
//+
MeshSize {5} = 0.529774;
//+
MeshSize {6} = 0.529774;
//+
MeshSize {7} = 0.438180;
//+
MeshSize {8} = 0.438180;
//+
Cylinder(2) = {35.573822, 1.061963, 0.000000, 0.000000, 0.000000, 0.100000, 0.800950, 2*Pi};
//+
MeshSize {9} = 0.080095;
//+
MeshSize {10} = 0.080095;
//+
Cylinder(3) = {16.939156, 0.735324, 0.000000, 0.000000, 0.000000, 0.100000, 1.154706, 2*Pi};
//+
MeshSize {11} = 0.115471;
//+
MeshSize {12} = 0.115471;
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
Save "../msh/cad_026.msh2";
//+
Save "../mesh/cad_026.mesh";
//+
Save "../geo_unrolled/cad_026.geo_unrolled";
