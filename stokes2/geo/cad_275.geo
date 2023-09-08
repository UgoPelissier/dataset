//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.577934, -3.613532, 0.000000, 34.275445, 8.359349, 0.000000};
//+
l = [3.5103101140106525, 3.5103101140106525, 0.75893843705675, 0.5361585650224066, 0.8462978406370916, 0.6712991302414366, 3.5103101140106525, 3.5103101140106525];
//+
MeshSize {1} = 3.510310;
//+
MeshSize {2} = 3.510310;
//+
MeshSize {3} = 0.758938;
//+
MeshSize {4} = 0.536159;
//+
Disk(2) = {27.321207, -0.337870, 0.000000, 0.624237, 0.624237};
//+
c0 = 0.06242371792303985;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.892056, -0.490811, 0.000000, 0.500676, 0.500676};
//+
c1 = 0.05006759315121043;
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
