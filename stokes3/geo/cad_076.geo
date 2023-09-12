//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.919770, -3.966016, 0.000000, 37.525074, 8.108291, 1.000000};
//+
MeshSize {1} = 3.865801;
//+
MeshSize {2} = 3.865801;
//+
MeshSize {3} = 1.544837;
//+
MeshSize {4} = 1.544837;
//+
MeshSize {5} = 1.049354;
//+
MeshSize {6} = 1.049354;
//+
MeshSize {7} = 1.544837;
//+
MeshSize {8} = 1.544837;
//+
Cylinder(2) = {22.639065, 0.194295, 0.000000, 0.000000, 0.000000, 1.000000, 0.895767, 2*Pi};
//+
MeshSize {9} = 0.089577;
//+
MeshSize {10} = 0.089577;
//+
Cylinder(3) = {11.928457, -1.301273, 0.000000, 0.000000, 0.000000, 1.000000, 0.833069, 2*Pi};
//+
MeshSize {11} = 0.083307;
//+
MeshSize {12} = 0.083307;
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
Save "../geo_unrolled/cad_076.geo_unrolled";
