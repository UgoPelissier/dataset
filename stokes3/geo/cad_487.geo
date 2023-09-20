//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.632207, -3.221697, 0.000000, 34.471077, 7.613712, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {25.947749, 0.480285, 0.000000, 0.000000, 0.000000, 1.000000, 0.800638, 2*Pi};
//+
MeshSize {9} = 0.080064;
//+
MeshSize {10} = 0.080064;
//+
Cylinder(3) = {19.534243, -1.679141, 0.000000, 0.000000, 0.000000, 1.000000, 0.931962, 2*Pi};
//+
MeshSize {11} = 0.093196;
//+
MeshSize {12} = 0.093196;
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
Save "../geo_unrolled/cad_487.geo_unrolled";
