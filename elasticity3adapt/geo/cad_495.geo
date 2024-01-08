//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.334303, -3.797540, 0.000000, 30.744104, 8.095898, 0.100000};
//+
MeshSize {1} = 1.052301;
//+
MeshSize {2} = 1.052301;
//+
MeshSize {3} = 1.346322;
//+
MeshSize {4} = 1.346322;
//+
MeshSize {5} = 0.988773;
//+
MeshSize {6} = 0.988773;
//+
MeshSize {7} = 0.889883;
//+
MeshSize {8} = 0.889883;
//+
Cylinder(2) = {19.255141, 2.138115, 0.000000, 0.000000, 0.000000, 0.100000, 1.125349, 2*Pi};
//+
MeshSize {9} = 0.112535;
//+
MeshSize {10} = 0.112535;
//+
Cylinder(3) = {13.734120, -1.607270, 0.000000, 0.000000, 0.000000, 0.100000, 1.126185, 2*Pi};
//+
MeshSize {11} = 0.112619;
//+
MeshSize {12} = 0.112619;
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
Save "../msh/cad_495.msh2";
//+
Save "../mesh/cad_495.mesh";
//+
Save "../geo_unrolled/cad_495.geo_unrolled";
