//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.922088, -2.814458, 0.000000, 33.848583, 7.522832, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {14.966525, -1.557808, 0.000000, 0.000000, 0.000000, 1.000000, 0.731215, 2*Pi};
//+
c0 = 0.07312149999999999;
//+
Cylinder(3) = {19.490851, -0.791762, 0.000000, 0.000000, 0.000000, 1.000000, 0.663269, 2*Pi};
//+
c1 = 0.06632690000000001;
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
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_399.msh";
