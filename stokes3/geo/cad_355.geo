//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.537036, -3.924747, 0.000000, 31.674945, 8.033385, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {10.690625, -1.118265, 0.000000, 0.000000, 0.000000, 1.000000, 0.718445, 2*Pi};
//+
c0 = 0.07184452857845147;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {24.244531, 0.245009, 0.000000, 0.000000, 0.000000, 1.000000, 1.496631, 2*Pi};
//+
c1 = 0.14966310826043389;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
