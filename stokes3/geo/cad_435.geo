//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.958484, -3.539712, 0.000000, 37.164019, 7.805134, 1.000000};
//+
MeshSize {1} = 3.832173;
//+
MeshSize {2} = 3.832173;
//+
MeshSize {3} = 3.832173;
//+
MeshSize {4} = 3.832173;
//+
MeshSize {5} = 0.289703;
//+
MeshSize {6} = 0.289703;
//+
MeshSize {7} = 0.439344;
//+
MeshSize {8} = 0.439344;
//+
Cylinder(2) = {33.050416, 2.791484, 0.000000, 0.000000, 0.000000, 1.000000, 0.888471, 2*Pi};
//+
MeshSize {9} = 0.088847;
//+
MeshSize {10} = 0.088847;
//+
Cylinder(3) = {34.683438, -0.835340, 0.000000, 0.000000, 0.000000, 1.000000, 1.477993, 2*Pi};
//+
MeshSize {11} = 0.147799;
//+
MeshSize {12} = 0.147799;
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
Save "../geo_unrolled/cad_435.geo_unrolled";
