//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.662227, -3.441001, 0.000000, 32.475299, 7.932956, 1.000000};
//+
MeshSize {1} = 5.068732;
//+
MeshSize {2} = 5.068732;
//+
MeshSize {3} = 4.831515;
//+
MeshSize {4} = 4.831515;
//+
MeshSize {5} = 0.197090;
//+
MeshSize {6} = 0.197090;
//+
MeshSize {7} = 0.394585;
//+
MeshSize {8} = 0.394585;
//+
Cylinder(2) = {30.225538, -1.250813, 0.000000, 0.000000, 0.000000, 1.000000, 0.854287, 2*Pi};
//+
MeshSize {9} = 0.085429;
//+
MeshSize {10} = 0.085429;
//+
Cylinder(3) = {25.581832, 1.752585, 0.000000, 0.000000, 0.000000, 1.000000, 1.143309, 2*Pi};
//+
MeshSize {11} = 0.114331;
//+
MeshSize {12} = 0.114331;
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
Save "../geo_unrolled/cad_116.geo_unrolled";
