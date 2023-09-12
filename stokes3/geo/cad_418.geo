//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.101722, -2.905598, 0.000000, 39.676811, 7.661776, 1.000000};
//+
MeshSize {1} = 3.996258;
//+
MeshSize {2} = 3.996258;
//+
MeshSize {3} = 1.335294;
//+
MeshSize {4} = 1.335294;
//+
MeshSize {5} = 1.145091;
//+
MeshSize {6} = 1.145091;
//+
MeshSize {7} = 1.335294;
//+
MeshSize {8} = 1.335294;
//+
Cylinder(2) = {25.610660, -0.764373, 0.000000, 0.000000, 0.000000, 1.000000, 0.975826, 2*Pi};
//+
MeshSize {9} = 0.097583;
//+
MeshSize {10} = 0.097583;
//+
Cylinder(3) = {11.093860, 2.053353, 0.000000, 0.000000, 0.000000, 1.000000, 0.608037, 2*Pi};
//+
MeshSize {11} = 0.060804;
//+
MeshSize {12} = 0.060804;
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
Save "../geo_unrolled/cad_418.geo_unrolled";
