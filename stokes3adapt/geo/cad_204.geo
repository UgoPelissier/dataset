//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.226242, -4.421732, 0.000000, 30.390151, 9.380588, 1.000000};
//+
MeshSize {1} = 1.257260;
//+
MeshSize {2} = 1.257260;
//+
MeshSize {3} = 1.243248;
//+
MeshSize {4} = 1.243248;
//+
MeshSize {5} = 0.955558;
//+
MeshSize {6} = 0.955558;
//+
MeshSize {7} = 0.889869;
//+
MeshSize {8} = 0.889869;
//+
Cylinder(2) = {12.817004, 0.333146, 0.000000, 0.000000, 0.000000, 1.000000, 1.366894, 2*Pi};
//+
MeshSize {9} = 0.136689;
//+
MeshSize {10} = 0.136689;
//+
Cylinder(3) = {20.743675, 1.128233, 0.000000, 0.000000, 0.000000, 1.000000, 0.620282, 2*Pi};
//+
MeshSize {11} = 0.062028;
//+
MeshSize {12} = 0.062028;
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
Save "../geo_unrolled/cad_204.geo_unrolled";
