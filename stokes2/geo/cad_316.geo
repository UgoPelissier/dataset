//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.491619, -4.139942, 0.000000, 30.490555, 9.672250, 0.000000};
//+
l = [3.1357346907191075, 3.1357346907191075, 0.4807547202199324, 0.4807547202199324, 0.8537209815923067, 0.5064726142035411, 3.1357346907191075, 3.1357346907191075];
//+
MeshSize {1} = 3.135735;
//+
MeshSize {2} = 3.135735;
//+
MeshSize {3} = 0.480755;
//+
MeshSize {4} = 0.480755;
//+
Disk(2) = {25.585802, -2.230228, 0.000000, 0.916773, 0.916773};
//+
c0 = 0.09167727277053828;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.528364, 2.330478, 0.000000, 1.259493, 1.259493};
//+
c1 = 0.1259493295226257;
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
