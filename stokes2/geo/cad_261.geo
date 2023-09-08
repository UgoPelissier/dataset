//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.482926, -4.144792, 0.000000, 33.898733, 9.241908, 0.000000};
//+
l = [0.9420656416573995, 0.7001421943171234, 3.469080164160458, 3.469080164160458, 3.469080164160458, 3.469080164160458, 1.1262495272141577, 0.279727502249119];
//+
MeshSize {1} = 0.942066;
//+
MeshSize {2} = 0.700142;
//+
MeshSize {3} = 3.469080;
//+
MeshSize {4} = 3.469080;
//+
Disk(2) = {10.964637, -1.845941, 0.000000, 1.310186, 1.310186};
//+
c0 = 0.13101859369186983;
//+
MeshSize {5} = c0;
//+
Disk(3) = {3.956822, 3.227090, 0.000000, 1.147970, 1.147970};
//+
c1 = 0.11479699172777136;
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
