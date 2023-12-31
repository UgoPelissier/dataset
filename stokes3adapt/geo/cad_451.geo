//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.779493, -4.282644, 0.000000, 36.746093, 9.135161, 1.000000};
//+
MeshSize {1} = 0.748251;
//+
MeshSize {2} = 0.748251;
//+
MeshSize {3} = 0.839017;
//+
MeshSize {4} = 0.839017;
//+
MeshSize {5} = 1.119734;
//+
MeshSize {6} = 1.119734;
//+
MeshSize {7} = 2.595729;
//+
MeshSize {8} = 2.595729;
//+
Cylinder(2) = {4.525660, -0.083632, 0.000000, 0.000000, 0.000000, 1.000000, 0.932358, 2*Pi};
//+
MeshSize {9} = 0.093236;
//+
MeshSize {10} = 0.093236;
//+
Cylinder(3) = {30.258876, -1.734755, 0.000000, 0.000000, 0.000000, 1.000000, 1.184962, 2*Pi};
//+
MeshSize {11} = 0.118496;
//+
MeshSize {12} = 0.118496;
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
Save "../geo_unrolled/cad_451.geo_unrolled";
