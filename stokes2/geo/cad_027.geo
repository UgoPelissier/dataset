//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.235204, -3.937883, 0.000000, 38.667669, 8.115538, 0.000000};
//+
l = [3.9113923728056665, 1.560066383787414, 1.5178203823761975, 3.9113923728056665];
//+
MeshSize {1} = 3.911392;
//+
MeshSize {2} = 1.560066;
//+
MeshSize {3} = 1.517820;
//+
MeshSize {4} = 3.911392;
//+
Disk(2) = {23.128503, 0.968845, 0.000000, 0.919225, 0.919225};
//+
c0 = 0.09192249153358725;
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
