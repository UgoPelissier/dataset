//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.929084, -3.146059, 0.000000, 31.745393, 7.951040, 1.000000};
//+
MeshSize {1} = 3.291544;
//+
MeshSize {2} = 3.291544;
//+
MeshSize {3} = 3.291544;
//+
MeshSize {4} = 3.291544;
//+
MeshSize {5} = 0.900969;
//+
MeshSize {6} = 0.900969;
//+
MeshSize {7} = 1.075133;
//+
MeshSize {8} = 1.075133;
//+
Cylinder(2) = {22.960315, -1.518770, 0.000000, 0.000000, 0.000000, 1.000000, 0.839825, 2*Pi};
//+
MeshSize {9} = 0.083982;
//+
MeshSize {10} = 0.083982;
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
