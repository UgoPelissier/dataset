//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.344967, -4.245407, 0.000000, 30.700526, 8.539939, 0.100000};
//+
MeshSize {1} = 0.267154;
//+
MeshSize {2} = 0.267154;
//+
MeshSize {3} = 0.426992;
//+
MeshSize {4} = 0.426992;
//+
MeshSize {5} = 4.499673;
//+
MeshSize {6} = 4.499673;
//+
MeshSize {7} = 4.532518;
//+
MeshSize {8} = 4.532518;
//+
Cylinder(2) = {4.398376, -1.606445, 0.000000, 0.000000, 0.000000, 0.100000, 0.955333, 2*Pi};
//+
MeshSize {9} = 0.095533;
//+
MeshSize {10} = 0.095533;
//+
Cylinder(3) = {6.422298, -0.145811, 0.000000, 0.000000, 0.000000, 0.100000, 0.976163, 2*Pi};
//+
MeshSize {11} = 0.097616;
//+
MeshSize {12} = 0.097616;
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
Save "../msh/cad_154.msh2";
//+
Save "../mesh/cad_154.mesh";
//+
Save "../geo_unrolled/cad_154.geo_unrolled";
