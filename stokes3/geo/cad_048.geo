//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.323274, -3.423061, 0.000000, 33.718477, 8.786491, 1.000000};
//+
MeshSize {1} = 3.432406;
//+
MeshSize {2} = 3.432406;
//+
MeshSize {3} = 0.818552;
//+
MeshSize {4} = 0.818552;
//+
MeshSize {5} = 0.622132;
//+
MeshSize {6} = 0.622132;
//+
MeshSize {7} = 0.818552;
//+
MeshSize {8} = 0.818552;
//+
Cylinder(2) = {25.750649, 1.101903, 0.000000, 0.000000, 0.000000, 1.000000, 1.259991, 2*Pi};
//+
MeshSize {9} = 0.125999;
//+
MeshSize {10} = 0.125999;
//+
Cylinder(3) = {6.929479, 0.432468, 0.000000, 0.000000, 0.000000, 1.000000, 1.427673, 2*Pi};
//+
MeshSize {11} = 0.142767;
//+
MeshSize {12} = 0.142767;
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
Save "../geo_unrolled/cad_048.geo_unrolled";
