//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.297445, -3.302950, 0.000000, 30.550075, 7.834869, 1.000000};
//+
MeshSize {1} = 0.309928;
//+
MeshSize {2} = 0.309928;
//+
MeshSize {3} = 0.912698;
//+
MeshSize {4} = 0.912698;
//+
MeshSize {5} = 0.309928;
//+
MeshSize {6} = 0.309928;
//+
MeshSize {7} = 3.109527;
//+
MeshSize {8} = 3.109527;
//+
Cylinder(2) = {3.635740, -1.524822, 0.000000, 0.000000, 0.000000, 1.000000, 0.683045, 2*Pi};
//+
MeshSize {9} = 0.068304;
//+
MeshSize {10} = 0.068304;
//+
Cylinder(3) = {21.390797, 0.084811, 0.000000, 0.000000, 0.000000, 1.000000, 0.918239, 2*Pi};
//+
MeshSize {11} = 0.091824;
//+
MeshSize {12} = 0.091824;
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
Save "../geo_unrolled/cad_158.geo_unrolled";
