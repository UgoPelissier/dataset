//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.444229, -3.445326, 0.000000, 35.624319, 8.504495, 1.000000};
//+
MeshSize {1} = 0.610602;
//+
MeshSize {2} = 0.610602;
//+
MeshSize {3} = 3.631834;
//+
MeshSize {4} = 3.631834;
//+
MeshSize {5} = 0.610602;
//+
MeshSize {6} = 0.610602;
//+
MeshSize {7} = 3.631834;
//+
MeshSize {8} = 3.631834;
//+
Cylinder(2) = {1.622495, 3.078409, 0.000000, 0.000000, 0.000000, 1.000000, 0.523263, 2*Pi};
//+
MeshSize {9} = 0.052326;
//+
MeshSize {10} = 0.052326;
//+
Cylinder(3) = {15.762584, -0.723423, 0.000000, 0.000000, 0.000000, 1.000000, 1.359648, 2*Pi};
//+
MeshSize {11} = 0.135965;
//+
MeshSize {12} = 0.135965;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_482.geo_unrolled";
