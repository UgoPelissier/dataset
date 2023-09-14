//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.745935, -3.757854, 0.000000, 36.282614, 8.177291, 1.000000};
//+
MeshSize {1} = 0.421151;
//+
MeshSize {2} = 0.421151;
//+
MeshSize {3} = 0.426728;
//+
MeshSize {4} = 0.426728;
//+
MeshSize {5} = 3.725360;
//+
MeshSize {6} = 3.725360;
//+
MeshSize {7} = 3.725360;
//+
MeshSize {8} = 3.725360;
//+
Cylinder(2) = {4.426939, 0.293270, 0.000000, 0.000000, 0.000000, 1.000000, 1.262190, 2*Pi};
//+
MeshSize {9} = 0.126219;
//+
MeshSize {10} = 0.126219;
//+
Cylinder(3) = {8.423372, -2.621300, 0.000000, 0.000000, 0.000000, 1.000000, 0.514148, 2*Pi};
//+
MeshSize {11} = 0.051415;
//+
MeshSize {12} = 0.051415;
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
Save "../geo_unrolled/cad_040.geo_unrolled";
