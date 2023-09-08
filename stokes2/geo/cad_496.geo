//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.148970, -4.401529, 0.000000, 29.901806, 9.950460, 0.000000};
//+
l = [3.0459843088789023, 0.814446354145562, 0.8772743481801095, 0.8772743481801095, 0.5557030368058052, 0.5557030368058052, 3.0459843088789023, 0.8134950896131499];
//+
MeshSize {1} = 3.045984;
//+
MeshSize {2} = 0.814446;
//+
MeshSize {3} = 0.877274;
//+
MeshSize {4} = 0.877274;
//+
Disk(2) = {23.981045, 3.196996, 0.000000, 0.952441, 0.952441};
//+
c0 = 0.09524413682169097;
//+
MeshSize {5} = c0;
//+
Disk(3) = {7.227557, 0.581972, 0.000000, 0.512423, 0.512423};
//+
c1 = 0.051242299149304504;
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
