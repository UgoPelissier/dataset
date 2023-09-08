//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.762511, -3.873563, 0.000000, 37.023754, 8.825884, 0.000000};
//+
l = [0.5179799271423455, 3.8043079060357927, 3.8043079060357927, 0.1969491563348437];
//+
MeshSize {1} = 0.517980;
//+
MeshSize {2} = 3.804308;
//+
MeshSize {3} = 3.804308;
//+
MeshSize {4} = 0.196949;
//+
Disk(2) = {2.615283, 2.300045, 0.000000, 1.265834, 1.265834};
//+
c0 = 0.12658344293069876;
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
