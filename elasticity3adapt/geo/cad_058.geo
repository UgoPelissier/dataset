//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.250098, -3.385563, 0.000000, 31.742072, 8.461733, 1.000000};
//+
MeshSize {1} = 1.627079;
//+
MeshSize {2} = 1.627079;
//+
MeshSize {3} = 1.534318;
//+
MeshSize {4} = 1.534318;
//+
MeshSize {5} = 0.790261;
//+
MeshSize {6} = 0.790261;
//+
MeshSize {7} = 0.880192;
//+
MeshSize {8} = 0.880192;
//+
Cylinder(2) = {18.105297, 1.572186, 0.000000, 0.000000, 0.000000, 0.100000, 1.244669, 2*Pi};
//+
MeshSize {9} = 0.124467;
//+
MeshSize {10} = 0.124467;
//+
Cylinder(3) = {19.421327, -1.249621, 0.000000, 0.000000, 0.000000, 0.100000, 1.136618, 2*Pi};
//+
MeshSize {11} = 0.113662;
//+
MeshSize {12} = 0.113662;
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
Save "../msh/cad_058.msh2";
//+
Save "../mesh/cad_058.mesh";
//+
Save "../geo_unrolled/cad_058.geo_unrolled";
