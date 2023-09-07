//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.161246, -2.970565, 0.000000, 30.063214, 7.607861, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {18.115258, 0.483896, 0.000000, 0.000000, 0.000000, 1.000000, 0.518620, 2*Pi};
//+
c0 = 0.051862003563723696;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {21.747929, 1.230534, 0.000000, 0.000000, 0.000000, 1.000000, 0.783455, 2*Pi};
//+
c1 = 0.07834546264056405;
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
