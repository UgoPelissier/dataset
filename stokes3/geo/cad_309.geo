//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.825705, -4.194974, 0.000000, 34.936619, 9.769139, 1.000000};
//+
MeshSize {1} = 3.609436;
//+
MeshSize {2} = 3.609436;
//+
MeshSize {3} = 0.731232;
//+
MeshSize {4} = 0.731232;
//+
MeshSize {5} = 3.609436;
//+
MeshSize {6} = 3.609436;
//+
MeshSize {7} = 1.341774;
//+
MeshSize {8} = 1.341774;
//+
Cylinder(2) = {21.286851, -1.949986, 0.000000, 0.000000, 0.000000, 1.000000, 1.230789, 2*Pi};
//+
MeshSize {9} = 0.123079;
//+
MeshSize {10} = 0.123079;
//+
Cylinder(3) = {27.569230, -1.485591, 0.000000, 0.000000, 0.000000, 1.000000, 1.317142, 2*Pi};
//+
MeshSize {11} = 0.131714;
//+
MeshSize {12} = 0.131714;
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
Save "../geo_unrolled/cad_309.geo_unrolled";
