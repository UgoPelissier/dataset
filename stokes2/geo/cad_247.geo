//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.928766, -4.169310, 0.000000, 38.685926, 8.967590, 0.000000};
//+
l = [3.986763390273424, 1.0645076478105575, 0.9332944172822167, 3.986763390273424];
//+
MeshSize {1} = 3.986763;
//+
MeshSize {2} = 1.064508;
//+
MeshSize {3} = 0.933294;
//+
MeshSize {4} = 3.986763;
//+
Disk(2) = {29.800329, 1.907509, 0.000000, 0.898296, 0.898296};
//+
c0 = 0.08982960203951221;
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
