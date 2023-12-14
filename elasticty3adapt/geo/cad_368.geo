//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.654343, -4.295210, 0.000000, 37.077167, 9.372727, 1.000000};
//+
MeshSize {1} = 1.444540;
//+
MeshSize {2} = 1.444540;
//+
MeshSize {3} = 1.131965;
//+
MeshSize {4} = 1.131965;
//+
MeshSize {5} = 0.930104;
//+
MeshSize {6} = 0.930104;
//+
MeshSize {7} = 0.897283;
//+
MeshSize {8} = 0.897283;
//+
Cylinder(2) = {27.706756, 0.831589, 0.000000, 0.000000, 0.000000, 0.100000, 0.694926, 2*Pi};
//+
MeshSize {9} = 0.069493;
//+
MeshSize {10} = 0.069493;
//+
Cylinder(3) = {12.730861, 1.783427, 0.000000, 0.000000, 0.000000, 0.100000, 0.679917, 2*Pi};
//+
MeshSize {11} = 0.067992;
//+
MeshSize {12} = 0.067992;
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
Save "../msh/cad_368.msh2";
//+
Save "../mesh/cad_368.mesh";
//+
Save "../geo_unrolled/cad_368.geo_unrolled";
