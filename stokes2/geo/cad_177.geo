//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.508756, -3.802234, 0.000000, 31.501048, 7.847192, 0.000000};
//+
l = [1.1830363414643277, 3.2249374256632075, 3.2249374256632075, 1.0369950060130912];
//+
MeshSize {1} = 1.183036;
//+
MeshSize {2} = 3.224937;
//+
MeshSize {3} = 3.224937;
//+
MeshSize {4} = 1.036995;
//+
Disk(2) = {11.808774, 2.382892, 0.000000, 1.051647, 1.051647};
//+
c0 = 0.10516469339264277;
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
