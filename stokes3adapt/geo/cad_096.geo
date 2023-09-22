//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.743308, -4.072517, 0.000000, 33.123140, 9.934309, 1.000000};
//+
MeshSize {1} = 0.404573;
//+
MeshSize {2} = 0.404573;
//+
MeshSize {3} = 0.382034;
//+
MeshSize {4} = 0.382034;
//+
MeshSize {5} = 3.955595;
//+
MeshSize {6} = 3.955595;
//+
MeshSize {7} = 4.345816;
//+
MeshSize {8} = 4.345816;
//+
Cylinder(2) = {16.804641, -0.024603, 0.000000, 0.000000, 0.000000, 1.000000, 1.424310, 2*Pi};
//+
MeshSize {9} = 0.142431;
//+
MeshSize {10} = 0.142431;
//+
Cylinder(3) = {2.672977, 1.017803, 0.000000, 0.000000, 0.000000, 1.000000, 1.322341, 2*Pi};
//+
MeshSize {11} = 0.132234;
//+
MeshSize {12} = 0.132234;
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
Save "../geo_unrolled/cad_096.geo_unrolled";
