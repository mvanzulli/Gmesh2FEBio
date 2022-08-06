// Quarter of pipe (for symmetry)

// sizes:
rInt = 0.10 ; rExt = 0.15 ; L = 0.5 ; // Inner Radii, Extern Radii, Length.

// Discretization
Ref = 250 ; 
In_curv_Elem = rInt*3.14/2*Ref ;// Number of elements in the inner curves
Ex_curv_Elem = rExt*3.14/2*Ref  ;// Number of elements in the external curves
Longitudinal_Elem = L*Ref       ;// Number of elements in the longitudinal lines
Rad_Elem = (rExt - rInt)*Ref    ;// Number of elements in the radial direction

msExt = 0.012*(rExt*2.0*3.14) ;  //
msInt = 0.012*(rInt*2.0*3.14) ;  //

Point(1)  = {0   , 0, 0};

Point(2) = { rInt,     0, 0, msInt};
Point(3) = {    0,  rInt, 0, msInt};
Point(4) = { rExt,     0, 0, msExt};
Point(5) = {   0,  rExt, 0, msExt};

Circle(1) = {3, 1, 2}; //
Circle(2) = {4, 1, 5}; //
Line(3) = {5, 3};
Line(4) = {4, 2};

Line Loop(1) = {1, -4,  2, 3};
Plane Surface(1) = {1};

Extrude {0, 0, L} {  Curve{3}; Curve{2}; Curve{1}; Curve{4}; }

Line Loop(2) = {13, -17, 9, 5};
Plane Surface(2) = {2};

Surface Loop(1) = {2, 16, 1, 20, 12, 8};

Volume(1) = {1};

Physical Volume("Quarter_Pipe", 1) = {1};
//+
//Physical Point("00_01_01_00") = {3,5};
//Physical Point("00_01_02_00") = {2,4};
//Physical Line ("00_02_03_00") = {1,2,3,4};
//Physical Surface("01_03_00_00") = {1};
//+
Transfinite Curve {13, 1} = In_curv_Elem Using Progression 1;
Transfinite Curve {9, 2} = Ex_curv_Elem Using Progression 1;
Transfinite Curve {6, 7, 10, 15} = Longitudinal_Elem Using Progression 1;
Transfinite Curve {5, 3, 4, 17} = Rad_Elem Using Progression 1;
