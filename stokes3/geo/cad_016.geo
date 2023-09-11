//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.128391, -3.606038, 0.000000, 35.369644, 8.162642, 1.000000};
//+
l = [3.5731886804346424, 3.5731886804346424, 0.47083951157665277, 0.47083951157665277, 0.47083951157665277, 0.6171519015465257, 0.6171519015465257, 0.6171519015465257, 3.5731886804346424, 3.5731886804346424];
//+
MeshSize {1} = 3.573189;
//+
MeshSize {2} = 3.573189;
//+
MeshSize {3} = 0.470840;
//+
MeshSize {4} = 0.470840;
//+
MeshSize {5} = 0.470840;
//+
MeshSize {6} = 0.617152;
//+
MeshSize {7} = 0.617152;
//+
MeshSize {8} = 0.617152;
//+
Cylinder(2) = {30.969659, -0.627397, 0.000000, 0.000000, 0.000000, 1.000000, 0.711798, 2*Pi};
//+
c0 = 0.07117982054420821;
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
