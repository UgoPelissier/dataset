//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.628248, -3.232762, 0.000000, 35.835158, 8.272332, 0.000000};
//+
l = [1.4695875806033443, 3.6697245859220455, 3.6697245859220455, 1.4822685951332413];
//+
MeshSize {1} = 1.469588;
//+
MeshSize {2} = 3.669725;
//+
MeshSize {3} = 3.669725;
//+
MeshSize {4} = 1.482269;
//+
Disk(2) = {16.073915, 0.658261, 0.000000, 1.232360, 1.232360};
//+
c0 = 0.12323597679392383;
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
