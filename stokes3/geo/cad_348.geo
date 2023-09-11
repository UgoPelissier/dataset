//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.570638, -4.017679, 0.000000, 33.604141, 9.369672, 1.000000};
//+
MeshSize {1} = 3.449439;
//+
MeshSize {2} = 3.449439;
//+
MeshSize {3} = 3.449439;
//+
MeshSize {4} = 3.449439;
//+
MeshSize {5} = 0.443451;
//+
MeshSize {6} = 0.443451;
//+
MeshSize {7} = 0.443451;
//+
MeshSize {8} = 0.443451;
//+
Cylinder(2) = {28.754294, -2.005785, 0.000000, 0.000000, 0.000000, 1.000000, 1.347301, 2*Pi};
//+
MeshSize {9} = 0.134730;
//+
MeshSize {10} = 0.134730;
//+
Cylinder(3) = {27.623637, 0.212973, 0.000000, 0.000000, 0.000000, 1.000000, 0.525272, 2*Pi};
//+
MeshSize {11} = 0.052527;
//+
MeshSize {12} = 0.052527;
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
