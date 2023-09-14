//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.733815, -4.326763, 0.000000, 38.871998, 9.495558, 1.000000};
//+
MeshSize {1} = 0.374295;
//+
MeshSize {2} = 0.374295;
//+
MeshSize {3} = 0.501436;
//+
MeshSize {4} = 0.501436;
//+
MeshSize {5} = 1.078982;
//+
MeshSize {6} = 1.078982;
//+
MeshSize {7} = 0.930797;
//+
MeshSize {8} = 0.930797;
//+
Cylinder(2) = {29.681597, 2.155223, 0.000000, 0.000000, 0.000000, 1.000000, 1.063706, 2*Pi};
//+
MeshSize {9} = 0.106371;
//+
MeshSize {10} = 0.106371;
//+
Cylinder(3) = {2.432500, -0.254856, 0.000000, 0.000000, 0.000000, 1.000000, 0.669079, 2*Pi};
//+
MeshSize {11} = 0.066908;
//+
MeshSize {12} = 0.066908;
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
Save "../geo_unrolled/cad_362.geo_unrolled";
