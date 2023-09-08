//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.319588, -4.080289, 0.000000, 30.329803, 8.855428, 0.000000};
//+
l = [3.0967560582476374, 0.445506070844391, 0.29021251582171276, 3.0967560582476374];
//+
MeshSize {1} = 3.096756;
//+
MeshSize {2} = 0.445506;
//+
MeshSize {3} = 0.290213;
//+
MeshSize {4} = 3.096756;
//+
Disk(2) = {28.421930, 1.219393, 0.000000, 1.293696, 1.293696};
//+
c0 = 0.12936963838450027;
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
