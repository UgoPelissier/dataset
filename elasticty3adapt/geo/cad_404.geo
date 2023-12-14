//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.986638, -4.629027, 0.000000, 38.614315, 9.390285, 1.000000};
//+
MeshSize {1} = 0.236945;
//+
MeshSize {2} = 0.236945;
//+
MeshSize {3} = 0.358994;
//+
MeshSize {4} = 0.358994;
//+
MeshSize {5} = 4.990745;
//+
MeshSize {6} = 4.990745;
//+
MeshSize {7} = 4.870985;
//+
MeshSize {8} = 4.870985;
//+
Cylinder(2) = {3.502636, -0.850190, 0.000000, 0.000000, 0.000000, 0.100000, 1.414410, 2*Pi};
//+
MeshSize {9} = 0.141441;
//+
MeshSize {10} = 0.141441;
//+
Cylinder(3) = {16.415150, 0.524108, 0.000000, 0.000000, 0.000000, 0.100000, 1.210247, 2*Pi};
//+
MeshSize {11} = 0.121025;
//+
MeshSize {12} = 0.121025;
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
Save "../msh/cad_404.msh2";
//+
Save "../mesh/cad_404.mesh";
//+
Save "../geo_unrolled/cad_404.geo_unrolled";
