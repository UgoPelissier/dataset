//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.884552, -3.939448, 0.000000, 32.902574, 8.865060, 1.000000};
//+
MeshSize {1} = 0.317287;
//+
MeshSize {2} = 0.317287;
//+
MeshSize {3} = 0.434120;
//+
MeshSize {4} = 0.434120;
//+
MeshSize {5} = 1.239159;
//+
MeshSize {6} = 1.239159;
//+
MeshSize {7} = 1.157410;
//+
MeshSize {8} = 1.157410;
//+
Cylinder(2) = {3.426979, -0.181829, 0.000000, 0.000000, 0.000000, 1.000000, 1.364051, 2*Pi};
//+
MeshSize {9} = 0.136405;
//+
MeshSize {10} = 0.136405;
//+
Cylinder(3) = {21.994390, 1.659188, 0.000000, 0.000000, 0.000000, 1.000000, 0.662657, 2*Pi};
//+
MeshSize {11} = 0.066266;
//+
MeshSize {12} = 0.066266;
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
Save "../geo_unrolled/cad_198.geo_unrolled";
