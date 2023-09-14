//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.515376, -4.044610, 0.000000, 30.920393, 8.573097, 1.000000};
//+
MeshSize {1} = 0.355503;
//+
MeshSize {2} = 0.355503;
//+
MeshSize {3} = 0.358971;
//+
MeshSize {4} = 0.358971;
//+
MeshSize {5} = 1.132827;
//+
MeshSize {6} = 1.132827;
//+
MeshSize {7} = 1.294779;
//+
MeshSize {8} = 1.294779;
//+
Cylinder(2) = {19.327012, -2.224168, 0.000000, 0.000000, 0.000000, 1.000000, 0.916568, 2*Pi};
//+
MeshSize {9} = 0.091657;
//+
MeshSize {10} = 0.091657;
//+
Cylinder(3) = {2.127552, 0.223410, 0.000000, 0.000000, 0.000000, 1.000000, 1.007328, 2*Pi};
//+
MeshSize {11} = 0.100733;
//+
MeshSize {12} = 0.100733;
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
//+
Save "../geo_unrolled/cad_092.geo_unrolled";
