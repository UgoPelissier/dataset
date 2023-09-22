//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.505733, -4.210243, 0.000000, 35.672619, 9.166887, 1.000000};
//+
MeshSize {1} = 1.323349;
//+
MeshSize {2} = 1.323349;
//+
MeshSize {3} = 1.606645;
//+
MeshSize {4} = 1.606645;
//+
MeshSize {5} = 0.854951;
//+
MeshSize {6} = 0.854951;
//+
MeshSize {7} = 0.875936;
//+
MeshSize {8} = 0.875936;
//+
Cylinder(2) = {22.304655, -0.153966, 0.000000, 0.000000, 0.000000, 1.000000, 0.987854, 2*Pi};
//+
MeshSize {9} = 0.098785;
//+
MeshSize {10} = 0.098785;
//+
Cylinder(3) = {19.153458, -2.064926, 0.000000, 0.000000, 0.000000, 1.000000, 1.477479, 2*Pi};
//+
MeshSize {11} = 0.147748;
//+
MeshSize {12} = 0.147748;
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
Save "../geo_unrolled/cad_139.geo_unrolled";
