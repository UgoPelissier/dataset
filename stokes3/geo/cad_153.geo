//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.237530, -4.241472, 0.000000, 32.611749, 9.371341, 1.000000};
//+
l = [1.439970687454733, 1.439970687454733, 1.439970687454733, 3.318178207437718, 3.318178207437718, 3.318178207437718, 3.318178207437718, 1.4476820590281407, 1.4476820590281407, 1.4476820590281407];
//+
MeshSize {1} = 1.439971;
//+
MeshSize {2} = 1.439971;
//+
MeshSize {3} = 1.439971;
//+
MeshSize {4} = 3.318178;
//+
MeshSize {5} = 3.318178;
//+
MeshSize {6} = 3.318178;
//+
MeshSize {7} = 3.318178;
//+
MeshSize {8} = 1.447682;
//+
Cylinder(2) = {14.746960, 0.318730, 0.000000, 0.000000, 0.000000, 1.000000, 0.809468, 2*Pi};
//+
c0 = 0.08094678965627897;
//+
MeshSize {9, 10} = c0;
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
