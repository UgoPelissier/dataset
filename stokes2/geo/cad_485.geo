//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.533940, -4.160542, 0.000000, 33.959133, 9.989584, 0.000000};
//+
l = [3.4852833700699204, 3.4852833700699204, 1.0892740244238917, 0.7360332940607321, 1.1886410965263583, 0.8811387509831768, 3.4852833700699204, 3.4852833700699204];
//+
MeshSize {1} = 3.485283;
//+
MeshSize {2} = 3.485283;
//+
MeshSize {3} = 1.089274;
//+
MeshSize {4} = 0.736033;
//+
Disk(2) = {23.017794, -0.415863, 0.000000, 1.178078, 1.178078};
//+
c0 = 0.11780778234466914;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.377052, -0.437698, 0.000000, 0.670689, 0.670689};
//+
c1 = 0.06706893878828894;
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
