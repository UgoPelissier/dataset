//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.085749, -4.384925, 0.000000, 39.842010, 9.668256, 0.000000};
//+
l = [0.9031335542540866, 0.9031335542540866, 4.021933205992979, 1.04197387368227, 4.021933205992979, 0.7804765563344147, 0.5940851145572973, 0.5940851145572973];
//+
MeshSize {1} = 0.903134;
//+
MeshSize {2} = 0.903134;
//+
MeshSize {3} = 4.021933;
//+
MeshSize {4} = 1.041974;
//+
Disk(2) = {6.810349, 3.194040, 0.000000, 1.100839, 1.100839};
//+
c0 = 0.11008387144112;
//+
MeshSize {5} = c0;
//+
Disk(3) = {31.727238, 3.098223, 0.000000, 0.681884, 0.681884};
//+
c1 = 0.06818841518700997;
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
