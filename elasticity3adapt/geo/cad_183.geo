//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.200671, -3.964590, 0.000000, 32.838422, 9.056794, 1.000000};
//+
MeshSize {1} = 1.965065;
//+
MeshSize {2} = 1.965065;
//+
MeshSize {3} = 1.905089;
//+
MeshSize {4} = 1.905089;
//+
MeshSize {5} = 0.638127;
//+
MeshSize {6} = 0.638127;
//+
MeshSize {7} = 0.869664;
//+
MeshSize {8} = 0.869664;
//+
Cylinder(2) = {15.327717, 0.830426, 0.000000, 0.000000, 0.000000, 0.100000, 0.993361, 2*Pi};
//+
MeshSize {9} = 0.099336;
//+
MeshSize {10} = 0.099336;
//+
Cylinder(3) = {25.125643, -2.308333, 0.000000, 0.000000, 0.000000, 0.100000, 0.506378, 2*Pi};
//+
MeshSize {11} = 0.050638;
//+
MeshSize {12} = 0.050638;
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
Save "../msh/cad_183.msh2";
//+
Save "../mesh/cad_183.mesh";
//+
Save "../geo_unrolled/cad_183.geo_unrolled";
