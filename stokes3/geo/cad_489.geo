//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.692358, -4.197698, 0.000000, 35.705899, 8.807717, 1.000000};
//+
MeshSize {1} = 3.666370;
//+
MeshSize {2} = 3.666370;
//+
MeshSize {3} = 0.433467;
//+
MeshSize {4} = 0.433467;
//+
MeshSize {5} = 0.512923;
//+
MeshSize {6} = 0.512923;
//+
MeshSize {7} = 0.433467;
//+
MeshSize {8} = 0.433467;
//+
Cylinder(2) = {34.589193, 1.120268, 0.000000, 0.000000, 0.000000, 1.000000, 1.282583, 2*Pi};
//+
MeshSize {9} = 0.128258;
//+
MeshSize {10} = 0.128258;
//+
Cylinder(3) = {4.277080, 0.265984, 0.000000, 0.000000, 0.000000, 1.000000, 0.595684, 2*Pi};
//+
MeshSize {11} = 0.059568;
//+
MeshSize {12} = 0.059568;
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
