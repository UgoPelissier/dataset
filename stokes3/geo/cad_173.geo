//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.605095, -3.535955, 0.000000, 38.883140, 8.430033, 1.000000};
//+
l = [3.9712555854591423, 3.9712555854591423, 0.9208768611587366, 0.9208768611587366, 0.9208768611587366, 0.9254692171076733, 0.9254692171076733, 0.9254692171076733, 3.9712555854591423, 3.9712555854591423];
//+
MeshSize {1} = 3.971256;
//+
MeshSize {2} = 3.971256;
//+
MeshSize {3} = 0.920877;
//+
MeshSize {4} = 0.920877;
//+
MeshSize {5} = 0.920877;
//+
MeshSize {6} = 0.925469;
//+
MeshSize {7} = 0.925469;
//+
MeshSize {8} = 0.925469;
//+
Cylinder(2) = {30.132859, 0.623163, 0.000000, 0.000000, 0.000000, 1.000000, 1.029460, 2*Pi};
//+
c0 = 0.10294598815362897;
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
