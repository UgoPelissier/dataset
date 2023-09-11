//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.029192, -3.876147, 0.000000, 31.944052, 8.980508, 1.000000};
//+
MeshSize {1} = 1.295060;
//+
MeshSize {2} = 1.295060;
//+
MeshSize {3} = 0.977741;
//+
MeshSize {4} = 0.977741;
//+
MeshSize {5} = 1.295060;
//+
MeshSize {6} = 1.295060;
//+
MeshSize {7} = 3.228701;
//+
MeshSize {8} = 3.228701;
//+
Cylinder(2) = {12.432341, 1.838630, 0.000000, 0.000000, 0.000000, 1.000000, 0.705784, 2*Pi};
//+
MeshSize {9} = 0.070578;
//+
MeshSize {10} = 0.070578;
//+
Cylinder(3) = {24.054287, 2.772550, 0.000000, 0.000000, 0.000000, 1.000000, 0.562564, 2*Pi};
//+
MeshSize {11} = 0.056256;
//+
MeshSize {12} = 0.056256;
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
