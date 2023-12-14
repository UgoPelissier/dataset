//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.504778, -4.040941, 0.000000, 34.973941, 9.743020, 1.000000};
//+
MeshSize {1} = 0.958530;
//+
MeshSize {2} = 0.958530;
//+
MeshSize {3} = 0.900791;
//+
MeshSize {4} = 0.900791;
//+
MeshSize {5} = 1.042206;
//+
MeshSize {6} = 1.042206;
//+
MeshSize {7} = 1.430687;
//+
MeshSize {8} = 1.430687;
//+
Cylinder(2) = {26.383943, -0.246747, 0.000000, 0.000000, 0.000000, 0.100000, 0.759192, 2*Pi};
//+
MeshSize {9} = 0.075919;
//+
MeshSize {10} = 0.075919;
//+
Cylinder(3) = {8.771749, 1.341238, 0.000000, 0.000000, 0.000000, 0.100000, 1.265814, 2*Pi};
//+
MeshSize {11} = 0.126581;
//+
MeshSize {12} = 0.126581;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; }
//+
Physical Volume("SOLID", 1) = {1, 2, 3};
//+
Physical Surface("WALLS", 2) = {13, 18};
//+
Physical Surface("LOAD", 3) = {8, 11};
//+
Physical Surface("BORDER", 4) = {7, 9, 10, 12, 14, 15, 16, 17};
//+
//+
//+
//+
//+
//+
Mesh 3;
//+
Save "../msh/cad_030.msh2";
//+
Save "../mesh/cad_030.mesh";
//+
Save "../geo_unrolled/cad_030.geo_unrolled";
