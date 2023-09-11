//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.806200, -3.730802, 0.000000, 37.811443, 7.605756, 1.000000};
//+
MeshSize {1} = 3.880444;
//+
MeshSize {2} = 3.880444;
//+
MeshSize {3} = 1.572581;
//+
MeshSize {4} = 1.572581;
//+
MeshSize {5} = 1.572581;
//+
MeshSize {6} = 1.550604;
//+
MeshSize {7} = 1.550604;
//+
MeshSize {8} = 1.550604;
//+
Cylinder(2) = {22.234462, 0.558260, 0.000000, 0.000000, 0.000000, 1.000000, 1.209499, 2*Pi};
//+
MeshSize {9} = 0.120950;
//+
MeshSize {10} = 0.120950;
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
