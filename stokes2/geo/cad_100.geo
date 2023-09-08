//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.587572, -3.423684, 0.000000, 33.655518, 8.125246, 0.000000};
//+
l = [3.4483243386593383, 1.4416570150567056, 1.395811552068022, 3.4483243386593383];
//+
MeshSize {1} = 3.448324;
//+
MeshSize {2} = 1.441657;
//+
MeshSize {3} = 1.395812;
//+
MeshSize {4} = 3.448324;
//+
Disk(2) = {19.379158, 1.509667, 0.000000, 1.244669, 1.244669};
//+
c0 = 0.12446688411653253;
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
