//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.723118, -3.032162, 0.000000, 38.409180, 7.937662, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {36.728029, 2.786594, 0.000000, 0.000000, 0.000000, 1.000000, 0.968021, 2*Pi};
//+
MeshSize {9} = 0.096802;
//+
MeshSize {10} = 0.096802;
//+
Cylinder(3) = {28.825550, 2.308015, 0.000000, 0.000000, 0.000000, 1.000000, 1.067781, 2*Pi};
//+
MeshSize {11} = 0.106778;
//+
MeshSize {12} = 0.106778;
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
Save "../geo_unrolled/cad_121.geo_unrolled";
