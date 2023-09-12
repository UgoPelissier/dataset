//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.823360, -3.847050, 0.000000, 32.638237, 8.189124, 1.000000};
//+
MeshSize {1} = 3.371118;
//+
MeshSize {2} = 3.371118;
//+
MeshSize {3} = 0.545017;
//+
MeshSize {4} = 0.545017;
//+
MeshSize {5} = 3.371118;
//+
MeshSize {6} = 3.371118;
//+
MeshSize {7} = 0.545017;
//+
MeshSize {8} = 0.545017;
//+
Cylinder(2) = {31.367248, 1.842749, 0.000000, 0.000000, 0.000000, 1.000000, 0.612845, 2*Pi};
//+
MeshSize {9} = 0.061284;
//+
MeshSize {10} = 0.061284;
//+
Cylinder(3) = {27.086433, -0.661349, 0.000000, 0.000000, 0.000000, 1.000000, 1.266053, 2*Pi};
//+
MeshSize {11} = 0.126605;
//+
MeshSize {12} = 0.126605;
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
Save "../geo_unrolled/cad_128.geo_unrolled";
