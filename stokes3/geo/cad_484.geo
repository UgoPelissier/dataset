//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.027171, -4.091550, 0.000000, 33.872226, 8.300104, 1.000000};
//+
MeshSize {1} = 1.333768;
//+
MeshSize {2} = 1.333768;
//+
MeshSize {3} = 1.419784;
//+
MeshSize {4} = 1.419784;
//+
MeshSize {5} = 0.868669;
//+
MeshSize {6} = 0.868669;
//+
MeshSize {7} = 0.810723;
//+
MeshSize {8} = 0.810723;
//+
Cylinder(2) = {13.994444, -1.459011, 0.000000, 0.000000, 0.000000, 1.000000, 0.875513, 2*Pi};
//+
MeshSize {9} = 0.087551;
//+
MeshSize {10} = 0.087551;
//+
Cylinder(3) = {25.496880, 0.714050, 0.000000, 0.000000, 0.000000, 1.000000, 0.992979, 2*Pi};
//+
MeshSize {11} = 0.099298;
//+
MeshSize {12} = 0.099298;
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
Save "../geo_unrolled/cad_484.geo_unrolled";
