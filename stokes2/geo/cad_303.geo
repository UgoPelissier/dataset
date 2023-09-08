//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.917896, -4.444708, 0.000000, 30.386999, 9.292344, 0.000000};
//+
l = [3.1647802359032795, 3.1647802359032795, 0.7232093967446256, 0.7232093967446256, 0.22065808711119553, 0.22065808711119553, 3.1647802359032795, 3.1647802359032795];
//+
MeshSize {1} = 3.164780;
//+
MeshSize {2} = 3.164780;
//+
MeshSize {3} = 0.723209;
//+
MeshSize {4} = 0.723209;
//+
Disk(2) = {28.762336, 3.199206, 0.000000, 0.823589, 0.823589};
//+
c0 = 0.08235888113048373;
//+
MeshSize {5} = c0;
//+
Disk(3) = {18.437023, -3.016744, 0.000000, 0.806823, 0.806823};
//+
c1 = 0.08068232292979581;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
