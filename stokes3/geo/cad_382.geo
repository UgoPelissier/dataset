//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.361901, -3.262967, 0.000000, 35.035327, 8.048190, 1.000000};
//+
MeshSize {1} = 3.562523;
//+
MeshSize {2} = 3.562523;
//+
MeshSize {3} = 0.853756;
//+
MeshSize {4} = 0.853756;
//+
MeshSize {5} = 0.742360;
//+
MeshSize {6} = 0.742360;
//+
MeshSize {7} = 0.853756;
//+
MeshSize {8} = 0.853756;
//+
Cylinder(2) = {27.267592, 1.282295, 0.000000, 0.000000, 0.000000, 1.000000, 0.776427, 2*Pi};
//+
MeshSize {9} = 0.077643;
//+
MeshSize {10} = 0.077643;
//+
Cylinder(3) = {6.857115, 2.387198, 0.000000, 0.000000, 0.000000, 1.000000, 1.185244, 2*Pi};
//+
MeshSize {11} = 0.118524;
//+
MeshSize {12} = 0.118524;
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
Save "../geo_unrolled/cad_382.geo_unrolled";
