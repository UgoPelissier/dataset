//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.986955, -4.105782, 0.000000, 29.612503, 8.432447, 1.000000};
//+
MeshSize {1} = 3.088856;
//+
MeshSize {2} = 3.088856;
//+
MeshSize {3} = 3.088856;
//+
MeshSize {4} = 3.088856;
//+
MeshSize {5} = 0.738292;
//+
MeshSize {6} = 0.738292;
//+
MeshSize {7} = 0.785136;
//+
MeshSize {8} = 0.785136;
//+
Cylinder(2) = {19.185539, -1.227146, 0.000000, 0.000000, 0.000000, 1.000000, 0.547733, 2*Pi};
//+
MeshSize {9} = 0.054773;
//+
MeshSize {10} = 0.054773;
//+
Cylinder(3) = {22.547476, -0.395084, 0.000000, 0.000000, 0.000000, 1.000000, 1.482951, 2*Pi};
//+
MeshSize {11} = 0.148295;
//+
MeshSize {12} = 0.148295;
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
Save "../geo_unrolled/cad_471.geo_unrolled";
