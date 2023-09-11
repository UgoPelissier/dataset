//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.007730, -3.478245, 0.000000, 31.749218, 8.450519, 1.000000};
//+
MeshSize {1} = 3.203680;
//+
MeshSize {2} = 3.203680;
//+
MeshSize {3} = 3.203680;
//+
MeshSize {4} = 3.203680;
//+
MeshSize {5} = 0.870014;
//+
MeshSize {6} = 0.870014;
//+
MeshSize {7} = 0.930896;
//+
MeshSize {8} = 0.930896;
//+
Cylinder(2) = {22.346452, 0.002217, 0.000000, 0.000000, 0.000000, 1.000000, 1.333354, 2*Pi};
//+
MeshSize {9} = 0.133335;
//+
MeshSize {10} = 0.133335;
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
Save "../geo_unrolled/cad_133.geo_unrolled";
