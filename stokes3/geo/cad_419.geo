//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.250690, -3.420987, 0.000000, 36.033020, 7.836521, 1.000000};
//+
MeshSize {1} = 3.649466;
//+
MeshSize {2} = 3.649466;
//+
MeshSize {3} = 3.649466;
//+
MeshSize {4} = 3.649466;
//+
MeshSize {5} = 0.948543;
//+
MeshSize {6} = 0.948543;
//+
MeshSize {7} = 0.799417;
//+
MeshSize {8} = 0.799417;
//+
Cylinder(2) = {27.850364, 2.293996, 0.000000, 0.000000, 0.000000, 1.000000, 0.701932, 2*Pi};
//+
MeshSize {9} = 0.070193;
//+
MeshSize {10} = 0.070193;
//+
Cylinder(3) = {24.023199, -0.076403, 0.000000, 0.000000, 0.000000, 1.000000, 0.761665, 2*Pi};
//+
MeshSize {11} = 0.076167;
//+
MeshSize {12} = 0.076167;
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
Save "../geo_unrolled/cad_419.geo_unrolled";
