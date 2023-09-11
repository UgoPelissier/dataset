//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.231433, -3.674997, 0.000000, 29.859981, 8.764332, 1.000000};
//+
MeshSize {1} = 1.079712;
//+
MeshSize {2} = 1.079712;
//+
MeshSize {3} = 1.079712;
//+
MeshSize {4} = 3.040882;
//+
MeshSize {5} = 3.040882;
//+
MeshSize {6} = 3.040882;
//+
MeshSize {7} = 3.040882;
//+
MeshSize {8} = 1.055619;
//+
Cylinder(2) = {11.230137, 1.032747, 0.000000, 0.000000, 0.000000, 1.000000, 1.166755, 2*Pi};
//+
MeshSize {9} = 0.116675;
//+
MeshSize {10} = 0.116675;
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
