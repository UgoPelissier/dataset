//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.489097, -3.769117, 0.000000, 30.422272, 8.860315, 0.000000};
//+
l = [0.8014815999804585, 0.8014815999804585, 3.1227215940166717, 3.1227215940166717, 3.1227215940166717, 3.1227215940166717, 0.4618496011597244, 0.4618496011597244];
//+
MeshSize {1} = 0.801482;
//+
MeshSize {2} = 0.801482;
//+
MeshSize {3} = 3.122722;
//+
MeshSize {4} = 3.122722;
//+
Disk(2) = {5.714932, 3.415587, 0.000000, 0.869402, 0.869402};
//+
c0 = 0.08694016649319451;
//+
MeshSize {5} = c0;
//+
Disk(3) = {13.779524, -2.097272, 0.000000, 0.965058, 0.965058};
//+
c1 = 0.09650579561546506;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
