//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.732552, -4.068965, 0.000000, 35.738378, 8.336519, 1.000000};
//+
MeshSize {1} = 1.500492;
//+
MeshSize {2} = 1.500492;
//+
MeshSize {3} = 0.647775;
//+
MeshSize {4} = 0.647775;
//+
MeshSize {5} = 1.500492;
//+
MeshSize {6} = 1.500492;
//+
MeshSize {7} = 3.670835;
//+
MeshSize {8} = 3.670835;
//+
Cylinder(2) = {15.162783, 2.242800, 0.000000, 0.000000, 0.000000, 1.000000, 0.745316, 2*Pi};
//+
MeshSize {9} = 0.074532;
//+
MeshSize {10} = 0.074532;
//+
Cylinder(3) = {29.510278, -1.322838, 0.000000, 0.000000, 0.000000, 1.000000, 1.005023, 2*Pi};
//+
MeshSize {11} = 0.100502;
//+
MeshSize {12} = 0.100502;
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
Save "../geo_unrolled/cad_466.geo_unrolled";
