©
m/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine.Android/MainActivity.cs
	namespace

 	
TripTimeLine


 
.

 
Droid

 
{ 
[ 
Activity 
( 
Label 
= 
$str $
,$ %
Icon& *
=+ ,
$str- ;
,; <
Theme= B
=C D
$strE W
,W X
MainLauncherY e
=f g
trueh l
,l m!
ConfigurationChanges	n ‚
=
ƒ „
ConfigChanges
… ’
.
’ “

ScreenSize
“ 
|
ž Ÿ
ConfigChanges
  ­
.
­ ®
Orientation
® ¹
,
¹ º
ScreenOrientation
» Ì
=
Í Î
ScreenOrientation
Ï à
.
à á
Portrait
á é
)
é ê
]
ê ë
public 

class 
MainActivity 
: 
global  &
::& (
Xamarin( /
./ 0
Forms0 5
.5 6
Platform6 >
.> ?
Android? F
.F G"
FormsAppCompatActivityG ]
{ 
	protected 
override 
void 
OnCreate  (
(( )
Bundle) /
savedInstanceState0 B
)B C
{ 	
TabLayoutResource 
= 
Resource  (
.( )
Layout) /
./ 0
Tabbar0 6
;6 7
ToolbarResource 
= 
Resource &
.& '
Layout' -
.- .
Toolbar. 5
;5 6
base 
. 
OnCreate 
( 
savedInstanceState ,
), -
;- .
Xamarin 
. 

Essentials 
. 
Platform '
.' (
Init( ,
(, -
this- 1
,1 2
savedInstanceState3 E
)E F
;F G
global 
:: 
Xamarin 
. 
Forms !
.! "
Forms" '
.' (
Init( ,
(, -
this- 1
,1 2
savedInstanceState3 E
)E F
;F G
LoadApplication 
( 
new 
App  #
(# $
)$ %
)% &
;& '
} 	
public 
override 
void &
OnRequestPermissionsResult 7
(7 8
int8 ;
requestCode< G
,G H
stringI O
[O P
]P Q
permissionsR ]
,] ^
[_ `
GeneratedEnum` m
]m n
Androido v
.v w
Contentw ~
.~ 
PM	 
.
 ‚

Permission
‚ Œ
[
Œ 
]
 Ž
grantResults
 ›
)
› œ
{ 	
Xamarin 
. 

Essentials 
. 
Platform '
.' (&
OnRequestPermissionsResult( B
(B C
requestCodeC N
,N O
permissionsP [
,[ \
grantResults] i
)i j
;j k
base 
. &
OnRequestPermissionsResult +
(+ ,
requestCode, 7
,7 8
permissions9 D
,D E
grantResultsF R
)R S
;S T
} 	
}   
}!! ®
x/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine.Android/Properties/AssemblyInfo.cs
[		 
assembly		 	
:			 

AssemblyTitle		 
(		 
$str		 /
)		/ 0
]		0 1
[

 
assembly

 	
:

	 

AssemblyDescription

 
(

 
$str

 !
)

! "
]

" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 1
)1 2
]2 3
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

AssemblyVersion 
( 
$str $
)$ %
]% &
[ 
assembly 	
:	 

AssemblyFileVersion 
( 
$str (
)( )
]) *
[!! 
assembly!! 	
:!!	 

UsesPermission!! 
(!! 
Android!! !
.!!! "
Manifest!!" *
.!!* +

Permission!!+ 5
.!!5 6
Internet!!6 >
)!!> ?
]!!? @
["" 
assembly"" 	
:""	 

UsesPermission"" 
("" 
Android"" !
.""! "
Manifest""" *
.""* +

Permission""+ 5
.""5 6 
WriteExternalStorage""6 J
)""J K
]""K L