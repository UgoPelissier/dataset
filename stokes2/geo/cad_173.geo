//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.605095, -3.535955, 0.000000, 38.883140, 8.430033, 0.000000};
//+
l = [3.9712555854591423, 0.9208768611587366, 0.9254692171076733, 3.9712555854591423];
//+
MeshSize {1} = 3.971256;
//+
MeshSize {2} = 0.920877;
//+
MeshSize {3} = 0.925469;
//+
MeshSize {4} = 3.971256;
//+
Disk(2) = {30.132859, 0.623163, 0.000000, 1.029460, 1.029460};
//+
c0 = 0.10294598815362897;
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
