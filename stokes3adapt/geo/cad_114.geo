//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.815749, -4.606515, 0.000000, 35.922315, 9.949745, 1.000000};
//+
MeshSize {1} = 0.647239;
//+
MeshSize {2} = 0.647239;
//+
MeshSize {3} = 0.531996;
//+
MeshSize {4} = 0.531996;
//+
MeshSize {5} = 3.271198;
//+
MeshSize {6} = 3.271198;
//+
MeshSize {7} = 2.386249;
//+
MeshSize {8} = 2.386249;
//+
Cylinder(2) = {21.444087, 2.952635, 0.000000, 0.000000, 0.000000, 1.000000, 1.225324, 2*Pi};
//+
MeshSize {9} = 0.122532;
//+
MeshSize {10} = 0.122532;
//+
Cylinder(3) = {6.264283, 1.283768, 0.000000, 0.000000, 0.000000, 1.000000, 1.119736, 2*Pi};
//+
MeshSize {11} = 0.111974;
//+
MeshSize {12} = 0.111974;
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
Save "../geo_unrolled/cad_114.geo_unrolled";
