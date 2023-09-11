//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.583672, -3.482541, 0.000000, 38.763390, 8.010648, 1.000000};
//+
MeshSize {1} = 3.955040;
//+
MeshSize {2} = 3.955040;
//+
MeshSize {3} = 3.955040;
//+
MeshSize {4} = 3.955040;
//+
MeshSize {5} = 1.223799;
//+
MeshSize {6} = 1.223799;
//+
MeshSize {7} = 1.348262;
//+
MeshSize {8} = 1.348262;
//+
Cylinder(2) = {26.429037, -1.602153, 0.000000, 0.000000, 0.000000, 1.000000, 0.816177, 2*Pi};
//+
MeshSize {9} = 0.081618;
//+
MeshSize {10} = 0.081618;
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
