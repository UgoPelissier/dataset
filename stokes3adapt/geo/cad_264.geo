//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.161246, -2.970565, 0.000000, 30.063214, 7.607861, 1.000000};
//+
MeshSize {1} = 2.450977;
//+
MeshSize {2} = 2.450977;
//+
MeshSize {3} = 2.511419;
//+
MeshSize {4} = 2.511419;
//+
MeshSize {5} = 0.658557;
//+
MeshSize {6} = 0.658557;
//+
MeshSize {7} = 0.633892;
//+
MeshSize {8} = 0.633892;
//+
Cylinder(2) = {18.115258, 0.483896, 0.000000, 0.000000, 0.000000, 1.000000, 0.518620, 2*Pi};
//+
MeshSize {9} = 0.051862;
//+
MeshSize {10} = 0.051862;
//+
Cylinder(3) = {21.747929, 1.230534, 0.000000, 0.000000, 0.000000, 1.000000, 0.783455, 2*Pi};
//+
MeshSize {11} = 0.078345;
//+
MeshSize {12} = 0.078345;
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
Save "../geo_unrolled/cad_264.geo_unrolled";
