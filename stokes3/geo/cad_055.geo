//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.316661, -4.121761, 0.000000, 37.277357, 9.680958, 1.000000};
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
Cylinder(2) = {32.803759, -0.545246, 0.000000, 0.000000, 0.000000, 1.000000, 1.194001, 2*Pi};
//+
MeshSize {9} = 0.119400;
//+
MeshSize {10} = 0.119400;
//+
Cylinder(3) = {11.028873, -1.211658, 0.000000, 0.000000, 0.000000, 1.000000, 0.645570, 2*Pi};
//+
MeshSize {11} = 0.064557;
//+
MeshSize {12} = 0.064557;
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
Save "../geo_unrolled/cad_055.geo_unrolled";
