//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.329865, -3.994287, 0.000000, 38.003762, 8.748254, 0.000000};
//+
l = [3.858237883310257, 1.3622816673418268, 1.2849328002735865, 3.858237883310257];
//+
MeshSize {1} = 3.858238;
//+
MeshSize {2} = 1.362282;
//+
MeshSize {3} = 1.284933;
//+
MeshSize {4} = 3.858238;
//+
Disk(2) = {25.093498, 1.617085, 0.000000, 0.757327, 0.757327};
//+
c0 = 0.07573267576348829;
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
