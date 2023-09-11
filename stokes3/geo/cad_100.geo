//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.587572, -3.423684, 0.000000, 33.655518, 8.125246, 1.000000};
//+
l = [3.4483243386593383, 3.4483243386593383, 1.4416570150567056, 1.4416570150567056, 1.4416570150567056, 1.395811552068022, 1.395811552068022, 1.395811552068022, 3.4483243386593383, 3.4483243386593383];
//+
MeshSize {1} = 3.448324;
//+
MeshSize {2} = 3.448324;
//+
MeshSize {3} = 1.441657;
//+
MeshSize {4} = 1.441657;
//+
MeshSize {5} = 1.441657;
//+
MeshSize {6} = 1.395812;
//+
MeshSize {7} = 1.395812;
//+
MeshSize {8} = 1.395812;
//+
Cylinder(2) = {19.379158, 1.509667, 0.000000, 0.000000, 0.000000, 1.000000, 1.244669, 2*Pi};
//+
c0 = 0.12446688411653253;
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
