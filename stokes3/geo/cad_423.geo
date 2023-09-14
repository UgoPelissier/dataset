//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.910389, -4.106493, 0.000000, 32.138736, 8.343986, 1.000000};
//+
MeshSize {1} = 0.867897;
//+
MeshSize {2} = 0.867897;
//+
MeshSize {3} = 0.723069;
//+
MeshSize {4} = 0.723069;
//+
MeshSize {5} = 0.509776;
//+
MeshSize {6} = 0.509776;
//+
MeshSize {7} = 0.441725;
//+
MeshSize {8} = 0.441725;
//+
Cylinder(2) = {28.533574, 0.567803, 0.000000, 0.000000, 0.000000, 1.000000, 1.401410, 2*Pi};
//+
MeshSize {9} = 0.140141;
//+
MeshSize {10} = 0.140141;
//+
Cylinder(3) = {8.811521, 1.635075, 0.000000, 0.000000, 0.000000, 1.000000, 1.087989, 2*Pi};
//+
MeshSize {11} = 0.108799;
//+
MeshSize {12} = 0.108799;
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
Save "../geo_unrolled/cad_423.geo_unrolled";
