//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.267325, -3.860638, 0.000000, 33.463191, 8.515069, 0.000000};
//+
l = [3.3998151368356844, 1.1500549062404926, 0.9637230265877499, 3.3998151368356844];
//+
MeshSize {1} = 3.399815;
//+
MeshSize {2} = 1.150055;
//+
MeshSize {3} = 0.963723;
//+
MeshSize {4} = 3.399815;
//+
Disk(2) = {23.073077, 2.962112, 0.000000, 1.153736, 1.153736};
//+
c0 = 0.11537357195591531;
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
