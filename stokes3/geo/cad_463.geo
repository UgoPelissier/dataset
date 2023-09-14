//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.799755, -3.258540, 0.000000, 35.418669, 8.206143, 1.000000};
//+
MeshSize {1} = 0.703522;
//+
MeshSize {2} = 0.703522;
//+
MeshSize {3} = 0.701019;
//+
MeshSize {4} = 0.701019;
//+
MeshSize {5} = 0.956440;
//+
MeshSize {6} = 0.956440;
//+
MeshSize {7} = 0.913147;
//+
MeshSize {8} = 0.913147;
//+
Cylinder(2) = {27.136810, 1.370889, 0.000000, 0.000000, 0.000000, 1.000000, 0.629097, 2*Pi};
//+
MeshSize {9} = 0.062910;
//+
MeshSize {10} = 0.062910;
//+
Cylinder(3) = {7.225004, 0.867791, 0.000000, 0.000000, 0.000000, 1.000000, 0.600904, 2*Pi};
//+
MeshSize {11} = 0.060090;
//+
MeshSize {12} = 0.060090;
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
Save "../geo_unrolled/cad_463.geo_unrolled";
