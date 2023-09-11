//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.677139, -3.890537, 0.000000, 39.161865, 8.109782, 1.000000};
//+
MeshSize {1} = 4.004483;
//+
MeshSize {2} = 4.004483;
//+
MeshSize {3} = 0.742275;
//+
MeshSize {4} = 0.742275;
//+
MeshSize {5} = 0.742275;
//+
MeshSize {6} = 0.147883;
//+
MeshSize {7} = 0.147883;
//+
MeshSize {8} = 0.147883;
//+
Cylinder(2) = {38.184197, -2.174593, 0.000000, 0.000000, 0.000000, 1.000000, 0.905047, 2*Pi};
//+
MeshSize {9} = 0.090505;
//+
MeshSize {10} = 0.090505;
//+
Cylinder(3) = {7.348375, 1.139253, 0.000000, 0.000000, 0.000000, 1.000000, 0.932134, 2*Pi};
//+
MeshSize {11} = 0.093213;
//+
MeshSize {12} = 0.093213;
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
