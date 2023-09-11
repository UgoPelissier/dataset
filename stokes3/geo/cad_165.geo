//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.695389, -3.197140, 0.000000, 37.419588, 7.657751, 1.000000};
//+
MeshSize {1} = 3.830681;
//+
MeshSize {2} = 3.830681;
//+
MeshSize {3} = 0.820788;
//+
MeshSize {4} = 0.820788;
//+
MeshSize {5} = 0.820788;
//+
MeshSize {6} = 0.898729;
//+
MeshSize {7} = 0.898729;
//+
MeshSize {8} = 0.898729;
//+
Cylinder(2) = {29.584479, -0.324079, 0.000000, 0.000000, 0.000000, 1.000000, 0.793443, 2*Pi};
//+
MeshSize {9} = 0.079344;
//+
MeshSize {10} = 0.079344;
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
