//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.632771, -3.842293, 0.000000, 30.759579, 8.016549, 0.100000};
//+
MeshSize {1} = 0.939849;
//+
MeshSize {2} = 0.939849;
//+
MeshSize {3} = 0.925540;
//+
MeshSize {4} = 0.925540;
//+
MeshSize {5} = 0.985855;
//+
MeshSize {6} = 0.985855;
//+
MeshSize {7} = 1.515945;
//+
MeshSize {8} = 1.515945;
//+
Cylinder(2) = {8.823919, 0.310790, 0.000000, 0.000000, 0.000000, 0.100000, 0.823654, 2*Pi};
//+
MeshSize {9} = 0.082365;
//+
MeshSize {10} = 0.082365;
//+
Cylinder(3) = {22.101902, -1.688820, 0.000000, 0.000000, 0.000000, 0.100000, 0.767343, 2*Pi};
//+
MeshSize {11} = 0.076734;
//+
MeshSize {12} = 0.076734;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; }
//+
Physical Volume("SOLID", 1) = {1, 2, 3};
//+
Physical Surface("WALLS", 2) = {13, 18};
//+
Physical Surface("LOAD", 3) = {8, 11};
//+
Physical Surface("BORDER", 4) = {7, 9, 10, 12, 14, 15, 16, 17};
//+
//+
//+
//+
//+
//+
Mesh 3;
//+
Save "../msh/cad_163.msh2";
//+
Save "../mesh/cad_163.mesh";
//+
Save "../geo_unrolled/cad_163.geo_unrolled";
