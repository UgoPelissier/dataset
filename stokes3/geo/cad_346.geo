//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.298913, -3.938349, 0.000000, 38.308162, 9.279686, 1.000000};
//+
l = [3.8884886758645862, 3.8884886758645862, 3.8884886758645862, 3.8884886758645862, 0.5036166638902815, 0.5036166638902815, 0.5036166638902815, 0.5036166638902815, 0.5036166638902815, 0.5036166638902815, 0.4105245254116445, 0.4105245254116445, 0.4105245254116445, 0.4105245254116445, 0.4105245254116445, 0.4105245254116445, 3.8884886758645862, 3.8884886758645862, 3.8884886758645862, 3.8884886758645862];
//+
MeshSize {1} = 3.888489;
//+
MeshSize {2} = 3.888489;
//+
MeshSize {3} = 3.888489;
//+
MeshSize {4} = 3.888489;
//+
MeshSize {5} = 0.503617;
//+
MeshSize {6} = 0.503617;
//+
MeshSize {7} = 0.503617;
//+
MeshSize {8} = 0.503617;
//+
Cylinder(2) = {36.117385, 1.230331, 0.000000, 0.000000, 0.000000, 1.000000, 0.700889, 2*Pi};
//+
c0 = 0.07008890823253444;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {24.097285, -1.943357, 0.000000, 0.000000, 0.000000, 1.000000, 0.845294, 2*Pi};
//+
c1 = 0.08452935808985812;
//+
MeshSize {11, 12} = c1;
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
