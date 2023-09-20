//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.882404, -3.890885, 0.000000, 29.420237, 8.688336, 1.000000};
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
Cylinder(2) = {10.649585, -0.336745, 0.000000, 0.000000, 0.000000, 1.000000, 0.670802, 2*Pi};
//+
MeshSize {9} = 0.067080;
//+
MeshSize {10} = 0.067080;
//+
Cylinder(3) = {23.270656, 0.907412, 0.000000, 0.000000, 0.000000, 1.000000, 0.627394, 2*Pi};
//+
MeshSize {11} = 0.062739;
//+
MeshSize {12} = 0.062739;
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
Save "../geo_unrolled/cad_350.geo_unrolled";
