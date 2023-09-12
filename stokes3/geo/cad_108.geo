//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.734200, -3.052680, 0.000000, 39.019542, 7.826915, 1.000000};
//+
MeshSize {1} = 1.361661;
//+
MeshSize {2} = 1.361661;
//+
MeshSize {3} = 3.994590;
//+
MeshSize {4} = 3.994590;
//+
MeshSize {5} = 0.253487;
//+
MeshSize {6} = 0.253487;
//+
MeshSize {7} = 3.994590;
//+
MeshSize {8} = 3.994590;
//+
Cylinder(2) = {14.730359, 0.482539, 0.000000, 0.000000, 0.000000, 1.000000, 0.819116, 2*Pi};
//+
MeshSize {9} = 0.081912;
//+
MeshSize {10} = 0.081912;
//+
Cylinder(3) = {3.848625, -1.641993, 0.000000, 0.000000, 0.000000, 1.000000, 0.884150, 2*Pi};
//+
MeshSize {11} = 0.088415;
//+
MeshSize {12} = 0.088415;
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
Save "../geo_unrolled/cad_108.geo_unrolled";
