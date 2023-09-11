//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.909773, -3.829105, 0.000000, 30.053366, 7.872244, 1.000000};
//+
l = [0.5137066730822802, 0.5137066730822802, 0.5137066730822802, 3.1212321701067265, 3.1212321701067265, 3.1212321701067265, 3.1212321701067265, 0.5012326848535464, 0.5012326848535464, 0.5012326848535464];
//+
MeshSize {1} = 0.513707;
//+
MeshSize {2} = 0.513707;
//+
MeshSize {3} = 0.513707;
//+
MeshSize {4} = 3.121232;
//+
MeshSize {5} = 3.121232;
//+
MeshSize {6} = 3.121232;
//+
MeshSize {7} = 3.121232;
//+
MeshSize {8} = 0.501233;
//+
Cylinder(2) = {5.942819, 0.208268, 0.000000, 0.000000, 0.000000, 1.000000, 1.315214, 2*Pi};
//+
c0 = 0.13152143907132827;
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
