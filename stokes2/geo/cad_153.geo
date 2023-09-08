//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.237530, -4.241472, 0.000000, 32.611749, 9.371341, 0.000000};
//+
l = [1.439970687454733, 3.318178207437718, 3.318178207437718, 1.4476820590281407];
//+
MeshSize {1} = 1.439971;
//+
MeshSize {2} = 3.318178;
//+
MeshSize {3} = 3.318178;
//+
MeshSize {4} = 1.447682;
//+
Disk(2) = {14.746960, 0.318730, 0.000000, 0.809468, 0.809468};
//+
c0 = 0.08094678965627897;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
