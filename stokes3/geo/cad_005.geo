//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.861707, -3.229928, 0.000000, 36.184011, 7.614561, 1.000000};
//+
MeshSize {1} = 0.717362;
//+
MeshSize {2} = 0.717362;
//+
MeshSize {3} = 0.908101;
//+
MeshSize {4} = 0.908101;
//+
MeshSize {5} = 3.724085;
//+
MeshSize {6} = 3.724085;
//+
MeshSize {7} = 3.724085;
//+
MeshSize {8} = 3.724085;
//+
Cylinder(2) = {8.442655, -1.603718, 0.000000, 0.000000, 0.000000, 1.000000, 0.579792, 2*Pi};
//+
MeshSize {9} = 0.057979;
//+
MeshSize {10} = 0.057979;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_005.geo_unrolled";
