//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.805819, -3.246210, 0.000000, 32.596686, 7.888699, 1.000000};
//+
MeshSize {1} = 3.113032;
//+
MeshSize {2} = 3.113032;
//+
MeshSize {3} = 0.539093;
//+
MeshSize {4} = 0.539093;
//+
MeshSize {5} = 0.499068;
//+
MeshSize {6} = 0.499068;
//+
MeshSize {7} = 3.386476;
//+
MeshSize {8} = 3.386476;
//+
Cylinder(2) = {31.973315, -1.289056, 0.000000, 0.000000, 0.000000, 1.000000, 0.592746, 2*Pi};
//+
MeshSize {9} = 0.059275;
//+
MeshSize {10} = 0.059275;
//+
Cylinder(3) = {3.230569, 2.741278, 0.000000, 0.000000, 0.000000, 1.000000, 1.103726, 2*Pi};
//+
MeshSize {11} = 0.110373;
//+
MeshSize {12} = 0.110373;
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
Save "../geo_unrolled/cad_002.geo_unrolled";
