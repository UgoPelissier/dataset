//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.785382, -4.402565, 0.000000, 29.247692, 9.885388, 1.000000};
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
Cylinder(2) = {24.566353, -0.177281, 0.000000, 0.000000, 0.000000, 1.000000, 1.067244, 2*Pi};
//+
MeshSize {9} = 0.106724;
//+
MeshSize {10} = 0.106724;
//+
Cylinder(3) = {28.082191, -1.394647, 0.000000, 0.000000, 0.000000, 1.000000, 1.181836, 2*Pi};
//+
MeshSize {11} = 0.118184;
//+
MeshSize {12} = 0.118184;
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
Save "../geo_unrolled/cad_374.geo_unrolled";
