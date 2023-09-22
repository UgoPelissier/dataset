//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.940904, -3.168331, 0.000000, 37.518433, 8.126513, 1.000000};
//+
MeshSize {1} = 0.837572;
//+
MeshSize {2} = 0.837572;
//+
MeshSize {3} = 0.873674;
//+
MeshSize {4} = 0.873674;
//+
MeshSize {5} = 1.456066;
//+
MeshSize {6} = 1.456066;
//+
MeshSize {7} = 1.542109;
//+
MeshSize {8} = 1.542109;
//+
Cylinder(2) = {24.423875, 0.413163, 0.000000, 0.000000, 0.000000, 1.000000, 0.625170, 2*Pi};
//+
MeshSize {9} = 0.062517;
//+
MeshSize {10} = 0.062517;
//+
Cylinder(3) = {11.646434, 0.272060, 0.000000, 0.000000, 0.000000, 1.000000, 1.002573, 2*Pi};
//+
MeshSize {11} = 0.100257;
//+
MeshSize {12} = 0.100257;
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
Save "../geo_unrolled/cad_104.geo_unrolled";
