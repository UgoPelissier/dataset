//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.489097, -3.769117, 0.000000, 30.422272, 8.860315, 1.000000};
//+
MeshSize {1} = 0.689516;
//+
MeshSize {2} = 0.689516;
//+
MeshSize {3} = 0.397330;
//+
MeshSize {4} = 0.397330;
//+
MeshSize {5} = 2.731281;
//+
MeshSize {6} = 2.731281;
//+
MeshSize {7} = 3.479468;
//+
MeshSize {8} = 3.479468;
//+
Cylinder(2) = {5.714932, 3.415587, 0.000000, 0.000000, 0.000000, 1.000000, 0.869402, 2*Pi};
//+
MeshSize {9} = 0.086940;
//+
MeshSize {10} = 0.086940;
//+
Cylinder(3) = {13.779524, -2.097272, 0.000000, 0.000000, 0.000000, 1.000000, 0.965058, 2*Pi};
//+
MeshSize {11} = 0.096506;
//+
MeshSize {12} = 0.096506;
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
Save "../geo_unrolled/cad_203.geo_unrolled";
