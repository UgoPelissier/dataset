//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.056890, -3.998616, 0.000000, 30.710420, 9.660625, 1.000000};
//+
MeshSize {1} = 3.114417;
//+
MeshSize {2} = 3.114417;
//+
MeshSize {3} = 0.577018;
//+
MeshSize {4} = 0.577018;
//+
MeshSize {5} = 1.359170;
//+
MeshSize {6} = 1.359170;
//+
MeshSize {7} = 0.577018;
//+
MeshSize {8} = 0.577018;
//+
Cylinder(2) = {26.315076, 1.111053, 0.000000, 0.000000, 0.000000, 1.000000, 1.007068, 2*Pi};
//+
MeshSize {9} = 0.100707;
//+
MeshSize {10} = 0.100707;
//+
Cylinder(3) = {14.236393, 0.524730, 0.000000, 0.000000, 0.000000, 1.000000, 1.291818, 2*Pi};
//+
MeshSize {11} = 0.129182;
//+
MeshSize {12} = 0.129182;
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
Save "../geo_unrolled/cad_080.geo_unrolled";
