//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.938949, -3.631438, 0.000000, 31.051630, 8.772806, 0.000000};
//+
l = [0.9336354609583213, 3.2289900363816866, 3.2289900363816866, 1.0144392086814484];
//+
MeshSize {1} = 0.933635;
//+
MeshSize {2} = 3.228990;
//+
MeshSize {3} = 3.228990;
//+
MeshSize {4} = 1.014439;
//+
Disk(2) = {10.654165, -0.230337, 0.000000, 0.956989, 0.956989};
//+
c0 = 0.0956988559282874;
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
