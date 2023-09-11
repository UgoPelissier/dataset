//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.435574, -4.083615, 0.000000, 32.248381, 9.629283, 1.000000};
//+
MeshSize {1} = 0.730334;
//+
MeshSize {2} = 0.730334;
//+
MeshSize {3} = 0.730334;
//+
MeshSize {4} = 3.303667;
//+
MeshSize {5} = 3.303667;
//+
MeshSize {6} = 3.303667;
//+
MeshSize {7} = 3.303667;
//+
MeshSize {8} = 0.845068;
//+
Cylinder(2) = {7.970422, -0.339832, 0.000000, 0.000000, 0.000000, 1.000000, 1.110332, 2*Pi};
//+
MeshSize {9} = 0.111033;
//+
MeshSize {10} = 0.111033;
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
