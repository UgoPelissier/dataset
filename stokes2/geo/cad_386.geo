//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.269076, -3.940291, 0.000000, 36.561997, 9.774819, 0.000000};
//+
l = [0.9625311002899459, 0.7665097992213359, 3.7153932692352374, 3.7153932692352374, 3.7153932692352374, 3.7153932692352374, 0.9421598667825967, 0.287165744200399];
//+
MeshSize {1} = 0.962531;
//+
MeshSize {2} = 0.766510;
//+
MeshSize {3} = 3.715393;
//+
MeshSize {4} = 3.715393;
//+
Disk(2) = {9.196551, 1.159263, 0.000000, 0.655996, 0.655996};
//+
c0 = 0.0655995568476159;
//+
MeshSize {5} = c0;
//+
Disk(3) = {3.929481, 4.107263, 0.000000, 1.175812, 1.175812};
//+
c1 = 0.11758121248765266;
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
