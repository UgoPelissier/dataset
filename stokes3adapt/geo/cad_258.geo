//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.840110, -4.713051, 0.000000, 36.489618, 9.694715, 1.000000};
//+
MeshSize {1} = 2.401698;
//+
MeshSize {2} = 2.401698;
//+
MeshSize {3} = 2.804822;
//+
MeshSize {4} = 2.804822;
//+
MeshSize {5} = 0.793144;
//+
MeshSize {6} = 0.793144;
//+
MeshSize {7} = 0.457407;
//+
MeshSize {8} = 0.457407;
//+
Cylinder(2) = {17.278004, -1.369460, 0.000000, 0.000000, 0.000000, 1.000000, 0.805472, 2*Pi};
//+
MeshSize {9} = 0.080547;
//+
MeshSize {10} = 0.080547;
//+
Cylinder(3) = {31.423904, 3.477627, 0.000000, 0.000000, 0.000000, 1.000000, 0.640002, 2*Pi};
//+
MeshSize {11} = 0.064000;
//+
MeshSize {12} = 0.064000;
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
Save "../geo_unrolled/cad_258.geo_unrolled";
