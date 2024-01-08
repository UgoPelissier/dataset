//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072920, -3.736008, 0.000000, 32.433044, 8.614705, 0.100000};
//+
MeshSize {1} = 4.233579;
//+
MeshSize {2} = 4.233579;
//+
MeshSize {3} = 3.123646;
//+
MeshSize {4} = 3.123646;
//+
MeshSize {5} = 0.545233;
//+
MeshSize {6} = 0.545233;
//+
MeshSize {7} = 0.375252;
//+
MeshSize {8} = 0.375252;
//+
Cylinder(2) = {30.324609, 1.418031, 0.000000, 0.000000, 0.000000, 0.100000, 0.766436, 2*Pi};
//+
MeshSize {9} = 0.076644;
//+
MeshSize {10} = 0.076644;
//+
Cylinder(3) = {14.174475, 2.963882, 0.000000, 0.000000, 0.000000, 0.100000, 1.280937, 2*Pi};
//+
MeshSize {11} = 0.128094;
//+
MeshSize {12} = 0.128094;
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
Save "../msh/cad_373.msh2";
//+
Save "../mesh/cad_373.mesh";
//+
Save "../geo_unrolled/cad_373.geo_unrolled";
