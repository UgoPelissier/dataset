//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.693795, -3.667157, 0.000000, 33.806820, 7.556870, 1.000000};
//+
MeshSize {1} = 0.606174;
//+
MeshSize {2} = 0.606174;
//+
MeshSize {3} = 0.590717;
//+
MeshSize {4} = 0.590717;
//+
MeshSize {5} = 2.536789;
//+
MeshSize {6} = 2.536789;
//+
MeshSize {7} = 2.981479;
//+
MeshSize {8} = 2.981479;
//+
Cylinder(2) = {7.210958, 0.287202, 0.000000, 0.000000, 0.000000, 1.000000, 0.703801, 2*Pi};
//+
MeshSize {9} = 0.070380;
//+
MeshSize {10} = 0.070380;
//+
Cylinder(3) = {18.052995, -1.823790, 0.000000, 0.000000, 0.000000, 1.000000, 0.983026, 2*Pi};
//+
MeshSize {11} = 0.098303;
//+
MeshSize {12} = 0.098303;
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
Save "../geo_unrolled/cad_315.geo_unrolled";
