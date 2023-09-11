//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.352321, -3.960588, 0.000000, 35.856591, 9.194411, 1.000000};
//+
l = [3.6499583293600795, 3.6499583293600795, 1.0130324341170025, 1.0130324341170025, 1.0130324341170025, 0.9446992104538547, 0.9446992104538547, 0.9446992104538547, 3.6499583293600795, 3.6499583293600795];
//+
MeshSize {1} = 3.649958;
//+
MeshSize {2} = 3.649958;
//+
MeshSize {3} = 1.013032;
//+
MeshSize {4} = 1.013032;
//+
MeshSize {5} = 1.013032;
//+
MeshSize {6} = 0.944699;
//+
MeshSize {7} = 0.944699;
//+
MeshSize {8} = 0.944699;
//+
Cylinder(2) = {26.104032, 1.463581, 0.000000, 0.000000, 0.000000, 1.000000, 1.338337, 2*Pi};
//+
c0 = 0.13383371169625166;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
