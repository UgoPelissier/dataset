//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.242424, -3.865114, 0.000000, 37.922521, 8.482338, 1.000000};
//+
MeshSize {1} = 0.492963;
//+
MeshSize {2} = 0.492963;
//+
MeshSize {3} = 1.711419;
//+
MeshSize {4} = 1.711419;
//+
MeshSize {5} = 0.492963;
//+
MeshSize {6} = 0.492963;
//+
MeshSize {7} = 3.839988;
//+
MeshSize {8} = 3.839988;
//+
Cylinder(2) = {4.346523, 0.541602, 0.000000, 0.000000, 0.000000, 1.000000, 1.092227, 2*Pi};
//+
MeshSize {9} = 0.109223;
//+
MeshSize {10} = 0.109223;
//+
Cylinder(3) = {20.823904, 1.541348, 0.000000, 0.000000, 0.000000, 1.000000, 1.050099, 2*Pi};
//+
MeshSize {11} = 0.105010;
//+
MeshSize {12} = 0.105010;
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
Save "../geo_unrolled/cad_255.geo_unrolled";
