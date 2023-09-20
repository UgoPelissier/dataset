//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.318734, -3.804251, 0.000000, 31.173442, 8.441150, 1.000000};
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
Cylinder(2) = {23.758205, -0.223532, 0.000000, 0.000000, 0.000000, 1.000000, 1.349341, 2*Pi};
//+
MeshSize {9} = 0.134934;
//+
MeshSize {10} = 0.134934;
//+
Cylinder(3) = {9.470844, 1.752187, 0.000000, 0.000000, 0.000000, 1.000000, 1.305776, 2*Pi};
//+
MeshSize {11} = 0.130578;
//+
MeshSize {12} = 0.130578;
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
Save "../geo_unrolled/cad_131.geo_unrolled";
