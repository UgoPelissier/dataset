//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.729076, -3.199658, 0.000000, 39.112576, 7.746045, 0.000000};
//+
l = [1.4074634755673259, 4.002945846728144, 4.002945846728144, 1.5008895022403206];
//+
MeshSize {1} = 1.407463;
//+
MeshSize {2} = 4.002946;
//+
MeshSize {3} = 4.002946;
//+
MeshSize {4} = 1.500890;
//+
Disk(2) = {16.041097, -1.244769, 0.000000, 1.361673, 1.361673};
//+
c0 = 0.13616725363527912;
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
