//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.926632, -4.364170, 0.000000, 33.644724, 9.603992, 1.000000};
//+
MeshSize {1} = 3.490326;
//+
MeshSize {2} = 3.490326;
//+
MeshSize {3} = 0.877729;
//+
MeshSize {4} = 0.877729;
//+
MeshSize {5} = 0.892350;
//+
MeshSize {6} = 0.892350;
//+
MeshSize {7} = 0.877729;
//+
MeshSize {8} = 0.877729;
//+
Cylinder(2) = {30.107139, 3.947104, 0.000000, 0.000000, 0.000000, 1.000000, 0.657033, 2*Pi};
//+
MeshSize {9} = 0.065703;
//+
MeshSize {10} = 0.065703;
//+
Cylinder(3) = {10.099088, -0.561662, 0.000000, 0.000000, 0.000000, 1.000000, 1.005897, 2*Pi};
//+
MeshSize {11} = 0.100590;
//+
MeshSize {12} = 0.100590;
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
Save "../geo_unrolled/cad_465.geo_unrolled";
