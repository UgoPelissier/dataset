//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.667133, -4.453739, 0.000000, 33.285501, 8.998312, 0.000000};
//+
l = [0.3756482193277092, 3.424943443852584, 3.424943443852584, 0.7009412123079614];
//+
MeshSize {1} = 0.375648;
//+
MeshSize {2} = 3.424943;
//+
MeshSize {3} = 3.424943;
//+
MeshSize {4} = 0.700941;
//+
Disk(2) = {4.659483, -2.199912, 0.000000, 0.828122, 0.828122};
//+
c0 = 0.08281223559378412;
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
