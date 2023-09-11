//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.633748, -3.744922, 0.000000, 33.803038, 9.235003, 1.000000};
//+
MeshSize {1} = 0.917091;
//+
MeshSize {2} = 0.917091;
//+
MeshSize {3} = 1.092285;
//+
MeshSize {4} = 1.092285;
//+
MeshSize {5} = 3.474498;
//+
MeshSize {6} = 3.474498;
//+
MeshSize {7} = 3.474498;
//+
MeshSize {8} = 3.474498;
//+
Cylinder(2) = {10.102643, -1.155843, 0.000000, 0.000000, 0.000000, 1.000000, 0.645570, 2*Pi};
//+
MeshSize {9} = 0.064557;
//+
MeshSize {10} = 0.064557;
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
Save "../geo_unrolled/cad_097.geo_unrolled";
