//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.043806, -4.717244, 0.000000, 30.375253, 9.833427, 0.000000};
//+
l = [0.9828273079614015, 3.0813848344666885, 3.0813848344666885, 0.7408010065226933];
//+
MeshSize {1} = 0.982827;
//+
MeshSize {2} = 3.081385;
//+
MeshSize {3} = 3.081385;
//+
MeshSize {4} = 0.740801;
//+
Disk(2) = {7.705566, 2.490718, 0.000000, 0.691103, 0.691103};
//+
c0 = 0.06911034307339109;
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
