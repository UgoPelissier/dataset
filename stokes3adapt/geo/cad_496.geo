//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.065790, -3.441082, 0.000000, 35.526790, 8.237292, 1.000000};
//+
MeshSize {1} = 1.878273;
//+
MeshSize {2} = 1.878273;
//+
MeshSize {3} = 1.790948;
//+
MeshSize {4} = 1.790948;
//+
MeshSize {5} = 0.808026;
//+
MeshSize {6} = 0.808026;
//+
MeshSize {7} = 0.743753;
//+
MeshSize {8} = 0.743753;
//+
Cylinder(2) = {8.297057, 0.820235, 0.000000, 0.000000, 0.000000, 1.000000, 1.159724, 2*Pi};
//+
MeshSize {9} = 0.115972;
//+
MeshSize {10} = 0.115972;
//+
Cylinder(3) = {31.319270, 0.982137, 0.000000, 0.000000, 0.000000, 1.000000, 0.839616, 2*Pi};
//+
MeshSize {11} = 0.083962;
//+
MeshSize {12} = 0.083962;
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
Save "../geo_unrolled/cad_496.geo_unrolled";
