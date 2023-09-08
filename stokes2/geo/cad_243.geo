//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.909773, -3.829105, 0.000000, 30.053366, 7.872244, 0.000000};
//+
l = [0.5137066730822802, 3.1212321701067265, 3.1212321701067265, 0.5012326848535464];
//+
MeshSize {1} = 0.513707;
//+
MeshSize {2} = 3.121232;
//+
MeshSize {3} = 3.121232;
//+
MeshSize {4} = 0.501233;
//+
Disk(2) = {5.942819, 0.208268, 0.000000, 1.315214, 1.315214};
//+
c0 = 0.13152143907132827;
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
