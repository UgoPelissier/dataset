//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.620891, -3.896212, 0.000000, 36.588393, 9.147954, 1.000000};
//+
MeshSize {1} = 3.697603;
//+
MeshSize {2} = 3.697603;
//+
MeshSize {3} = 4.170734;
//+
MeshSize {4} = 4.170734;
//+
MeshSize {5} = 0.442494;
//+
MeshSize {6} = 0.442494;
//+
MeshSize {7} = 0.401488;
//+
MeshSize {8} = 0.401488;
//+
Cylinder(2) = {31.193924, 1.173208, 0.000000, 0.000000, 0.000000, 0.100000, 1.403404, 2*Pi};
//+
MeshSize {9} = 0.140340;
//+
MeshSize {10} = 0.140340;
//+
Cylinder(3) = {24.049871, -1.747873, 0.000000, 0.000000, 0.000000, 0.100000, 0.940823, 2*Pi};
//+
MeshSize {11} = 0.094082;
//+
MeshSize {12} = 0.094082;
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
Save "../msh/cad_059.msh2";
//+
Save "../mesh/cad_059.mesh";
//+
Save "../geo_unrolled/cad_059.geo_unrolled";
