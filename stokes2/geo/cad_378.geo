//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.709149, -3.107863, 0.000000, 35.070723, 7.794572, 0.000000};
//+
l = [1.0132551223545314, 1.0132551223545314, 3.59914995215157, 3.59914995215157, 3.59914995215157, 3.59914995215157, 1.1403770136727656, 1.1403770136727656];
//+
MeshSize {1} = 1.013255;
//+
MeshSize {2} = 1.013255;
//+
MeshSize {3} = 3.599150;
//+
MeshSize {4} = 3.599150;
//+
Disk(2) = {11.302923, -1.073548, 0.000000, 0.654779, 0.654779};
//+
c0 = 0.06547785805618137;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.154978, -1.047247, 0.000000, 0.775561, 0.775561};
//+
c1 = 0.07755605428799889;
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
