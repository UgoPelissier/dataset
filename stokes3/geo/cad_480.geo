//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.540994, -3.711812, 0.000000, 38.359437, 9.339782, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {25.126432, 3.417927, 0.000000, 0.000000, 0.000000, 1.000000, 1.207209, 2*Pi};
//+
MeshSize {9} = 0.120721;
//+
MeshSize {10} = 0.120721;
//+
Cylinder(3) = {22.250844, 2.766058, 0.000000, 0.000000, 0.000000, 1.000000, 1.207399, 2*Pi};
//+
MeshSize {11} = 0.120740;
//+
MeshSize {12} = 0.120740;
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
Save "../geo_unrolled/cad_480.geo_unrolled";
