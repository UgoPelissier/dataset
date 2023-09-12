//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.094998, -4.056794, 0.000000, 30.363892, 9.629997, 1.000000};
//+
MeshSize {1} = 1.285447;
//+
MeshSize {2} = 1.285447;
//+
MeshSize {3} = 3.083712;
//+
MeshSize {4} = 3.083712;
//+
MeshSize {5} = 0.691670;
//+
MeshSize {6} = 0.691670;
//+
MeshSize {7} = 3.083712;
//+
MeshSize {8} = 3.083712;
//+
Cylinder(2) = {13.332299, 1.173001, 0.000000, 0.000000, 0.000000, 1.000000, 1.378476, 2*Pi};
//+
MeshSize {9} = 0.137848;
//+
MeshSize {10} = 0.137848;
//+
Cylinder(3) = {2.831194, 3.033105, 0.000000, 0.000000, 0.000000, 1.000000, 0.682869, 2*Pi};
//+
MeshSize {11} = 0.068287;
//+
MeshSize {12} = 0.068287;
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
Save "../geo_unrolled/cad_227.geo_unrolled";
