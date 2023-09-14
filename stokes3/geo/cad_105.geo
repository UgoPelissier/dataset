//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.168636, -3.631809, 0.000000, 31.373307, 9.146832, 1.000000};
//+
MeshSize {1} = 3.187178;
//+
MeshSize {2} = 3.187178;
//+
MeshSize {3} = 3.187178;
//+
MeshSize {4} = 3.187178;
//+
MeshSize {5} = 0.859466;
//+
MeshSize {6} = 0.859466;
//+
MeshSize {7} = 0.857616;
//+
MeshSize {8} = 0.857616;
//+
Cylinder(2) = {22.730157, 0.961688, 0.000000, 0.000000, 0.000000, 1.000000, 1.342530, 2*Pi};
//+
MeshSize {9} = 0.134253;
//+
MeshSize {10} = 0.134253;
//+
Cylinder(3) = {17.777608, 2.974882, 0.000000, 0.000000, 0.000000, 1.000000, 0.528373, 2*Pi};
//+
MeshSize {11} = 0.052837;
//+
MeshSize {12} = 0.052837;
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
Save "../geo_unrolled/cad_105.geo_unrolled";
