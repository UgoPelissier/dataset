//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.717810, -3.969491, 0.000000, 34.220277, 8.407498, 1.000000};
//+
MeshSize {1} = 1.595859;
//+
MeshSize {2} = 1.595859;
//+
MeshSize {3} = 1.585953;
//+
MeshSize {4} = 1.585953;
//+
MeshSize {5} = 1.507527;
//+
MeshSize {6} = 1.507527;
//+
MeshSize {7} = 1.438374;
//+
MeshSize {8} = 1.438374;
//+
Cylinder(2) = {17.259810, 0.435384, 0.000000, 0.000000, 0.000000, 1.000000, 1.159838, 2*Pi};
//+
MeshSize {9} = 0.115984;
//+
MeshSize {10} = 0.115984;
//+
Cylinder(3) = {19.764722, 1.533390, 0.000000, 0.000000, 0.000000, 1.000000, 1.065140, 2*Pi};
//+
MeshSize {11} = 0.106514;
//+
MeshSize {12} = 0.106514;
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
Save "../geo_unrolled/cad_491.geo_unrolled";
