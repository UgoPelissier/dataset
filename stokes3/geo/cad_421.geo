//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.491480, -4.224830, 0.000000, 36.665752, 8.718637, 1.000000};
//+
MeshSize {1} = 0.561023;
//+
MeshSize {2} = 0.561023;
//+
MeshSize {3} = 0.348463;
//+
MeshSize {4} = 0.348463;
//+
MeshSize {5} = 1.168252;
//+
MeshSize {6} = 1.168252;
//+
MeshSize {7} = 1.133681;
//+
MeshSize {8} = 1.133681;
//+
Cylinder(2) = {4.064332, 1.525976, 0.000000, 0.000000, 0.000000, 1.000000, 1.160079, 2*Pi};
//+
MeshSize {9} = 0.116008;
//+
MeshSize {10} = 0.116008;
//+
Cylinder(3) = {25.466607, 0.629575, 0.000000, 0.000000, 0.000000, 1.000000, 0.975911, 2*Pi};
//+
MeshSize {11} = 0.097591;
//+
MeshSize {12} = 0.097591;
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
Save "../geo_unrolled/cad_421.geo_unrolled";
