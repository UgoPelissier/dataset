//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.667133, -4.453739, 0.000000, 33.285501, 8.998312, 1.000000};
//+
l = [0.3756482193277092, 0.3756482193277092, 0.3756482193277092, 3.424943443852584, 3.424943443852584, 3.424943443852584, 3.424943443852584, 0.7009412123079614, 0.7009412123079614, 0.7009412123079614];
//+
MeshSize {1} = 0.375648;
//+
MeshSize {2} = 0.375648;
//+
MeshSize {3} = 0.375648;
//+
MeshSize {4} = 3.424943;
//+
MeshSize {5} = 3.424943;
//+
MeshSize {6} = 3.424943;
//+
MeshSize {7} = 3.424943;
//+
MeshSize {8} = 0.700941;
//+
Cylinder(2) = {4.659483, -2.199912, 0.000000, 0.000000, 0.000000, 1.000000, 0.828122, 2*Pi};
//+
c0 = 0.08281223559378412;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
