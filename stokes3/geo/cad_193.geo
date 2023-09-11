//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.938949, -3.631438, 0.000000, 31.051630, 8.772806, 1.000000};
//+
MeshSize {1} = 0.933635;
//+
MeshSize {2} = 0.933635;
//+
MeshSize {3} = 0.933635;
//+
MeshSize {4} = 3.228990;
//+
MeshSize {5} = 3.228990;
//+
MeshSize {6} = 3.228990;
//+
MeshSize {7} = 3.228990;
//+
MeshSize {8} = 1.014439;
//+
Cylinder(2) = {10.654165, -0.230337, 0.000000, 0.000000, 0.000000, 1.000000, 0.956989, 2*Pi};
//+
MeshSize {9} = 0.095699;
//+
MeshSize {10} = 0.095699;
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
