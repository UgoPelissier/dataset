//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179816, -4.550828, 0.000000, 32.010386, 9.739412, 1.000000};
//+
l = [3.255646070175347, 3.255646070175347, 0.9931387787633734, 0.9931387787633734, 0.9931387787633734, 1.5250627244045485, 1.5250627244045485, 1.5250627244045485, 1.5250627244045485, 1.5250627244045485, 1.5250627244045485, 1.3867841219834398, 1.3867841219834398, 1.3867841219834398, 1.3867841219834398, 1.3867841219834398, 1.3867841219834398, 1.556080871754756, 1.556080871754756, 1.556080871754756, 0.7242992962412924, 0.7242992962412924, 0.7242992962412924];
//+
MeshSize {1} = 3.255646;
//+
MeshSize {2} = 3.255646;
//+
MeshSize {3} = 0.993139;
//+
MeshSize {4} = 0.993139;
//+
MeshSize {5} = 0.993139;
//+
MeshSize {6} = 1.525063;
//+
MeshSize {7} = 1.525063;
//+
MeshSize {8} = 1.525063;
//+
Cylinder(2) = {17.042532, 2.598886, 0.000000, 0.000000, 0.000000, 1.000000, 1.499606, 2*Pi};
//+
c0 = 0.1499605746811346;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {8.579558, 3.080431, 0.000000, 0.000000, 0.000000, 1.000000, 1.417259, 2*Pi};
//+
c1 = 0.14172594825704407;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
