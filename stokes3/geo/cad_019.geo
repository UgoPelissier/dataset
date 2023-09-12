//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.717612, -3.876383, 0.000000, 35.624767, 8.159960, 1.000000};
//+
MeshSize {1} = 0.341054;
//+
MeshSize {2} = 0.341054;
//+
MeshSize {3} = 3.657068;
//+
MeshSize {4} = 3.657068;
//+
MeshSize {5} = 0.341054;
//+
MeshSize {6} = 0.341054;
//+
MeshSize {7} = 3.657068;
//+
MeshSize {8} = 3.657068;
//+
Cylinder(2) = {3.354346, -0.623619, 0.000000, 0.000000, 0.000000, 1.000000, 0.776680, 2*Pi};
//+
MeshSize {9} = 0.077668;
//+
MeshSize {10} = 0.077668;
//+
Cylinder(3) = {9.520078, 1.968435, 0.000000, 0.000000, 0.000000, 1.000000, 1.051680, 2*Pi};
//+
MeshSize {11} = 0.105168;
//+
MeshSize {12} = 0.105168;
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
Save "../geo_unrolled/cad_019.geo_unrolled";
