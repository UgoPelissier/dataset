//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.355656, -4.339286, 0.000000, 33.315173, 8.955389, 1.000000};
//+
MeshSize {1} = 0.974534;
//+
MeshSize {2} = 0.974534;
//+
MeshSize {3} = 1.095034;
//+
MeshSize {4} = 1.095034;
//+
MeshSize {5} = 0.974534;
//+
MeshSize {6} = 0.974534;
//+
MeshSize {7} = 3.396726;
//+
MeshSize {8} = 3.396726;
//+
Cylinder(2) = {7.845106, 2.785791, 0.000000, 0.000000, 0.000000, 1.000000, 0.591905, 2*Pi};
//+
MeshSize {9} = 0.059191;
//+
MeshSize {10} = 0.059191;
//+
Cylinder(3) = {24.363556, 2.623071, 0.000000, 0.000000, 0.000000, 1.000000, 0.672902, 2*Pi};
//+
MeshSize {11} = 0.067290;
//+
MeshSize {12} = 0.067290;
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
Save "../geo_unrolled/cad_416.geo_unrolled";
