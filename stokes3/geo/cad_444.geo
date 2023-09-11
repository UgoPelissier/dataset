//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.987189, -4.433702, 0.000000, 35.899354, 9.834729, 1.000000};
//+
MeshSize {1} = 1.017313;
//+
MeshSize {2} = 1.017313;
//+
MeshSize {3} = 1.762762;
//+
MeshSize {4} = 1.762762;
//+
MeshSize {5} = 1.017313;
//+
MeshSize {6} = 1.017313;
//+
MeshSize {7} = 3.721287;
//+
MeshSize {8} = 3.721287;
//+
Cylinder(2) = {11.674169, 0.249716, 0.000000, 0.000000, 0.000000, 1.000000, 1.495024, 2*Pi};
//+
MeshSize {9} = 0.149502;
//+
MeshSize {10} = 0.149502;
//+
Cylinder(3) = {19.170150, 1.296784, 0.000000, 0.000000, 0.000000, 1.000000, 0.992504, 2*Pi};
//+
MeshSize {11} = 0.099250;
//+
MeshSize {12} = 0.099250;
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
Save "../geo_unrolled/cad_444.geo_unrolled";
