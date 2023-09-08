//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.161246, -2.970565, 0.000000, 30.063214, 7.607861, 0.000000};
//+
l = [3.0462893689721877, 3.0462893689721877, 1.207368282395977, 0.867703281145899, 1.228307979263934, 0.835205907979141, 3.0462893689721877, 3.0462893689721877];
//+
MeshSize {1} = 3.046289;
//+
MeshSize {2} = 3.046289;
//+
MeshSize {3} = 1.207368;
//+
MeshSize {4} = 0.867703;
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
