//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.284175, -4.171667, 0.000000, 31.028596, 9.596294, 0.000000};
//+
l = [0.9180149537633258, 0.9180149537633258, 3.1678255178167043, 1.3577410513495813, 3.1678255178167043, 1.5328934116532178, 0.992446451418013, 0.992446451418013];
//+
MeshSize {1} = 0.918015;
//+
MeshSize {2} = 0.918015;
//+
MeshSize {3} = 3.167826;
//+
MeshSize {4} = 1.357741;
//+
Disk(2) = {10.182954, -0.228826, 0.000000, 1.474982, 1.474982};
//+
c0 = 0.14749815454400947;
//+
MeshSize {5} = c0;
//+
Disk(3) = {16.927188, -2.183978, 0.000000, 0.944845, 0.944845};
//+
c1 = 0.09448449323707439;
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
