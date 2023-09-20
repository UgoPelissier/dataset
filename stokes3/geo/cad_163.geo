//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.632771, -3.842293, 0.000000, 30.759579, 8.016549, 1.000000};
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
Cylinder(2) = {8.823919, 0.310790, 0.000000, 0.000000, 0.000000, 1.000000, 0.823654, 2*Pi};
//+
MeshSize {9} = 0.082365;
//+
MeshSize {10} = 0.082365;
//+
Cylinder(3) = {22.101902, -1.688820, 0.000000, 0.000000, 0.000000, 1.000000, 0.767343, 2*Pi};
//+
MeshSize {11} = 0.076734;
//+
MeshSize {12} = 0.076734;
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
Save "../geo_unrolled/cad_163.geo_unrolled";
