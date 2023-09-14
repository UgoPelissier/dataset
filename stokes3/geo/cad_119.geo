//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.479079, -4.714212, 0.000000, 34.906700, 9.832560, 1.000000};
//+
MeshSize {1} = 3.572567;
//+
MeshSize {2} = 3.572567;
//+
MeshSize {3} = 3.572567;
//+
MeshSize {4} = 3.572567;
//+
MeshSize {5} = 1.361241;
//+
MeshSize {6} = 1.361241;
//+
MeshSize {7} = 1.533126;
//+
MeshSize {8} = 1.533126;
//+
Cylinder(2) = {20.765454, -2.532297, 0.000000, 0.000000, 0.000000, 1.000000, 1.169834, 2*Pi};
//+
MeshSize {9} = 0.116983;
//+
MeshSize {10} = 0.116983;
//+
Cylinder(3) = {18.791317, 1.356348, 0.000000, 0.000000, 0.000000, 1.000000, 0.552491, 2*Pi};
//+
MeshSize {11} = 0.055249;
//+
MeshSize {12} = 0.055249;
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
Save "../geo_unrolled/cad_119.geo_unrolled";
