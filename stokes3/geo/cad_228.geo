//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.318904, -3.552914, 0.000000, 36.406415, 8.301663, 1.000000};
//+
MeshSize {1} = 0.746534;
//+
MeshSize {2} = 0.746534;
//+
MeshSize {3} = 0.746534;
//+
MeshSize {4} = 3.695915;
//+
MeshSize {5} = 3.695915;
//+
MeshSize {6} = 3.695915;
//+
MeshSize {7} = 3.695915;
//+
MeshSize {8} = 0.953096;
//+
Cylinder(2) = {8.117865, -1.656174, 0.000000, 0.000000, 0.000000, 1.000000, 0.560958, 2*Pi};
//+
MeshSize {9} = 0.056096;
//+
MeshSize {10} = 0.056096;
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
