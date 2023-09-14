//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.821592, -3.396736, 0.000000, 35.595353, 8.726489, 1.000000};
//+
MeshSize {1} = 0.731782;
//+
MeshSize {2} = 0.731782;
//+
MeshSize {3} = 0.530872;
//+
MeshSize {4} = 0.530872;
//+
MeshSize {5} = 0.928807;
//+
MeshSize {6} = 0.928807;
//+
MeshSize {7} = 1.012625;
//+
MeshSize {8} = 1.012625;
//+
Cylinder(2) = {6.126555, 2.574101, 0.000000, 0.000000, 0.000000, 1.000000, 0.669266, 2*Pi};
//+
MeshSize {9} = 0.066927;
//+
MeshSize {10} = 0.066927;
//+
Cylinder(3) = {26.231618, -0.101957, 0.000000, 0.000000, 0.000000, 1.000000, 1.416899, 2*Pi};
//+
MeshSize {11} = 0.141690;
//+
MeshSize {12} = 0.141690;
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
Save "../geo_unrolled/cad_137.geo_unrolled";
