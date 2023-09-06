//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.489097, -3.769118, 0.000000, 30.422272, 8.860316, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {5.714932, 3.415587, 0.000000, 0.000000, 0.000000, 1.000000, 0.869402, 2*Pi};
//+
c0 = 0.08694020000000001;
//+
Cylinder(3) = {13.779524, -2.097272, 0.000000, 0.000000, 0.000000, 1.000000, 0.965058, 2*Pi};
//+
c1 = 0.0965058;
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
Save "cad_311.msh";
