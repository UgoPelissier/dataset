//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.422160, -4.931624, 0.000000, 33.394033, 9.990303, 1.000000};
//+
MeshSize {1} = 1.678504;
//+
MeshSize {2} = 1.678504;
//+
MeshSize {3} = 3.418313;
//+
MeshSize {4} = 3.418313;
//+
MeshSize {5} = 1.473169;
//+
MeshSize {6} = 1.473169;
//+
MeshSize {7} = 1.617247;
//+
MeshSize {8} = 1.617247;
//+
Cylinder(2) = {18.158292, -2.329487, 0.000000, 0.000000, 0.000000, 1.000000, 1.140962, 2*Pi};
//+
MeshSize {9} = 0.114096;
//+
MeshSize {10} = 0.114096;
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
Save "../geo_unrolled/cad_012.geo_unrolled";
