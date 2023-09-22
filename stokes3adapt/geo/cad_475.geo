//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.498827, -4.490372, 0.000000, 33.901972, 9.827589, 1.000000};
//+
MeshSize {1} = 0.182641;
//+
MeshSize {2} = 0.182641;
//+
MeshSize {3} = 0.234687;
//+
MeshSize {4} = 0.234687;
//+
MeshSize {5} = 5.901940;
//+
MeshSize {6} = 5.901940;
//+
MeshSize {7} = 5.597135;
//+
MeshSize {8} = 5.597135;
//+
Cylinder(2) = {4.450954, 2.009985, 0.000000, 0.000000, 0.000000, 1.000000, 1.363272, 2*Pi};
//+
MeshSize {9} = 0.136327;
//+
MeshSize {10} = 0.136327;
//+
Cylinder(3) = {4.061295, -2.824031, 0.000000, 0.000000, 0.000000, 1.000000, 0.973356, 2*Pi};
//+
MeshSize {11} = 0.097336;
//+
MeshSize {12} = 0.097336;
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
Save "../geo_unrolled/cad_475.geo_unrolled";
