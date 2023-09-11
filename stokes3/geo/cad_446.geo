//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.201187, -3.853089, 0.000000, 37.700768, 8.269431, 1.000000};
//+
l = [1.864779106539005, 1.864779106539005, 1.864779106539005, 1.864779106539005, 1.864779106539005, 1.864779106539005, 1.8344322177506982, 1.8344322177506982, 1.8344322177506982, 1.0951192599501562, 1.0951192599501562, 1.0951192599501562, 3.812681561300664, 3.812681561300664, 1.1989204582787438, 1.1989204582787438, 1.1989204582787438, 3.812681561300664, 3.812681561300664, 3.812681561300664, 3.812681561300664];
//+
MeshSize {1} = 1.864779;
//+
MeshSize {2} = 1.864779;
//+
MeshSize {3} = 1.864779;
//+
MeshSize {4} = 1.864779;
//+
MeshSize {5} = 1.864779;
//+
MeshSize {6} = 1.864779;
//+
MeshSize {7} = 1.834432;
//+
MeshSize {8} = 1.834432;
//+
Cylinder(2) = {19.204527, -1.456050, 0.000000, 0.000000, 0.000000, 1.000000, 0.506131, 2*Pi};
//+
c0 = 0.05061312624352929;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {25.994517, -1.311849, 0.000000, 0.000000, 0.000000, 1.000000, 1.224397, 2*Pi};
//+
c1 = 0.12243966428110119;
//+
MeshSize {11, 12} = c1;
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
