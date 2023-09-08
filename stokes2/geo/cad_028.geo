//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.583672, -3.482541, 0.000000, 38.763390, 8.010648, 0.000000};
//+
l = [3.9550397644097384, 1.223798837880631, 1.3482615158799058, 3.9550397644097384];
//+
MeshSize {1} = 3.955040;
//+
MeshSize {2} = 1.223799;
//+
MeshSize {3} = 1.348262;
//+
MeshSize {4} = 3.955040;
//+
Disk(2) = {26.429037, -1.602153, 0.000000, 0.816177, 0.816177};
//+
c0 = 0.0816177196271854;
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
