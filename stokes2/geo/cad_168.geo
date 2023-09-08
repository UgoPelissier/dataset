//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.743308, -4.072517, 0.000000, 33.123140, 9.934309, 0.000000};
//+
l = [1.5139264607580287, 1.6111106980833645, 1.6624371226543802, 1.5681713765893912];
//+
MeshSize {1} = 1.513926;
//+
MeshSize {2} = 1.611111;
//+
MeshSize {3} = 1.662437;
//+
MeshSize {4} = 1.568171;
//+
Disk(2) = {16.804641, -0.024603, 0.000000, 1.424310, 1.424310};
//+
c0 = 0.14243104666269635;
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
