//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.134546, -3.714196, 0.000000, 32.609640, 8.817632, 1.000000};
//+
MeshSize {1} = 0.556507;
//+
MeshSize {2} = 0.556507;
//+
MeshSize {3} = 0.349023;
//+
MeshSize {4} = 0.349023;
//+
MeshSize {5} = 1.537659;
//+
MeshSize {6} = 1.537659;
//+
MeshSize {7} = 1.481508;
//+
MeshSize {8} = 1.481508;
//+
Cylinder(2) = {17.179113, 1.726752, 0.000000, 0.000000, 0.000000, 1.000000, 1.112054, 2*Pi};
//+
MeshSize {9} = 0.111205;
//+
MeshSize {10} = 0.111205;
//+
Cylinder(3) = {3.579013, 2.025662, 0.000000, 0.000000, 0.000000, 1.000000, 1.128979, 2*Pi};
//+
MeshSize {11} = 0.112898;
//+
MeshSize {12} = 0.112898;
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
Save "../geo_unrolled/cad_335.geo_unrolled";
