//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.859342, -4.268387, 0.000000, 32.307269, 9.296794, 1.000000};
//+
MeshSize {1} = 3.349077;
//+
MeshSize {2} = 3.349077;
//+
MeshSize {3} = 3.349077;
//+
MeshSize {4} = 3.349077;
//+
MeshSize {5} = 1.057428;
//+
MeshSize {6} = 1.057428;
//+
MeshSize {7} = 0.759622;
//+
MeshSize {8} = 0.759622;
//+
Cylinder(2) = {25.186785, 3.461968, 0.000000, 0.000000, 0.000000, 1.000000, 0.535899, 2*Pi};
//+
MeshSize {9} = 0.053590;
//+
MeshSize {10} = 0.053590;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_095.geo_unrolled";
