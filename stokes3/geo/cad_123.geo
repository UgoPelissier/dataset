//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.323602, -3.796354, 0.000000, 32.284251, 8.088803, 1.000000};
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
Cylinder(2) = {10.004296, -0.765066, 0.000000, 0.000000, 0.000000, 1.000000, 1.002520, 2*Pi};
//+
MeshSize {9} = 0.100252;
//+
MeshSize {10} = 0.100252;
//+
Cylinder(3) = {29.187888, 1.646533, 0.000000, 0.000000, 0.000000, 1.000000, 0.810978, 2*Pi};
//+
MeshSize {11} = 0.081098;
//+
MeshSize {12} = 0.081098;
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
Save "../geo_unrolled/cad_123.geo_unrolled";
