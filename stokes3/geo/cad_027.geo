//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.235204, -3.937883, 0.000000, 38.667669, 8.115538, 1.000000};
//+
l = [3.9113923728056665, 3.9113923728056665, 1.560066383787414, 1.560066383787414, 1.560066383787414, 1.5178203823761975, 1.5178203823761975, 1.5178203823761975, 3.9113923728056665, 3.9113923728056665];
//+
MeshSize {1} = 3.911392;
//+
MeshSize {2} = 3.911392;
//+
MeshSize {3} = 1.560066;
//+
MeshSize {4} = 1.560066;
//+
MeshSize {5} = 1.560066;
//+
MeshSize {6} = 1.517820;
//+
MeshSize {7} = 1.517820;
//+
MeshSize {8} = 1.517820;
//+
Cylinder(2) = {23.128503, 0.968845, 0.000000, 0.000000, 0.000000, 1.000000, 0.919225, 2*Pi};
//+
c0 = 0.09192249153358725;
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
