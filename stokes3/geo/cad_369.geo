//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.547613, -3.092150, 0.000000, 37.769282, 7.529904, 1.000000};
//+
MeshSize {1} = 0.730119;
//+
MeshSize {2} = 0.730119;
//+
MeshSize {3} = 1.400925;
//+
MeshSize {4} = 1.400925;
//+
MeshSize {5} = 0.730119;
//+
MeshSize {6} = 0.730119;
//+
MeshSize {7} = 3.850142;
//+
MeshSize {8} = 3.850142;
//+
Cylinder(2) = {8.407352, -1.631753, 0.000000, 0.000000, 0.000000, 1.000000, 0.693080, 2*Pi};
//+
MeshSize {9} = 0.069308;
//+
MeshSize {10} = 0.069308;
//+
Cylinder(3) = {24.449355, 1.566785, 0.000000, 0.000000, 0.000000, 1.000000, 0.619977, 2*Pi};
//+
MeshSize {11} = 0.061998;
//+
MeshSize {12} = 0.061998;
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
Save "../geo_unrolled/cad_369.geo_unrolled";
