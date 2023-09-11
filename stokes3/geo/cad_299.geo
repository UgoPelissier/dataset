//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.802168, -3.932548, 0.000000, 39.091868, 9.454789, 1.000000};
//+
MeshSize {1} = 1.322300;
//+
MeshSize {2} = 1.322300;
//+
MeshSize {3} = 0.438223;
//+
MeshSize {4} = 0.438223;
//+
MeshSize {5} = 1.322300;
//+
MeshSize {6} = 1.322300;
//+
MeshSize {7} = 4.017315;
//+
MeshSize {8} = 4.017315;
//+
Cylinder(2) = {14.326431, 0.420906, 0.000000, 0.000000, 0.000000, 1.000000, 0.984679, 2*Pi};
//+
MeshSize {9} = 0.098468;
//+
MeshSize {10} = 0.098468;
//+
Cylinder(3) = {36.410370, 0.022628, 0.000000, 0.000000, 0.000000, 1.000000, 0.888381, 2*Pi};
//+
MeshSize {11} = 0.088838;
//+
MeshSize {12} = 0.088838;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
