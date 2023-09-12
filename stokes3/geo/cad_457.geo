//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.106331, -3.361472, 0.000000, 29.952140, 7.791696, 1.000000};
//+
MeshSize {1} = 0.478260;
//+
MeshSize {2} = 0.478260;
//+
MeshSize {3} = 1.453835;
//+
MeshSize {4} = 1.453835;
//+
MeshSize {5} = 0.478260;
//+
MeshSize {6} = 0.478260;
//+
MeshSize {7} = 3.030989;
//+
MeshSize {8} = 3.030989;
//+
Cylinder(2) = {5.162102, -0.178275, 0.000000, 0.000000, 0.000000, 1.000000, 1.191806, 2*Pi};
//+
MeshSize {9} = 0.119181;
//+
MeshSize {10} = 0.119181;
//+
Cylinder(3) = {14.630134, 0.923311, 0.000000, 0.000000, 0.000000, 1.000000, 1.473922, 2*Pi};
//+
MeshSize {11} = 0.147392;
//+
MeshSize {12} = 0.147392;
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
Save "../geo_unrolled/cad_457.geo_unrolled";
