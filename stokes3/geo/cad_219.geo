//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.487581, -3.912091, 0.000000, 31.280662, 9.086247, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {5.356309, 2.403165, 0.000000, 0.000000, 0.000000, 1.000000, 0.989577, 2*Pi};
//+
MeshSize {9} = 0.098958;
//+
MeshSize {10} = 0.098958;
//+
Cylinder(3) = {20.124786, -0.877791, 0.000000, 0.000000, 0.000000, 1.000000, 1.465328, 2*Pi};
//+
MeshSize {11} = 0.146533;
//+
MeshSize {12} = 0.146533;
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
Save "../geo_unrolled/cad_219.geo_unrolled";
