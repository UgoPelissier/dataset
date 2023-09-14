//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.498760, -4.623001, 0.000000, 29.733003, 9.863082, 1.000000};
//+
MeshSize {1} = 3.063135;
//+
MeshSize {2} = 3.063135;
//+
MeshSize {3} = 1.489991;
//+
MeshSize {4} = 1.489991;
//+
MeshSize {5} = 0.612924;
//+
MeshSize {6} = 0.612924;
//+
MeshSize {7} = 0.417537;
//+
MeshSize {8} = 0.417537;
//+
Cylinder(2) = {26.674678, 1.521479, 0.000000, 0.000000, 0.000000, 1.000000, 0.970587, 2*Pi};
//+
MeshSize {9} = 0.097059;
//+
MeshSize {10} = 0.097059;
//+
Cylinder(3) = {16.225108, 3.424190, 0.000000, 0.000000, 0.000000, 1.000000, 0.930928, 2*Pi};
//+
MeshSize {11} = 0.093093;
//+
MeshSize {12} = 0.093093;
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
Save "../geo_unrolled/cad_110.geo_unrolled";
