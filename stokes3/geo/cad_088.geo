//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.921868, -4.321793, 0.000000, 37.871394, 9.660067, 1.000000};
//+
MeshSize {1} = 1.119607;
//+
MeshSize {2} = 1.119607;
//+
MeshSize {3} = 0.920291;
//+
MeshSize {4} = 0.920291;
//+
MeshSize {5} = 3.909279;
//+
MeshSize {6} = 3.909279;
//+
MeshSize {7} = 3.909279;
//+
MeshSize {8} = 3.909279;
//+
Cylinder(2) = {10.716538, 2.801479, 0.000000, 0.000000, 0.000000, 1.000000, 0.914942, 2*Pi};
//+
MeshSize {9} = 0.091494;
//+
MeshSize {10} = 0.091494;
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
