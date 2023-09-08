//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.003473, -4.569139, 0.000000, 32.980157, 9.183750, 0.000000};
//+
l = [3.3301729007778427, 1.4469647086204829, 1.4311537590817567, 3.3301729007778427];
//+
MeshSize {1} = 3.330173;
//+
MeshSize {2} = 1.446965;
//+
MeshSize {3} = 1.431154;
//+
MeshSize {4} = 3.330173;
//+
Disk(2) = {17.957784, 0.293270, 0.000000, 1.323360, 1.323360};
//+
c0 = 0.13233604373757843;
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
