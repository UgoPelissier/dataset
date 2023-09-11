//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.124354, -4.239667, 0.000000, 36.872983, 9.856691, 1.000000};
//+
MeshSize {1} = 1.828004;
//+
MeshSize {2} = 1.828004;
//+
MeshSize {3} = 3.732414;
//+
MeshSize {4} = 3.732414;
//+
MeshSize {5} = 1.836724;
//+
MeshSize {6} = 1.836724;
//+
MeshSize {7} = 3.732414;
//+
MeshSize {8} = 3.732414;
//+
Cylinder(2) = {18.516138, -0.061159, 0.000000, 0.000000, 0.000000, 1.000000, 0.580442, 2*Pi};
//+
MeshSize {9} = 0.058044;
//+
MeshSize {10} = 0.058044;
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
