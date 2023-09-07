//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.048919, -3.647645, 0.000000, 36.483850, 7.591803, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {31.192748, 1.267805, 0.000000, 0.000000, 0.000000, 1.000000, 1.338014, 2*Pi};
//+
c0 = 0.1338014435792606;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {22.324801, 1.453934, 0.000000, 0.000000, 0.000000, 1.000000, 1.094969, 2*Pi};
//+
c1 = 0.10949689863047196;
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
