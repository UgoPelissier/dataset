//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.627217, -4.151803, 0.000000, 30.055645, 8.605520, 1.000000};
//+
MeshSize {1} = 0.838610;
//+
MeshSize {2} = 0.838610;
//+
MeshSize {3} = 1.021116;
//+
MeshSize {4} = 1.021116;
//+
MeshSize {5} = 1.437306;
//+
MeshSize {6} = 1.437306;
//+
MeshSize {7} = 1.534328;
//+
MeshSize {8} = 1.534328;
//+
Cylinder(2) = {9.291398, -1.939050, 0.000000, 0.000000, 0.000000, 1.000000, 0.556172, 2*Pi};
//+
MeshSize {9} = 0.055617;
//+
MeshSize {10} = 0.055617;
//+
Cylinder(3) = {15.566548, -1.631539, 0.000000, 0.000000, 0.000000, 1.000000, 0.951914, 2*Pi};
//+
MeshSize {11} = 0.095191;
//+
MeshSize {12} = 0.095191;
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
Save "../geo_unrolled/cad_079.geo_unrolled";
