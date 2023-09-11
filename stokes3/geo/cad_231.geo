//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.300736, -4.185850, 0.000000, 37.757025, 9.786853, 1.000000};
//+
MeshSize {1} = 0.438102;
//+
MeshSize {2} = 0.438102;
//+
MeshSize {3} = 0.872852;
//+
MeshSize {4} = 0.872852;
//+
MeshSize {5} = 3.837107;
//+
MeshSize {6} = 3.837107;
//+
MeshSize {7} = 3.837107;
//+
MeshSize {8} = 3.837107;
//+
Cylinder(2) = {5.103270, -2.516606, 0.000000, 0.000000, 0.000000, 1.000000, 0.703337, 2*Pi};
//+
MeshSize {9} = 0.070334;
//+
MeshSize {10} = 0.070334;
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
Save "../geo_unrolled/cad_231.geo_unrolled";
