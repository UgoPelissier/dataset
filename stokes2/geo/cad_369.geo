//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.487642, -3.740649, 0.000000, 33.206710, 7.607021, 0.000000};
//+
l = [1.5162671355499624, 0.8649891158526337, 3.3908347636018505, 3.3908347636018505, 3.3908347636018505, 3.3908347636018505, 1.535896244892069, 0.8423167741093702];
//+
MeshSize {1} = 1.516267;
//+
MeshSize {2} = 0.864989;
//+
MeshSize {3} = 3.390835;
//+
MeshSize {4} = 3.390835;
//+
Disk(2) = {15.825369, -0.345028, 0.000000, 0.546437, 0.546437};
//+
c0 = 0.054643745750117816;
//+
MeshSize {5} = c0;
//+
Disk(3) = {8.872264, 0.337372, 0.000000, 0.673850, 0.673850};
//+
c1 = 0.067384981644645;
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
