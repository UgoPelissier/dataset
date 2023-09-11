//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.709149, -3.107863, 0.000000, 35.070723, 7.794572, 1.000000};
//+
MeshSize {1} = 1.013255;
//+
MeshSize {2} = 1.013255;
//+
MeshSize {3} = 1.013255;
//+
MeshSize {4} = 1.013255;
//+
MeshSize {5} = 1.013255;
//+
MeshSize {6} = 1.013255;
//+
MeshSize {7} = 3.599150;
//+
MeshSize {8} = 3.599150;
//+
Cylinder(2) = {11.302923, -1.073548, 0.000000, 0.000000, 0.000000, 1.000000, 0.654779, 2*Pi};
//+
MeshSize {9} = 0.065478;
//+
MeshSize {10} = 0.065478;
//+
Cylinder(3) = {15.154978, -1.047247, 0.000000, 0.000000, 0.000000, 1.000000, 0.775561, 2*Pi};
//+
MeshSize {11} = 0.077556;
//+
MeshSize {12} = 0.077556;
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
