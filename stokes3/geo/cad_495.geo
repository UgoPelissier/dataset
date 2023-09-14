//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.334303, -3.797540, 0.000000, 30.744104, 8.095898, 1.000000};
//+
MeshSize {1} = 1.245146;
//+
MeshSize {2} = 1.245146;
//+
MeshSize {3} = 1.351730;
//+
MeshSize {4} = 1.351730;
//+
MeshSize {5} = 1.210422;
//+
MeshSize {6} = 1.210422;
//+
MeshSize {7} = 1.089365;
//+
MeshSize {8} = 1.089365;
//+
Cylinder(2) = {19.255141, 2.138115, 0.000000, 0.000000, 0.000000, 1.000000, 1.125349, 2*Pi};
//+
MeshSize {9} = 0.112535;
//+
MeshSize {10} = 0.112535;
//+
Cylinder(3) = {13.734120, -1.607270, 0.000000, 0.000000, 0.000000, 1.000000, 1.126185, 2*Pi};
//+
MeshSize {11} = 0.112619;
//+
MeshSize {12} = 0.112619;
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
Save "../geo_unrolled/cad_495.geo_unrolled";
