//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.073491, -3.751312, 0.000000, 36.009484, 7.664206, 1.000000};
//+
l = [0.9896292807931779, 0.9896292807931779, 0.9896292807931779, 3.628589314796791, 3.628589314796791, 3.628589314796791, 3.628589314796791, 0.9217600440330331, 0.9217600440330331, 0.9217600440330331];
//+
MeshSize {1} = 0.989629;
//+
MeshSize {2} = 0.989629;
//+
MeshSize {3} = 0.989629;
//+
MeshSize {4} = 3.628589;
//+
MeshSize {5} = 3.628589;
//+
MeshSize {6} = 3.628589;
//+
MeshSize {7} = 3.628589;
//+
MeshSize {8} = 0.921760;
//+
Cylinder(2) = {9.923395, 1.019927, 0.000000, 0.000000, 0.000000, 1.000000, 1.048356, 2*Pi};
//+
c0 = 0.10483564340483605;
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
