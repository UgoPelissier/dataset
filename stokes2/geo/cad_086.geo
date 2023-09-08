//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.550839, -4.438070, 0.000000, 30.381253, 9.980643, 0.000000};
//+
l = [3.1332054260876934, 0.4249037418880759, 0.5893071833807565, 3.1332054260876934];
//+
MeshSize {1} = 3.133205;
//+
MeshSize {2} = 0.424904;
//+
MeshSize {3} = 0.589307;
//+
MeshSize {4} = 3.133205;
//+
Disk(2) = {28.238831, -0.384775, 0.000000, 0.617466, 0.617466};
//+
c0 = 0.061746614908955756;
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
