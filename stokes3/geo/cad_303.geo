//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.917896, -4.444708, 0.000000, 30.386999, 9.292344, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {28.762336, 3.199206, 0.000000, 0.000000, 0.000000, 1.000000, 0.823589, 2*Pi};
//+
c0 = 0.08235888113048373;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {18.437023, -3.016744, 0.000000, 0.000000, 0.000000, 1.000000, 0.806823, 2*Pi};
//+
c1 = 0.08068232292979581;
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
