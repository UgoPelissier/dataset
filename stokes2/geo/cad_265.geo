//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.845518, -4.015123, 0.000000, 37.291865, 9.264971, 0.000000};
//+
l = [1.1076173329468666, 0.7437072803601507, 3.841770254266568, 3.841770254266568, 3.841770254266568, 3.841770254266568, 1.071844419917416, 0.6031731887881091];
//+
MeshSize {1} = 1.107617;
//+
MeshSize {2} = 0.743707;
//+
MeshSize {3} = 3.841770;
//+
MeshSize {4} = 3.841770;
//+
Disk(2) = {11.343767, 1.060696, 0.000000, 0.584752, 0.584752};
//+
c0 = 0.058475196862302785;
//+
MeshSize {5} = c0;
//+
Disk(3) = {6.980839, 1.792184, 0.000000, 1.010825, 1.010825};
//+
c1 = 0.10108248694871609;
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
