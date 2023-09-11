//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.423576, -4.437219, 0.000000, 29.611881, 9.427798, 1.000000};
//+
MeshSize {1} = 3.040312;
//+
MeshSize {2} = 3.040312;
//+
MeshSize {3} = 3.040312;
//+
MeshSize {4} = 3.040312;
//+
MeshSize {5} = 0.987666;
//+
MeshSize {6} = 0.987666;
//+
MeshSize {7} = 1.184085;
//+
MeshSize {8} = 1.184085;
//+
Cylinder(2) = {19.135991, -2.244238, 0.000000, 0.000000, 0.000000, 1.000000, 1.241231, 2*Pi};
//+
MeshSize {9} = 0.124123;
//+
MeshSize {10} = 0.124123;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_033.geo_unrolled";
