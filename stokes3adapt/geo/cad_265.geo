//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.085749, -4.384925, 0.000000, 39.842010, 9.668256, 1.000000};
//+
MeshSize {1} = 1.288699;
//+
MeshSize {2} = 1.288699;
//+
MeshSize {3} = 0.715837;
//+
MeshSize {4} = 0.715837;
//+
MeshSize {5} = 1.979092;
//+
MeshSize {6} = 1.979092;
//+
MeshSize {7} = 0.940427;
//+
MeshSize {8} = 0.940427;
//+
Cylinder(2) = {6.810349, 3.194040, 0.000000, 0.000000, 0.000000, 1.000000, 1.100839, 2*Pi};
//+
MeshSize {9} = 0.110084;
//+
MeshSize {10} = 0.110084;
//+
Cylinder(3) = {31.727238, 3.098223, 0.000000, 0.000000, 0.000000, 1.000000, 0.681884, 2*Pi};
//+
MeshSize {11} = 0.068188;
//+
MeshSize {12} = 0.068188;
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
Save "../geo_unrolled/cad_265.geo_unrolled";
