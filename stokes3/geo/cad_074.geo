//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.429914, -4.075044, 0.000000, 36.354949, 8.716582, 1.000000};
//+
MeshSize {1} = 0.554786;
//+
MeshSize {2} = 0.554786;
//+
MeshSize {3} = 0.213150;
//+
MeshSize {4} = 0.213150;
//+
MeshSize {5} = 3.704215;
//+
MeshSize {6} = 3.704215;
//+
MeshSize {7} = 3.704215;
//+
MeshSize {8} = 3.704215;
//+
Cylinder(2) = {6.462909, -1.044182, 0.000000, 0.000000, 0.000000, 1.000000, 1.203671, 2*Pi};
//+
MeshSize {9} = 0.120367;
//+
MeshSize {10} = 0.120367;
//+
Cylinder(3) = {2.651287, 3.153349, 0.000000, 0.000000, 0.000000, 1.000000, 0.542302, 2*Pi};
//+
MeshSize {11} = 0.054230;
//+
MeshSize {12} = 0.054230;
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
Save "../geo_unrolled/cad_074.geo_unrolled";
