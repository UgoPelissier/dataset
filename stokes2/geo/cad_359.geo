//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.630217, -4.158598, 0.000000, 29.538692, 9.183247, 0.000000};
//+
l = [3.0516325418576336, 3.0516325418576336, 1.393896000465722, 0.7667917461241216, 1.3401388393143225, 0.7294396787422888, 1.4828195665790407, 1.4828195665790407];
//+
MeshSize {1} = 3.051633;
//+
MeshSize {2} = 3.051633;
//+
MeshSize {3} = 1.393896;
//+
MeshSize {4} = 0.766792;
//+
Disk(2) = {16.135370, 1.298720, 0.000000, 1.118349, 1.118349};
//+
c0 = 0.11183493589106022;
//+
MeshSize {5} = c0;
//+
Disk(3) = {22.806507, 0.786160, 0.000000, 1.200882, 1.200882};
//+
c1 = 0.12008820313830021;
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
