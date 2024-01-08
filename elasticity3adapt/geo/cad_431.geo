//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.734480, -3.853292, 0.000000, 34.485095, 9.572454, 0.100000};
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
Cylinder(2) = {33.447133, 4.131046, 0.000000, 0.000000, 0.000000, 0.100000, 0.751808, 2*Pi};
//+
MeshSize {9} = 0.075181;
//+
MeshSize {10} = 0.075181;
//+
Cylinder(3) = {31.153999, -2.507247, 0.000000, 0.000000, 0.000000, 0.100000, 0.622277, 2*Pi};
//+
MeshSize {11} = 0.062228;
//+
MeshSize {12} = 0.062228;
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
Save "../msh/cad_431.msh2";
//+
Save "../mesh/cad_431.mesh";
//+
Save "../geo_unrolled/cad_431.geo_unrolled";
