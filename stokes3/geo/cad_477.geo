//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.589624, -4.812670, 0.000000, 38.352905, 9.722643, 1.000000};
//+
MeshSize {1} = 0.397622;
//+
MeshSize {2} = 0.397622;
//+
MeshSize {3} = 0.625499;
//+
MeshSize {4} = 0.625499;
//+
MeshSize {5} = 3.924478;
//+
MeshSize {6} = 3.924478;
//+
MeshSize {7} = 3.924478;
//+
MeshSize {8} = 3.924478;
//+
Cylinder(2) = {8.395287, 3.102739, 0.000000, 0.000000, 0.000000, 1.000000, 0.988794, 2*Pi};
//+
MeshSize {9} = 0.098879;
//+
MeshSize {10} = 0.098879;
//+
Cylinder(3) = {4.763758, -1.471532, 0.000000, 0.000000, 0.000000, 1.000000, 1.370427, 2*Pi};
//+
MeshSize {11} = 0.137043;
//+
MeshSize {12} = 0.137043;
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
Save "../geo_unrolled/cad_477.geo_unrolled";
