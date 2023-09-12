//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.290775, -4.001303, 0.000000, 34.570235, 8.977598, 1.000000};
//+
MeshSize {1} = 3.514882;
//+
MeshSize {2} = 3.514882;
//+
MeshSize {3} = 1.334109;
//+
MeshSize {4} = 1.334109;
//+
MeshSize {5} = 1.670858;
//+
MeshSize {6} = 1.670858;
//+
MeshSize {7} = 1.334109;
//+
MeshSize {8} = 1.334109;
//+
Cylinder(2) = {21.317343, 1.604009, 0.000000, 0.000000, 0.000000, 1.000000, 1.316689, 2*Pi};
//+
MeshSize {9} = 0.131669;
//+
MeshSize {10} = 0.131669;
//+
Cylinder(3) = {17.008739, 1.923812, 0.000000, 0.000000, 0.000000, 1.000000, 1.028309, 2*Pi};
//+
MeshSize {11} = 0.102831;
//+
MeshSize {12} = 0.102831;
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
Save "../geo_unrolled/cad_460.geo_unrolled";
