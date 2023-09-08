//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.653675, -4.429040, 0.000000, 35.879690, 9.588673, 0.000000};
//+
l = [1.7100886364032466, 0.5483040241141995, 1.654605399508531, 1.654605399508531, 1.7356221871689952, 1.7356221871689952, 1.7887771732475768, 0.3646768497802835];
//+
MeshSize {1} = 1.710089;
//+
MeshSize {2} = 0.548304;
//+
MeshSize {3} = 1.654605;
//+
MeshSize {4} = 1.654605;
//+
Disk(2) = {18.875434, -1.185843, 0.000000, 1.407242, 1.407242};
//+
c0 = 0.14072424264468197;
//+
MeshSize {5} = c0;
//+
Disk(3) = {2.816292, 1.375754, 0.000000, 0.711517, 0.711517};
//+
c1 = 0.07115171041357547;
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
