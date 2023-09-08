//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.419127, -3.526337, 0.000000, 31.126102, 8.537211, 0.000000};
//+
l = [0.3464115317879637, 3.1832726374870735, 3.1832726374870735, 0.48662309235670514];
//+
MeshSize {1} = 0.346412;
//+
MeshSize {2} = 3.183273;
//+
MeshSize {3} = 3.183273;
//+
MeshSize {4} = 0.486623;
//+
Disk(2) = {3.123660, -0.090947, 0.000000, 0.908116, 0.908116};
//+
c0 = 0.09081158856977006;
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
