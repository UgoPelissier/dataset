//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.332217, -3.541735, 0.000000, 37.708547, 8.323854, 1.000000};
//+
MeshSize {1} = 1.249096;
//+
MeshSize {2} = 1.249096;
//+
MeshSize {3} = 1.103498;
//+
MeshSize {4} = 1.103498;
//+
MeshSize {5} = 1.249096;
//+
MeshSize {6} = 1.249096;
//+
MeshSize {7} = 3.826776;
//+
MeshSize {8} = 3.826776;
//+
Cylinder(2) = {12.733622, 2.625972, 0.000000, 0.000000, 0.000000, 1.000000, 1.359508, 2*Pi};
//+
MeshSize {9} = 0.135951;
//+
MeshSize {10} = 0.135951;
//+
Cylinder(3) = {26.436725, -0.074854, 0.000000, 0.000000, 0.000000, 1.000000, 1.075879, 2*Pi};
//+
MeshSize {11} = 0.107588;
//+
MeshSize {12} = 0.107588;
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
Save "../geo_unrolled/cad_254.geo_unrolled";
