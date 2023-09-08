//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.662020, -3.181954, 0.000000, 31.334728, 7.564339, 0.000000};
//+
l = [0.4483817021857679, 0.4483817021857679, 3.221950791160548, 0.43930515981037843, 3.221950791160548, 0.6783795532704239, 0.7070978171026328, 0.7070978171026328];
//+
MeshSize {1} = 0.448382;
//+
MeshSize {2} = 0.448382;
//+
MeshSize {3} = 3.221951;
//+
MeshSize {4} = 0.439305;
//+
Disk(2) = {5.466075, -1.574809, 0.000000, 0.581936, 0.581936};
//+
c0 = 0.058193609471299236;
//+
MeshSize {5} = c0;
//+
Disk(3) = {26.997866, -1.449680, 0.000000, 0.897467, 0.897467};
//+
c1 = 0.0897467348508123;
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
