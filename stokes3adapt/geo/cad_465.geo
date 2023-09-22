//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.926632, -4.364170, 0.000000, 33.644724, 9.603992, 1.000000};
//+
MeshSize {1} = 1.449629;
//+
MeshSize {2} = 1.449629;
//+
MeshSize {3} = 1.948040;
//+
MeshSize {4} = 1.948040;
//+
MeshSize {5} = 1.379534;
//+
MeshSize {6} = 1.379534;
//+
MeshSize {7} = 0.506120;
//+
MeshSize {8} = 0.506120;
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
