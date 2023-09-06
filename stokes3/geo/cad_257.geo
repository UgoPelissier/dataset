//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.633336, -4.402024, 0.000000, 35.953294, 9.288090, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {17.533582, -0.921331, 0.000000, 0.000000, 0.000000, 1.000000, 1.006613, 2*Pi};
//+
c0 = 0.10066130000000001;
//+
Cylinder(3) = {33.674048, 1.780609, 0.000000, 0.000000, 0.000000, 1.000000, 1.043645, 2*Pi};
//+
c1 = 0.1043645;
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
Save "cad_257.msh";
