//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.597146, -4.033104, 0.000000, 37.270800, 8.108922, 0.100000};
//+
MeshSize {1} = 0.770485;
//+
MeshSize {2} = 0.770485;
//+
MeshSize {3} = 0.674488;
//+
MeshSize {4} = 0.674488;
//+
MeshSize {5} = 1.498327;
//+
MeshSize {6} = 1.498327;
//+
MeshSize {7} = 2.807632;
//+
MeshSize {8} = 2.807632;
//+
Cylinder(2) = {4.768479, 0.523658, 0.000000, 0.000000, 0.000000, 0.100000, 0.568610, 2*Pi};
//+
MeshSize {9} = 0.056861;
//+
MeshSize {10} = 0.056861;
//+
Cylinder(3) = {28.974938, -2.374638, 0.000000, 0.000000, 0.000000, 0.100000, 0.715951, 2*Pi};
//+
MeshSize {11} = 0.071595;
//+
MeshSize {12} = 0.071595;
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
Save "../msh/cad_064.msh2";
//+
Save "../mesh/cad_064.mesh";
//+
Save "../geo_unrolled/cad_064.geo_unrolled";
