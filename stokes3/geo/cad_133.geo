//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.268462, -4.168354, 0.000000, 35.760759, 9.684051, 1.000000};
//+
MeshSize {1} = 0.812007;
//+
MeshSize {2} = 0.812007;
//+
MeshSize {3} = 1.501281;
//+
MeshSize {4} = 1.501281;
//+
MeshSize {5} = 0.812007;
//+
MeshSize {6} = 0.812007;
//+
MeshSize {7} = 3.635313;
//+
MeshSize {8} = 3.635313;
//+
Cylinder(2) = {6.779377, 2.534281, 0.000000, 0.000000, 0.000000, 1.000000, 1.224305, 2*Pi};
//+
MeshSize {9} = 0.122431;
//+
MeshSize {10} = 0.122431;
//+
Cylinder(3) = {20.134947, -0.199548, 0.000000, 0.000000, 0.000000, 1.000000, 1.369474, 2*Pi};
//+
MeshSize {11} = 0.136947;
//+
MeshSize {12} = 0.136947;
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
Save "../geo_unrolled/cad_133.geo_unrolled";
