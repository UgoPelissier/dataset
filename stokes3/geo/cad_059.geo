//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.620891, -3.896212, 0.000000, 36.588393, 9.147954, 1.000000};
//+
MeshSize {1} = 3.748936;
//+
MeshSize {2} = 3.748936;
//+
MeshSize {3} = 0.646321;
//+
MeshSize {4} = 0.646321;
//+
MeshSize {5} = 3.748936;
//+
MeshSize {6} = 3.748936;
//+
MeshSize {7} = 0.646321;
//+
MeshSize {8} = 0.646321;
//+
Cylinder(2) = {31.193924, 1.173208, 0.000000, 0.000000, 0.000000, 1.000000, 1.403404, 2*Pi};
//+
MeshSize {9} = 0.140340;
//+
MeshSize {10} = 0.140340;
//+
Cylinder(3) = {24.049871, -1.747873, 0.000000, 0.000000, 0.000000, 1.000000, 0.940823, 2*Pi};
//+
MeshSize {11} = 0.094082;
//+
MeshSize {12} = 0.094082;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_059.geo_unrolled";
