//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.041611, -4.268239, 0.000000, 35.421922, 9.974439, 1.000000};
//+
MeshSize {1} = 0.711839;
//+
MeshSize {2} = 0.711839;
//+
MeshSize {3} = 3.581249;
//+
MeshSize {4} = 3.581249;
//+
MeshSize {5} = 0.711839;
//+
MeshSize {6} = 0.711839;
//+
MeshSize {7} = 3.581249;
//+
MeshSize {8} = 3.581249;
//+
Cylinder(2) = {3.632049, 3.292270, 0.000000, 0.000000, 0.000000, 1.000000, 1.251345, 2*Pi};
//+
MeshSize {9} = 0.125135;
//+
MeshSize {10} = 0.125135;
//+
Cylinder(3) = {12.361771, 3.159190, 0.000000, 0.000000, 0.000000, 1.000000, 0.939070, 2*Pi};
//+
MeshSize {11} = 0.093907;
//+
MeshSize {12} = 0.093907;
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
Save "../geo_unrolled/cad_269.geo_unrolled";
