//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.709149, -3.107863, 0.000000, 35.070723, 7.794572, 0.100000};
//+
MeshSize {1} = 0.652451;
//+
MeshSize {2} = 0.652451;
//+
MeshSize {3} = 0.734307;
//+
MeshSize {4} = 0.734307;
//+
MeshSize {5} = 2.120549;
//+
MeshSize {6} = 2.120549;
//+
MeshSize {7} = 2.344681;
//+
MeshSize {8} = 2.344681;
//+
Cylinder(2) = {11.302923, -1.073548, 0.000000, 0.000000, 0.000000, 0.100000, 0.654779, 2*Pi};
//+
MeshSize {9} = 0.065478;
//+
MeshSize {10} = 0.065478;
//+
Cylinder(3) = {15.154978, -1.047247, 0.000000, 0.000000, 0.000000, 0.100000, 0.775561, 2*Pi};
//+
MeshSize {11} = 0.077556;
//+
MeshSize {12} = 0.077556;
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
Save "../msh/cad_270.msh2";
//+
Save "../mesh/cad_270.mesh";
//+
Save "../geo_unrolled/cad_270.geo_unrolled";
