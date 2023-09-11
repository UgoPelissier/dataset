//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.396654, -3.898253, 0.000000, 30.363310, 9.226536, 1.000000};
//+
MeshSize {1} = 3.110398;
//+
MeshSize {2} = 3.110398;
//+
MeshSize {3} = 3.110398;
//+
MeshSize {4} = 3.110398;
//+
MeshSize {5} = 0.604855;
//+
MeshSize {6} = 0.604855;
//+
MeshSize {7} = 0.574934;
//+
MeshSize {8} = 0.574934;
//+
Cylinder(2) = {26.154990, 0.926451, 0.000000, 0.000000, 0.000000, 1.000000, 0.621055, 2*Pi};
//+
MeshSize {9} = 0.062106;
//+
MeshSize {10} = 0.062106;
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
Save "../geo_unrolled/cad_061.geo_unrolled";
