//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.343616, -4.081053, 0.000000, 35.122585, 9.881451, 1.000000};
//+
MeshSize {1} = 1.257522;
//+
MeshSize {2} = 1.257522;
//+
MeshSize {3} = 0.418695;
//+
MeshSize {4} = 0.418695;
//+
MeshSize {5} = 1.257522;
//+
MeshSize {6} = 1.257522;
//+
MeshSize {7} = 3.580869;
//+
MeshSize {8} = 3.580869;
//+
Cylinder(2) = {13.605894, -1.832424, 0.000000, 0.000000, 0.000000, 1.000000, 0.876337, 2*Pi};
//+
MeshSize {9} = 0.087634;
//+
MeshSize {10} = 0.087634;
//+
Cylinder(3) = {30.513725, -1.946205, 0.000000, 0.000000, 0.000000, 1.000000, 1.206059, 2*Pi};
//+
MeshSize {11} = 0.120606;
//+
MeshSize {12} = 0.120606;
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
Save "../geo_unrolled/cad_420.geo_unrolled";
