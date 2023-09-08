//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.352321, -3.960588, 0.000000, 35.856591, 9.194411, 0.000000};
//+
l = [3.6499583293600795, 1.0130324341170025, 0.9446992104538547, 3.6499583293600795];
//+
MeshSize {1} = 3.649958;
//+
MeshSize {2} = 1.013032;
//+
MeshSize {3} = 0.944699;
//+
MeshSize {4} = 3.649958;
//+
Disk(2) = {26.104032, 1.463581, 0.000000, 1.338337, 1.338337};
//+
c0 = 0.13383371169625166;
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
