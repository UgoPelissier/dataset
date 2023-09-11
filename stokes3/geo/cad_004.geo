//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.729732, -3.686940, 0.000000, 39.001426, 8.446336, 1.000000};
//+
MeshSize {1} = 3.995498;
//+
MeshSize {2} = 3.995498;
//+
MeshSize {3} = 1.781868;
//+
MeshSize {4} = 1.781868;
//+
MeshSize {5} = 1.781868;
//+
MeshSize {6} = 1.678891;
//+
MeshSize {7} = 1.678891;
//+
MeshSize {8} = 1.678891;
//+
Cylinder(2) = {21.933213, 2.782262, 0.000000, 0.000000, 0.000000, 1.000000, 1.118520, 2*Pi};
//+
MeshSize {9} = 0.111852;
//+
MeshSize {10} = 0.111852;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
