//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.772613, -4.505180, 0.000000, 38.231820, 9.401206, 0.000000};
//+
l = [0.7521395110946738, 0.5064534138207443, 3.928665750531561, 3.928665750531561, 3.928665750531561, 3.928665750531561, 0.9116914526884822, 0.49253641750955846];
//+
MeshSize {1} = 0.752140;
//+
MeshSize {2} = 0.506453;
//+
MeshSize {3} = 3.928666;
//+
MeshSize {4} = 3.928666;
//+
Disk(2) = {9.087945, -1.443802, 0.000000, 1.339574, 1.339574};
//+
c0 = 0.1339574006896174;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.054473, 0.280292, 0.000000, 0.738168, 0.738168};
//+
c1 = 0.07381675945208657;
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
