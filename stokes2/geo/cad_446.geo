//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.201187, -3.853089, 0.000000, 37.700768, 8.269431, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {19.204527, -1.456050, 0.000000, 0.506131, 0.506131};
//+
c0 = 0.05061312624352929;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.994517, -1.311849, 0.000000, 1.224397, 1.224397};
//+
c1 = 0.12243966428110119;
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
