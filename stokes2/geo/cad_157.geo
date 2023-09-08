//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.905306, -4.785668, 0.000000, 33.469419, 9.866033, 0.000000};
//+
l = [0.7136349197273889, 3.4726883142253224, 3.4726883142253224, 0.7879498878856105];
//+
MeshSize {1} = 0.713635;
//+
MeshSize {2} = 3.472688;
//+
MeshSize {3} = 3.472688;
//+
MeshSize {4} = 0.787950;
//+
Disk(2) = {7.632496, -0.482173, 0.000000, 0.849585, 0.849585};
//+
c0 = 0.0849585078138649;
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
