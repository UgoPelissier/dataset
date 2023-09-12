//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.386079, -4.312334, 0.000000, 37.821397, 9.952045, 1.000000};
//+
MeshSize {1} = 3.853014;
//+
MeshSize {2} = 3.853014;
//+
MeshSize {3} = 1.620546;
//+
MeshSize {4} = 1.620546;
//+
MeshSize {5} = 1.610362;
//+
MeshSize {6} = 1.610362;
//+
MeshSize {7} = 1.620546;
//+
MeshSize {8} = 1.620546;
//+
Cylinder(2) = {22.549304, 3.679274, 0.000000, 0.000000, 0.000000, 1.000000, 1.374190, 2*Pi};
//+
MeshSize {9} = 0.137419;
//+
MeshSize {10} = 0.137419;
//+
Cylinder(3) = {16.822989, 0.258266, 0.000000, 0.000000, 0.000000, 1.000000, 0.956928, 2*Pi};
//+
MeshSize {11} = 0.095693;
//+
MeshSize {12} = 0.095693;
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
Save "../geo_unrolled/cad_053.geo_unrolled";
