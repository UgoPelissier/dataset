//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.394020, -3.989045, 0.000000, 29.877000, 9.106874, 1.000000};
//+
l = [0.4650023760640827, 0.4650023760640827, 0.4650023760640827, 3.0611574101232666, 3.0611574101232666, 3.0611574101232666, 3.0611574101232666, 0.605849679239135, 0.605849679239135, 0.605849679239135];
//+
MeshSize {1} = 0.465002;
//+
MeshSize {2} = 0.465002;
//+
MeshSize {3} = 0.465002;
//+
MeshSize {4} = 3.061157;
//+
MeshSize {5} = 3.061157;
//+
MeshSize {6} = 3.061157;
//+
MeshSize {7} = 3.061157;
//+
MeshSize {8} = 0.605850;
//+
Cylinder(2) = {4.107762, -0.348807, 0.000000, 0.000000, 0.000000, 1.000000, 0.550285, 2*Pi};
//+
c0 = 0.05502846334886276;
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
