//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.818949, -3.118018, 0.000000, 31.543740, 7.866111, 1.000000};
//+
l = [0.5549071476075446, 0.5549071476075446, 0.5549071476075446, 3.260080566559002, 3.260080566559002, 3.260080566559002, 3.260080566559002, 0.5560100820601352, 0.5560100820601352, 0.5560100820601352];
//+
MeshSize {1} = 0.554907;
//+
MeshSize {2} = 0.554907;
//+
MeshSize {3} = 0.554907;
//+
MeshSize {4} = 3.260081;
//+
MeshSize {5} = 3.260081;
//+
MeshSize {6} = 3.260081;
//+
MeshSize {7} = 3.260081;
//+
MeshSize {8} = 0.556010;
//+
Cylinder(2) = {6.384246, 0.805482, 0.000000, 0.000000, 0.000000, 1.000000, 1.260215, 2*Pi};
//+
c0 = 0.1260215295546892;
//+
MeshSize {9, 10} = c0;
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
