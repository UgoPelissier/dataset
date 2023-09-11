//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.662020, -3.181954, 0.000000, 31.334728, 7.564339, 1.000000};
//+
MeshSize {1} = 0.448382;
//+
MeshSize {2} = 0.448382;
//+
MeshSize {3} = 0.439305;
//+
MeshSize {4} = 0.439305;
//+
MeshSize {5} = 0.448382;
//+
MeshSize {6} = 0.448382;
//+
MeshSize {7} = 3.221951;
//+
MeshSize {8} = 3.221951;
//+
Cylinder(2) = {5.466075, -1.574809, 0.000000, 0.000000, 0.000000, 1.000000, 0.581936, 2*Pi};
//+
MeshSize {9} = 0.058194;
//+
MeshSize {10} = 0.058194;
//+
Cylinder(3) = {26.997866, -1.449680, 0.000000, 0.000000, 0.000000, 1.000000, 0.897467, 2*Pi};
//+
MeshSize {11} = 0.089747;
//+
MeshSize {12} = 0.089747;
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
Save "../geo_unrolled/cad_310.geo_unrolled";
