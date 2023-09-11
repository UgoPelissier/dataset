//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.419127, -3.526337, 0.000000, 31.126102, 8.537211, 1.000000};
//+
l = [0.3464115317879637, 0.3464115317879637, 0.3464115317879637, 3.1832726374870735, 3.1832726374870735, 3.1832726374870735, 3.1832726374870735, 0.48662309235670514, 0.48662309235670514, 0.48662309235670514];
//+
MeshSize {1} = 0.346412;
//+
MeshSize {2} = 0.346412;
//+
MeshSize {3} = 0.346412;
//+
MeshSize {4} = 3.183273;
//+
MeshSize {5} = 3.183273;
//+
MeshSize {6} = 3.183273;
//+
MeshSize {7} = 3.183273;
//+
MeshSize {8} = 0.486623;
//+
Cylinder(2) = {3.123660, -0.090947, 0.000000, 0.000000, 0.000000, 1.000000, 0.908116, 2*Pi};
//+
c0 = 0.09081158856977006;
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
