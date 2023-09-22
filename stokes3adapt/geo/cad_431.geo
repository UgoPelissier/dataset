//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.734480, -3.853292, 0.000000, 34.485095, 9.572454, 1.000000};
//+
MeshSize {1} = 5.905707;
//+
MeshSize {2} = 5.905707;
//+
MeshSize {3} = 6.559863;
//+
MeshSize {4} = 6.559863;
//+
MeshSize {5} = 0.221820;
//+
MeshSize {6} = 0.221820;
//+
MeshSize {7} = 0.098661;
//+
MeshSize {8} = 0.098661;
//+
Cylinder(2) = {33.447133, 4.131046, 0.000000, 0.000000, 0.000000, 1.000000, 0.751808, 2*Pi};
//+
MeshSize {9} = 0.075181;
//+
MeshSize {10} = 0.075181;
//+
Cylinder(3) = {31.153999, -2.507247, 0.000000, 0.000000, 0.000000, 1.000000, 0.622277, 2*Pi};
//+
MeshSize {11} = 0.062228;
//+
MeshSize {12} = 0.062228;
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
Save "../geo_unrolled/cad_431.geo_unrolled";
