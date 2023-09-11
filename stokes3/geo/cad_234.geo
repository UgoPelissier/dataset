//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.957020, -4.937263, 0.000000, 38.414578, 9.905194, 1.000000};
//+
MeshSize {1} = 0.976061;
//+
MeshSize {2} = 0.976061;
//+
MeshSize {3} = 0.874727;
//+
MeshSize {4} = 0.874727;
//+
MeshSize {5} = 3.968187;
//+
MeshSize {6} = 3.968187;
//+
MeshSize {7} = 3.968187;
//+
MeshSize {8} = 3.968187;
//+
Cylinder(2) = {9.551281, 1.034117, 0.000000, 0.000000, 0.000000, 1.000000, 0.704513, 2*Pi};
//+
MeshSize {9} = 0.070451;
//+
MeshSize {10} = 0.070451;
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
