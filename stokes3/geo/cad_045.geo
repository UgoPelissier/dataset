//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.826631, -4.063105, 0.000000, 30.832597, 8.269030, 1.000000};
//+
MeshSize {1} = 0.522642;
//+
MeshSize {2} = 0.522642;
//+
MeshSize {3} = 0.288364;
//+
MeshSize {4} = 0.288364;
//+
MeshSize {5} = 0.841217;
//+
MeshSize {6} = 0.841217;
//+
MeshSize {7} = 0.795044;
//+
MeshSize {8} = 0.795044;
//+
Cylinder(2) = {23.711423, 0.572275, 0.000000, 0.000000, 0.000000, 1.000000, 0.788611, 2*Pi};
//+
MeshSize {9} = 0.078861;
//+
MeshSize {10} = 0.078861;
//+
Cylinder(3) = {3.936941, 1.560184, 0.000000, 0.000000, 0.000000, 1.000000, 1.199734, 2*Pi};
//+
MeshSize {11} = 0.119973;
//+
MeshSize {12} = 0.119973;
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
Save "../geo_unrolled/cad_045.geo_unrolled";
