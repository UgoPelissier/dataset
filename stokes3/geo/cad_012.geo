//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.422160, -4.931624, 0.000000, 33.394033, 9.990303, 1.000000};
//+
l = [1.6785039012372338, 1.6785039012372338, 1.6785039012372338, 1.4731686625134577, 1.4731686625134577, 1.4731686625134577, 1.617246814240353, 1.617246814240353, 1.617246814240353, 3.418313093685344, 3.418313093685344];
//+
MeshSize {1} = 1.678504;
//+
MeshSize {2} = 1.678504;
//+
MeshSize {3} = 1.678504;
//+
MeshSize {4} = 1.473169;
//+
MeshSize {5} = 1.473169;
//+
MeshSize {6} = 1.473169;
//+
MeshSize {7} = 1.617247;
//+
MeshSize {8} = 1.617247;
//+
Cylinder(2) = {18.158292, -2.329487, 0.000000, 0.000000, 0.000000, 1.000000, 1.140962, 2*Pi};
//+
c0 = 0.1140961798579808;
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
