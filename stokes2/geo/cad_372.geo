//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.161246, -2.970565, 0.000000, 30.063214, 7.607861, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {18.115258, 0.483896, 0.000000, 0.518620, 0.518620};
//+
c0 = 0.051862003563723696;
//+
MeshSize {5} = c0;
//+
Disk(3) = {21.747929, 1.230534, 0.000000, 0.783455, 0.783455};
//+
c1 = 0.07834546264056405;
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
