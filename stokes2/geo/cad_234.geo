//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.957020, -4.937263, 0.000000, 38.414578, 9.905194, 0.000000};
//+
l = [0.9760605867734222, 3.968187138478877, 3.968187138478877, 0.8747270557862237];
//+
MeshSize {1} = 0.976061;
//+
MeshSize {2} = 3.968187;
//+
MeshSize {3} = 3.968187;
//+
MeshSize {4} = 0.874727;
//+
Disk(2) = {9.551281, 1.034117, 0.000000, 0.704513, 0.704513};
//+
c0 = 0.07045131429778938;
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
