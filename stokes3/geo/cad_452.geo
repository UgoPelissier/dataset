//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.131287, -3.725296, 0.000000, 38.189242, 8.781633, 1.000000};
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
Cylinder(2) = {18.762614, 3.384556, 0.000000, 0.000000, 0.000000, 1.000000, 0.976440, 2*Pi};
//+
MeshSize {9} = 0.097644;
//+
MeshSize {10} = 0.097644;
//+
Cylinder(3) = {21.576645, -0.675566, 0.000000, 0.000000, 0.000000, 1.000000, 1.256491, 2*Pi};
//+
MeshSize {11} = 0.125649;
//+
MeshSize {12} = 0.125649;
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
Save "../geo_unrolled/cad_452.geo_unrolled";
