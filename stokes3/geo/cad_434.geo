//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.966805, -3.971965, 0.000000, 37.447925, 9.155559, 1.000000};
//+
MeshSize {1} = 3.868653;
//+
MeshSize {2} = 3.868653;
//+
MeshSize {3} = 0.486394;
//+
MeshSize {4} = 0.486394;
//+
MeshSize {5} = 0.855805;
//+
MeshSize {6} = 0.855805;
//+
MeshSize {7} = 0.486394;
//+
MeshSize {8} = 0.486394;
//+
Cylinder(2) = {36.142432, 1.745804, 0.000000, 0.000000, 0.000000, 1.000000, 1.288803, 2*Pi};
//+
MeshSize {9} = 0.128880;
//+
MeshSize {10} = 0.128880;
//+
Cylinder(3) = {9.207082, 0.482753, 0.000000, 0.000000, 0.000000, 1.000000, 0.809269, 2*Pi};
//+
MeshSize {11} = 0.080927;
//+
MeshSize {12} = 0.080927;
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
Save "../geo_unrolled/cad_434.geo_unrolled";
