//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.986638, -4.629027, 0.000000, 38.614315, 9.390285, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {3.502636, -0.850190, 0.000000, 0.000000, 0.000000, 1.000000, 1.414410, 2*Pi};
//+
MeshSize {9} = 0.141441;
//+
MeshSize {10} = 0.141441;
//+
Cylinder(3) = {16.415150, 0.524108, 0.000000, 0.000000, 0.000000, 1.000000, 1.210247, 2*Pi};
//+
MeshSize {11} = 0.121025;
//+
MeshSize {12} = 0.121025;
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
Save "../geo_unrolled/cad_404.geo_unrolled";
