//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.772613, -4.505180, 0.000000, 38.231820, 9.401206, 1.000000};
//+
MeshSize {1} = 0.752140;
//+
MeshSize {2} = 0.752140;
//+
MeshSize {3} = 0.752140;
//+
MeshSize {4} = 0.506453;
//+
MeshSize {5} = 0.506453;
//+
MeshSize {6} = 0.506453;
//+
MeshSize {7} = 3.928666;
//+
MeshSize {8} = 3.928666;
//+
Cylinder(2) = {9.087945, -1.443802, 0.000000, 0.000000, 0.000000, 1.000000, 1.339574, 2*Pi};
//+
MeshSize {9} = 0.133957;
//+
MeshSize {10} = 0.133957;
//+
Cylinder(3) = {4.054473, 0.280292, 0.000000, 0.000000, 0.000000, 1.000000, 0.738168, 2*Pi};
//+
MeshSize {11} = 0.073817;
//+
MeshSize {12} = 0.073817;
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
