//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.550839, -4.438070, 0.000000, 30.381253, 9.980643, 1.000000};
//+
l = [3.1332054260876934, 3.1332054260876934, 0.4249037418880759, 0.4249037418880759, 0.4249037418880759, 0.5893071833807565, 0.5893071833807565, 0.5893071833807565, 3.1332054260876934, 3.1332054260876934];
//+
MeshSize {1} = 3.133205;
//+
MeshSize {2} = 3.133205;
//+
MeshSize {3} = 0.424904;
//+
MeshSize {4} = 0.424904;
//+
MeshSize {5} = 0.424904;
//+
MeshSize {6} = 0.589307;
//+
MeshSize {7} = 0.589307;
//+
MeshSize {8} = 0.589307;
//+
Cylinder(2) = {28.238831, -0.384775, 0.000000, 0.000000, 0.000000, 1.000000, 0.617466, 2*Pi};
//+
c0 = 0.061746614908955756;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
