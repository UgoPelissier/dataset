//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.882404, -3.890885, 0.000000, 29.420237, 8.688336, 0.100000};
//+
MeshSize {1} = 1.328188;
//+
MeshSize {2} = 1.328188;
//+
MeshSize {3} = 1.608416;
//+
MeshSize {4} = 1.608416;
//+
MeshSize {5} = 0.891515;
//+
MeshSize {6} = 0.891515;
//+
MeshSize {7} = 0.837606;
//+
MeshSize {8} = 0.837606;
//+
Cylinder(2) = {10.649585, -0.336745, 0.000000, 0.000000, 0.000000, 0.100000, 0.670802, 2*Pi};
//+
MeshSize {9} = 0.067080;
//+
MeshSize {10} = 0.067080;
//+
Cylinder(3) = {23.270656, 0.907412, 0.000000, 0.000000, 0.000000, 0.100000, 0.627394, 2*Pi};
//+
MeshSize {11} = 0.062739;
//+
MeshSize {12} = 0.062739;
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
Save "../msh/cad_350.msh2";
//+
Save "../mesh/cad_350.mesh";
//+
Save "../geo_unrolled/cad_350.geo_unrolled";
