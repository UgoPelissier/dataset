//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.128391, -3.606038, 0.000000, 35.369644, 8.162642, 0.000000};
//+
l = [3.5731886804346424, 0.47083951157665277, 0.6171519015465257, 3.5731886804346424];
//+
MeshSize {1} = 3.573189;
//+
MeshSize {2} = 0.470840;
//+
MeshSize {3} = 0.617152;
//+
MeshSize {4} = 3.573189;
//+
Disk(2) = {30.969659, -0.627397, 0.000000, 0.711798, 0.711798};
//+
c0 = 0.07117982054420821;
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
