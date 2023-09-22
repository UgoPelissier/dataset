//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.029356, -3.022732, 0.000000, 32.690450, 7.659680, 1.000000};
//+
MeshSize {1} = 1.576545;
//+
MeshSize {2} = 1.576545;
//+
MeshSize {3} = 1.912581;
//+
MeshSize {4} = 1.912581;
//+
MeshSize {5} = 0.790529;
//+
MeshSize {6} = 0.790529;
//+
MeshSize {7} = 0.804318;
//+
MeshSize {8} = 0.804318;
//+
Cylinder(2) = {23.307078, 0.587127, 0.000000, 0.000000, 0.000000, 1.000000, 0.577070, 2*Pi};
//+
MeshSize {9} = 0.057707;
//+
MeshSize {10} = 0.057707;
//+
Cylinder(3) = {14.893983, -1.071406, 0.000000, 0.000000, 0.000000, 1.000000, 0.999610, 2*Pi};
//+
MeshSize {11} = 0.099961;
//+
MeshSize {12} = 0.099961;
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
Save "../geo_unrolled/cad_179.geo_unrolled";
