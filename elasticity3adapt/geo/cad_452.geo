//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.131287, -3.725296, 0.000000, 38.189242, 8.781633, 0.100000};
//+
MeshSize {1} = 1.334813;
//+
MeshSize {2} = 1.334813;
//+
MeshSize {3} = 1.090542;
//+
MeshSize {4} = 1.090542;
//+
MeshSize {5} = 0.915125;
//+
MeshSize {6} = 0.915125;
//+
MeshSize {7} = 0.954513;
//+
MeshSize {8} = 0.954513;
//+
Cylinder(2) = {18.762614, 3.384556, 0.000000, 0.000000, 0.000000, 0.100000, 0.976440, 2*Pi};
//+
MeshSize {9} = 0.097644;
//+
MeshSize {10} = 0.097644;
//+
Cylinder(3) = {21.576645, -0.675566, 0.000000, 0.000000, 0.000000, 0.100000, 1.256491, 2*Pi};
//+
MeshSize {11} = 0.125649;
//+
MeshSize {12} = 0.125649;
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
Save "../msh/cad_452.msh2";
//+
Save "../mesh/cad_452.mesh";
//+
Save "../geo_unrolled/cad_452.geo_unrolled";
