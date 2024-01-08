//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.821592, -3.396736, 0.000000, 35.595353, 8.726489, 1.000000};
//+
MeshSize {1} = 0.913561;
//+
MeshSize {2} = 0.913561;
//+
MeshSize {3} = 0.662743;
//+
MeshSize {4} = 0.662743;
//+
MeshSize {5} = 1.558994;
//+
MeshSize {6} = 1.558994;
//+
MeshSize {7} = 2.020290;
//+
MeshSize {8} = 2.020290;
//+
Cylinder(2) = {6.126555, 2.574101, 0.000000, 0.000000, 0.000000, 0.100000, 0.669266, 2*Pi};
//+
MeshSize {9} = 0.066927;
//+
MeshSize {10} = 0.066927;
//+
Cylinder(3) = {26.231618, -0.101957, 0.000000, 0.000000, 0.000000, 0.100000, 1.416899, 2*Pi};
//+
MeshSize {11} = 0.141690;
//+
MeshSize {12} = 0.141690;
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
Save "../msh/cad_137.msh2";
//+
Save "../mesh/cad_137.mesh";
//+
Save "../geo_unrolled/cad_137.geo_unrolled";
