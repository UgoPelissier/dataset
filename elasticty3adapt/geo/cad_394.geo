//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.532855, -4.457615, 0.000000, 35.676657, 9.499760, 1.000000};
//+
MeshSize {1} = 5.071963;
//+
MeshSize {2} = 5.071963;
//+
MeshSize {3} = 5.151584;
//+
MeshSize {4} = 5.151584;
//+
MeshSize {5} = 0.449735;
//+
MeshSize {6} = 0.449735;
//+
MeshSize {7} = 0.105040;
//+
MeshSize {8} = 0.105040;
//+
Cylinder(2) = {34.231218, 2.933487, 0.000000, 0.000000, 0.000000, 0.100000, 1.440876, 2*Pi};
//+
MeshSize {9} = 0.144088;
//+
MeshSize {10} = 0.144088;
//+
Cylinder(3) = {25.241004, -0.034876, 0.000000, 0.000000, 0.000000, 0.100000, 1.374993, 2*Pi};
//+
MeshSize {11} = 0.137499;
//+
MeshSize {12} = 0.137499;
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
Save "../msh/cad_394.msh2";
//+
Save "../mesh/cad_394.mesh";
//+
Save "../geo_unrolled/cad_394.geo_unrolled";
