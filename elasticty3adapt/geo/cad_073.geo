//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.567594, -3.861805, 0.000000, 29.958495, 7.893525, 1.000000};
//+
MeshSize {1} = 0.918496;
//+
MeshSize {2} = 0.918496;
//+
MeshSize {3} = 0.746192;
//+
MeshSize {4} = 0.746192;
//+
MeshSize {5} = 1.767162;
//+
MeshSize {6} = 1.767162;
//+
MeshSize {7} = 1.428822;
//+
MeshSize {8} = 1.428822;
//+
Cylinder(2) = {18.860183, 1.373226, 0.000000, 0.000000, 0.000000, 0.100000, 0.772103, 2*Pi};
//+
MeshSize {9} = 0.077210;
//+
MeshSize {10} = 0.077210;
//+
Cylinder(3) = {8.338715, 2.012400, 0.000000, 0.000000, 0.000000, 0.100000, 0.613818, 2*Pi};
//+
MeshSize {11} = 0.061382;
//+
MeshSize {12} = 0.061382;
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
Save "../msh/cad_073.msh2";
//+
Save "../mesh/cad_073.mesh";
//+
Save "../geo_unrolled/cad_073.geo_unrolled";
