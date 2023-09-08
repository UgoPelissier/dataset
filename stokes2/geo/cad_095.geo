//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.859342, -4.268387, 0.000000, 32.307269, 9.296794, 0.000000};
//+
l = [3.3490770573989637, 1.0574277746600609, 0.7596220121932853, 3.3490770573989637];
//+
MeshSize {1} = 3.349077;
//+
MeshSize {2} = 1.057428;
//+
MeshSize {3} = 0.759622;
//+
MeshSize {4} = 3.349077;
//+
Disk(2) = {25.186785, 3.461968, 0.000000, 0.535899, 0.535899};
//+
c0 = 0.05358990998376866;
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
