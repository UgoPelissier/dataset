//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.267325, -3.860638, 0.000000, 33.463191, 8.515069, 1.000000};
//+
MeshSize {1} = 3.399815;
//+
MeshSize {2} = 3.399815;
//+
MeshSize {3} = 3.399815;
//+
MeshSize {4} = 3.399815;
//+
MeshSize {5} = 1.150055;
//+
MeshSize {6} = 1.150055;
//+
MeshSize {7} = 0.963723;
//+
MeshSize {8} = 0.963723;
//+
Cylinder(2) = {23.073077, 2.962112, 0.000000, 0.000000, 0.000000, 1.000000, 1.153736, 2*Pi};
//+
MeshSize {9} = 0.115374;
//+
MeshSize {10} = 0.115374;
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
Save "../geo_unrolled/cad_244.geo_unrolled";
