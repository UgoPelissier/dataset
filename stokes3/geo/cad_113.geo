//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.685680, -3.653876, 0.000000, 39.092745, 8.396685, 1.000000};
//+
MeshSize {1} = 3.999936;
//+
MeshSize {2} = 3.999936;
//+
MeshSize {3} = 0.571174;
//+
MeshSize {4} = 0.571174;
//+
MeshSize {5} = 0.571174;
//+
MeshSize {6} = 0.676109;
//+
MeshSize {7} = 0.676109;
//+
MeshSize {8} = 0.676109;
//+
Cylinder(2) = {33.733425, -0.380224, 0.000000, 0.000000, 0.000000, 1.000000, 1.162769, 2*Pi};
//+
MeshSize {9} = 0.116277;
//+
MeshSize {10} = 0.116277;
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
