//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.270916, -3.739327, 0.000000, 30.935642, 7.981461, 0.000000};
//+
l = [0.4045980849479451, 3.146069363451058, 3.146069363451058, 0.3993328925379958];
//+
MeshSize {1} = 0.404598;
//+
MeshSize {2} = 3.146069;
//+
MeshSize {3} = 3.146069;
//+
MeshSize {4} = 0.399333;
//+
Disk(2) = {3.730892, 0.286247, 0.000000, 1.262190, 1.262190};
//+
c0 = 0.1262189609484103;
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
