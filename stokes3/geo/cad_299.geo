//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.437500, -3.692505, 0.000000, 36.532878, 7.974440, 1.000000};
//+
MeshSize {1} = 0.568848;
//+
MeshSize {2} = 0.568848;
//+
MeshSize {3} = 0.725132;
//+
MeshSize {4} = 0.725132;
//+
MeshSize {5} = 3.718477;
//+
MeshSize {6} = 3.718477;
//+
MeshSize {7} = 3.718477;
//+
MeshSize {8} = 3.718477;
//+
Cylinder(2) = {6.899661, -1.214789, 0.000000, 0.000000, 0.000000, 1.000000, 1.232402, 2*Pi};
//+
MeshSize {9} = 0.123240;
//+
MeshSize {10} = 0.123240;
//+
Cylinder(3) = {10.931130, -1.887157, 0.000000, 0.000000, 0.000000, 1.000000, 0.867113, 2*Pi};
//+
MeshSize {11} = 0.086711;
//+
MeshSize {12} = 0.086711;
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
Save "../geo_unrolled/cad_299.geo_unrolled";
