//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.819301, -2.817377, 0.000000, 30.261686, 7.564196, 1.000000};
//+
l = [0.8344422574183753, 0.8344422574183753, 0.8344422574183753, 3.1310254698501048, 3.1310254698501048, 3.1310254698501048, 3.1310254698501048, 0.8049243715217088, 0.8049243715217088, 0.8049243715217088];
//+
MeshSize {1} = 0.834442;
//+
MeshSize {2} = 0.834442;
//+
MeshSize {3} = 0.834442;
//+
MeshSize {4} = 3.131025;
//+
MeshSize {5} = 3.131025;
//+
MeshSize {6} = 3.131025;
//+
MeshSize {7} = 3.131025;
//+
MeshSize {8} = 0.804924;
//+
Cylinder(2) = {9.695939, 1.341490, 0.000000, 0.000000, 0.000000, 1.000000, 1.458173, 2*Pi};
//+
c0 = 0.14581728382058962;
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
