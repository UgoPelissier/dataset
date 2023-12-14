//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.802168, -3.932548, 0.000000, 39.091868, 9.454789, 1.000000};
//+
MeshSize {1} = 2.994263;
//+
MeshSize {2} = 2.994263;
//+
MeshSize {3} = 3.165003;
//+
MeshSize {4} = 3.165003;
//+
MeshSize {5} = 0.477670;
//+
MeshSize {6} = 0.477670;
//+
MeshSize {7} = 0.612779;
//+
MeshSize {8} = 0.612779;
//+
Cylinder(2) = {14.326431, 0.420906, 0.000000, 0.000000, 0.000000, 0.100000, 0.984679, 2*Pi};
//+
MeshSize {9} = 0.098468;
//+
MeshSize {10} = 0.098468;
//+
Cylinder(3) = {36.410370, 0.022628, 0.000000, 0.000000, 0.000000, 0.100000, 0.888381, 2*Pi};
//+
MeshSize {11} = 0.088838;
//+
MeshSize {12} = 0.088838;
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
Save "../msh/cad_191.msh2";
//+
Save "../mesh/cad_191.mesh";
//+
Save "../geo_unrolled/cad_191.geo_unrolled";
