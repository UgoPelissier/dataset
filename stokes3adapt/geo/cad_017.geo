//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.671690, -4.389834, 0.000000, 32.490082, 9.379661, 1.000000};
//+
MeshSize {1} = 4.980721;
//+
MeshSize {2} = 4.980721;
//+
MeshSize {3} = 4.677847;
//+
MeshSize {4} = 4.677847;
//+
MeshSize {5} = 0.285570;
//+
MeshSize {6} = 0.285570;
//+
MeshSize {7} = 0.334222;
//+
MeshSize {8} = 0.334222;
//+
Cylinder(2) = {29.158159, -1.223792, 0.000000, 0.000000, 0.000000, 1.000000, 0.657747, 2*Pi};
//+
MeshSize {9} = 0.065775;
//+
MeshSize {10} = 0.065775;
//+
Cylinder(3) = {27.648460, 1.909136, 0.000000, 0.000000, 0.000000, 1.000000, 1.111678, 2*Pi};
//+
MeshSize {11} = 0.111168;
//+
MeshSize {12} = 0.111168;
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
Save "../geo_unrolled/cad_017.geo_unrolled";
