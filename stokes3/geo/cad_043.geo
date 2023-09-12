//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.442721, -3.271559, 0.000000, 39.457592, 8.263451, 1.000000};
//+
MeshSize {1} = 4.011366;
//+
MeshSize {2} = 4.011366;
//+
MeshSize {3} = 1.444748;
//+
MeshSize {4} = 1.444748;
//+
MeshSize {5} = 4.011366;
//+
MeshSize {6} = 4.011366;
//+
MeshSize {7} = 1.444748;
//+
MeshSize {8} = 1.444748;
//+
Cylinder(2) = {24.779184, 0.905930, 0.000000, 0.000000, 0.000000, 1.000000, 1.240089, 2*Pi};
//+
MeshSize {9} = 0.124009;
//+
MeshSize {10} = 0.124009;
//+
Cylinder(3) = {23.693252, -1.724919, 0.000000, 0.000000, 0.000000, 1.000000, 0.731476, 2*Pi};
//+
MeshSize {11} = 0.073148;
//+
MeshSize {12} = 0.073148;
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
Save "../geo_unrolled/cad_043.geo_unrolled";
