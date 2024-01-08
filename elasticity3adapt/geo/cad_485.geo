//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.752390, -3.440741, 0.000000, 30.398424, 7.651580, 0.100000};
//+
MeshSize {1} = 0.582952;
//+
MeshSize {2} = 0.582952;
//+
MeshSize {3} = 0.580102;
//+
MeshSize {4} = 0.580102;
//+
MeshSize {5} = 2.726324;
//+
MeshSize {6} = 2.726324;
//+
MeshSize {7} = 2.985727;
//+
MeshSize {8} = 2.985727;
//+
Cylinder(2) = {14.479631, -0.711012, 0.000000, 0.000000, 0.000000, 0.100000, 0.984172, 2*Pi};
//+
MeshSize {9} = 0.098417;
//+
MeshSize {10} = 0.098417;
//+
Cylinder(3) = {7.672947, 0.418598, 0.000000, 0.000000, 0.000000, 0.100000, 1.285214, 2*Pi};
//+
MeshSize {11} = 0.128521;
//+
MeshSize {12} = 0.128521;
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
Save "../msh/cad_485.msh2";
//+
Save "../mesh/cad_485.mesh";
//+
Save "../geo_unrolled/cad_485.geo_unrolled";
