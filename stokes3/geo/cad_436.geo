//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.054547, -4.270397, 0.000000, 31.367850, 9.574734, 1.000000};
//+
MeshSize {1} = 1.490766;
//+
MeshSize {2} = 1.490766;
//+
MeshSize {3} = 3.178499;
//+
MeshSize {4} = 3.178499;
//+
MeshSize {5} = 0.447758;
//+
MeshSize {6} = 0.447758;
//+
MeshSize {7} = 3.178499;
//+
MeshSize {8} = 3.178499;
//+
Cylinder(2) = {14.193436, 2.131784, 0.000000, 0.000000, 0.000000, 1.000000, 0.613172, 2*Pi};
//+
MeshSize {9} = 0.061317;
//+
MeshSize {10} = 0.061317;
//+
Cylinder(3) = {4.251660, -0.827647, 0.000000, 0.000000, 0.000000, 1.000000, 0.950886, 2*Pi};
//+
MeshSize {11} = 0.095089;
//+
MeshSize {12} = 0.095089;
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
Save "../geo_unrolled/cad_436.geo_unrolled";
