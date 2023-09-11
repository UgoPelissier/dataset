//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.625325, -4.090083, 0.000000, 36.866619, 8.537962, 1.000000};
//+
MeshSize {1} = 0.537937;
//+
MeshSize {2} = 0.537937;
//+
MeshSize {3} = 3.773420;
//+
MeshSize {4} = 3.773420;
//+
MeshSize {5} = 0.537937;
//+
MeshSize {6} = 0.537937;
//+
MeshSize {7} = 3.773420;
//+
MeshSize {8} = 3.773420;
//+
Cylinder(2) = {3.955932, 1.183569, 0.000000, 0.000000, 0.000000, 1.000000, 0.857963, 2*Pi};
//+
MeshSize {9} = 0.085796;
//+
MeshSize {10} = 0.085796;
//+
Cylinder(3) = {17.198327, 1.410833, 0.000000, 0.000000, 0.000000, 1.000000, 1.382824, 2*Pi};
//+
MeshSize {11} = 0.138282;
//+
MeshSize {12} = 0.138282;
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
Save "../geo_unrolled/cad_412.geo_unrolled";
