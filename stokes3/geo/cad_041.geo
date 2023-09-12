//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.534135, -4.167387, 0.000000, 39.208814, 8.883397, 1.000000};
//+
MeshSize {1} = 1.779840;
//+
MeshSize {2} = 1.779840;
//+
MeshSize {3} = 0.722164;
//+
MeshSize {4} = 0.722164;
//+
MeshSize {5} = 1.779840;
//+
MeshSize {6} = 1.779840;
//+
MeshSize {7} = 3.999038;
//+
MeshSize {8} = 3.999038;
//+
Cylinder(2) = {18.655219, -0.528839, 0.000000, 0.000000, 0.000000, 1.000000, 0.684364, 2*Pi};
//+
MeshSize {9} = 0.068436;
//+
MeshSize {10} = 0.068436;
//+
Cylinder(3) = {32.673300, -0.882055, 0.000000, 0.000000, 0.000000, 1.000000, 0.574082, 2*Pi};
//+
MeshSize {11} = 0.057408;
//+
MeshSize {12} = 0.057408;
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
Save "../geo_unrolled/cad_041.geo_unrolled";
