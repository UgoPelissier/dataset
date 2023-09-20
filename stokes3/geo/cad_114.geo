//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.815749, -4.606515, 0.000000, 35.922315, 9.949745, 1.000000};
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
