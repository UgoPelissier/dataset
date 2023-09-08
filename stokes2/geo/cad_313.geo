//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.757189, -4.792327, 0.000000, 39.086491, 9.930412, 0.000000};
//+
l = [4.015186296757643, 1.4356275533795222, 1.6164783579586695, 1.6164783579586695, 1.4205917009129587, 1.4205917009129587, 4.015186296757643, 1.5116995264161346];
//+
MeshSize {1} = 4.015186;
//+
MeshSize {2} = 1.435628;
//+
MeshSize {3} = 1.616478;
//+
MeshSize {4} = 1.616478;
//+
Disk(2) = {24.991000, 3.317831, 0.000000, 0.757886, 0.757886};
//+
c0 = 0.07578863599877766;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.463298, -1.019307, 0.000000, 0.826127, 0.826127};
//+
c1 = 0.08261268053697361;
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
