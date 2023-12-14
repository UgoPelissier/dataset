//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.489097, -3.769117, 0.000000, 30.422272, 8.860315, 1.000000};
//+
MeshSize {1} = 0.689516;
//+
MeshSize {2} = 0.689516;
//+
MeshSize {3} = 0.397330;
//+
MeshSize {4} = 0.397330;
//+
MeshSize {5} = 2.731281;
//+
MeshSize {6} = 2.731281;
//+
MeshSize {7} = 3.479468;
//+
MeshSize {8} = 3.479468;
//+
Cylinder(2) = {5.714932, 3.415587, 0.000000, 0.000000, 0.000000, 0.100000, 0.869402, 2*Pi};
//+
MeshSize {9} = 0.086940;
//+
MeshSize {10} = 0.086940;
//+
Cylinder(3) = {13.779524, -2.097272, 0.000000, 0.000000, 0.000000, 0.100000, 0.965058, 2*Pi};
//+
MeshSize {11} = 0.096506;
//+
MeshSize {12} = 0.096506;
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
Save "../msh/cad_203.msh2";
//+
Save "../mesh/cad_203.mesh";
//+
Save "../geo_unrolled/cad_203.geo_unrolled";
