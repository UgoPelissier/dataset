//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.840110, -4.713051, 0.000000, 36.489618, 9.694715, 0.000000};
//+
l = [1.5969031501169721, 1.5969031501169721, 3.7643132999907567, 0.9457818282688186, 3.7643132999907567, 0.5454330823000074, 1.6816705112458896, 1.6816705112458896];
//+
MeshSize {1} = 1.596903;
//+
MeshSize {2} = 1.596903;
//+
MeshSize {3} = 3.764313;
//+
MeshSize {4} = 0.945782;
//+
Disk(2) = {17.278004, -1.369460, 0.000000, 0.805472, 0.805472};
//+
c0 = 0.08054717964453353;
//+
MeshSize {5} = c0;
//+
Disk(3) = {31.423904, 3.477627, 0.000000, 0.640002, 0.640002};
//+
c1 = 0.06400016687162;
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
