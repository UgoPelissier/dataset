//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.591042, -3.553629, 0.000000, 30.472270, 8.742859, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {13.239540, 2.723584, 0.000000, 1.482193, 1.482193};
//+
c0 = 0.14821927527928977;
//+
MeshSize {5} = c0;
//+
Disk(3) = {21.073284, -1.536689, 0.000000, 1.475853, 1.475853};
//+
c1 = 0.14758532694286733;
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
