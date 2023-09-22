//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.017143, -3.944552, 0.000000, 36.723187, 9.515419, 1.000000};
//+
MeshSize {1} = 1.805051;
//+
MeshSize {2} = 1.805051;
//+
MeshSize {3} = 2.311763;
//+
MeshSize {4} = 2.311763;
//+
MeshSize {5} = 0.573976;
//+
MeshSize {6} = 0.573976;
//+
MeshSize {7} = 0.886195;
//+
MeshSize {8} = 0.886195;
//+
Cylinder(2) = {29.951245, -2.214003, 0.000000, 0.000000, 0.000000, 1.000000, 0.896896, 2*Pi};
//+
MeshSize {9} = 0.089690;
//+
MeshSize {10} = 0.089690;
//+
Cylinder(3) = {13.706038, -0.894189, 0.000000, 0.000000, 0.000000, 1.000000, 1.065002, 2*Pi};
//+
MeshSize {11} = 0.106500;
//+
MeshSize {12} = 0.106500;
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
Save "../geo_unrolled/cad_140.geo_unrolled";
