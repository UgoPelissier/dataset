//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.089461, -4.079764, 0.000000, 35.262062, 9.307794, 1.000000};
//+
MeshSize {1} = 3.565654;
//+
MeshSize {2} = 3.565654;
//+
MeshSize {3} = 3.565654;
//+
MeshSize {4} = 3.565654;
//+
MeshSize {5} = 0.756109;
//+
MeshSize {6} = 0.756109;
//+
MeshSize {7} = 0.195584;
//+
MeshSize {8} = 0.195584;
//+
Cylinder(2) = {33.112689, 3.846257, 0.000000, 0.000000, 0.000000, 1.000000, 0.675065, 2*Pi};
//+
MeshSize {9} = 0.067506;
//+
MeshSize {10} = 0.067506;
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
