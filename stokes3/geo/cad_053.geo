//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.351759, -4.188313, 0.000000, 38.182721, 9.883576, 1.000000};
//+
MeshSize {1} = 1.608574;
//+
MeshSize {2} = 1.608574;
//+
MeshSize {3} = 1.608574;
//+
MeshSize {4} = 3.885006;
//+
MeshSize {5} = 3.885006;
//+
MeshSize {6} = 3.885006;
//+
MeshSize {7} = 3.885006;
//+
MeshSize {8} = 1.507955;
//+
Cylinder(2) = {16.146767, 2.446340, 0.000000, 0.000000, 0.000000, 1.000000, 1.046132, 2*Pi};
//+
MeshSize {9} = 0.104613;
//+
MeshSize {10} = 0.104613;
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
