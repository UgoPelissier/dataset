//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.457046, -3.103287, 0.000000, 36.710833, 7.769414, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {21.884860, 2.114409, 0.000000, 0.000000, 0.000000, 1.000000, 0.950505, 2*Pi};
//+
c0 = 0.09505045969589641;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {18.540403, 0.235913, 0.000000, 0.000000, 0.000000, 1.000000, 0.548572, 2*Pi};
//+
c1 = 0.054857160563190524;
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
