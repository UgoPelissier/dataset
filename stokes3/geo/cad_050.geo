//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.285728, -4.153475, 0.000000, 32.911368, 8.850381, 1.000000};
//+
MeshSize {1} = 0.346531;
//+
MeshSize {2} = 0.346531;
//+
MeshSize {3} = 0.708967;
//+
MeshSize {4} = 0.708967;
//+
MeshSize {5} = 3.349074;
//+
MeshSize {6} = 3.349074;
//+
MeshSize {7} = 3.349074;
//+
MeshSize {8} = 3.349074;
//+
Cylinder(2) = {4.593617, -2.378438, 0.000000, 0.000000, 0.000000, 1.000000, 1.193950, 2*Pi};
//+
MeshSize {9} = 0.119395;
//+
MeshSize {10} = 0.119395;
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
Save "../geo_unrolled/cad_050.geo_unrolled";
