//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.422160, -4.931624, 0.000000, 33.394033, 9.990303, 0.000000};
//+
l = [1.6785039012372338, 1.4731686625134577, 1.617246814240353, 3.418313093685344];
//+
MeshSize {1} = 1.678504;
//+
MeshSize {2} = 1.473169;
//+
MeshSize {3} = 1.617247;
//+
MeshSize {4} = 3.418313;
//+
Disk(2) = {18.158292, -2.329487, 0.000000, 1.140962, 1.140962};
//+
c0 = 0.1140961798579808;
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
