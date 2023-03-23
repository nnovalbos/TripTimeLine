˜

a/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/App.xaml.cs
	namespace 	
TripTimeLine
 
{ 
public 

partial 
class 
App 
: 
Application *
{		 
public

 
App

 
(

 
)

 
{ 	
InitializeComponent 
(  
)  !
;! "
AppContainer 
.  
RegisterDependencies -
(- .
). /
;/ 0
var 
navigationService !
=" #
AppContainer$ 0
.0 1
Resolve1 8
<8 9
INavigationService9 K
>K L
(L M
)M N
;N O
navigationService 
. 
InitializeAsync -
(- .
). /
;/ 0
} 	
	protected 
override 
void 
OnStart  '
(' (
)( )
{ 	
} 	
	protected 
override 
void 
OnSleep  '
(' (
)( )
{ 	
} 	
	protected 
override 
void 
OnResume  (
(( )
)) *
{ 	
}!! 	
}"" 
}## ´
e/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/AssemblyInfo.cs
[ 
assembly 	
:	 

XamlCompilation 
( "
XamlCompilationOptions 1
.1 2
Compile2 9
)9 :
]: ;¬
l/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Common/AppContainer.cs
	namespace 	
TripTimeLine
 
. 
Common 
{ 
public 

static 
class 
AppContainer $
{ 
private 
static 

IContainer !

_container" ,
;, -
public 
static 
void  
RegisterDependencies /
(/ 0
)0 1
{ 	
var 
builder 
= 
new 
ContainerBuilder .
(. /
)/ 0
;0 1
builder 
. 
RegisterType  
<  !
TripsViewModel! /
>/ 0
(0 1
)1 2
;2 3
builder 
. 
RegisterType  
<  !
TripDetailViewModel! 4
>4 5
(5 6
)6 7
;7 8
builder 
. 
RegisterType  
<  !
NavigationService! 2
>2 3
(3 4
)4 5
.5 6
As6 8
<8 9
INavigationService9 K
>K L
(L M
)M N
;N O
builder 
. 
RegisterType  
<  !
TripsService! -
>- .
(. /
)/ 0
.0 1
As1 3
<3 4
ITripsService4 A
>A B
(B C
)C D
;D E
builder 
. 
RegisterType  
<  !!
RestServiceRepository! 6
>6 7
(7 8
)8 9
.9 :
As: <
<< =
IGenericRepository= O
>O P
(Q R
)R S
;S T

_container 
= 
builder  
.  !
Build! &
(& '
)' (
;( )
} 	
public 
static 
object 
Resolve $
($ %
Type% )
typename* 2
)2 3
{   	
return!! 

_container!! 
.!! 
Resolve!! %
(!!% &
typename!!& .
)!!. /
;!!/ 0
}"" 	
public$$ 
static$$ 
T$$ 
Resolve$$ 
<$$  
T$$  !
>$$! "
($$" #
)$$# $
{%% 	
return&& 

_container&& 
.&& 
Resolve&& %
<&&% &
T&&& '
>&&' (
(&&( )
)&&) *
;&&* +
}'' 	
}(( 
})) Ñ1
m/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Common/MockDataUtils.cs
	namespace 	
TripTimeLine
 
. 
Common 
{ 
public

 

static

 
class

 
MockDataUtils

 %
{ 
private 
static 
Trip 
mockDataObj '
=( )
new* -
Trip. 2
{ 	
Duration 
= 
$num 
, 

Kilometers 
= 
$num 
, 
FuelConsumption 
= 
$num  
,  !(
FuelConsumptionLitersPerHour (
=) *
$num+ /
,/ 0
	StartTrip 
= 
new 
	TripEvent %
{ 
Date 
= 
DateTime 
.  
Now  #
,# $
Name 
= 
$str $
} 
, 
EndTrip 
= 
new 
	TripEvent #
{ 
Date 
= 
DateTime 
.  
Now  #
+$ %
TimeSpan& .
.. /
FromDays/ 7
(7 8
$num8 9
)9 :
,: ;
Name 
= 
$str "
} 
, 

TripEvents 
= 
new  
ObservableCollection 1
<1 2
	TripEvent2 ;
>; <
{ 
new 
	TripEvent !
{   
Date!! 
=!! 
DateTime!! '
.!!' (
Now!!( +
+!!, -
TimeSpan!!. 6
.!!6 7
	FromHours!!7 @
(!!@ A
$num!!A B
)!!B C
,!!C D
Name"" 
="" 
$str"" ,
}## 
,## 
new$$ 
	TripEvent$$ !
{%% 
Date&& 
=&& 
DateTime&& '
.&&' (
Now&&( +
+&&, -
TimeSpan&&. 6
.&&6 7
	FromHours&&7 @
(&&@ A
$num&&A B
)&&B C
,&&C D
Name'' 
='' 
$str'' ,
}(( 
,(( 
new)) 
	TripEvent)) !
{** 
Date++ 
=++ 
DateTime++ '
.++' (
Now++( +
+++, -
TimeSpan++. 6
.++6 7
	FromHours++7 @
(++@ A
$num++A B
)++B C
,++C D
Name,, 
=,, 
$str,, ,
}-- 
,-- 
new.. 
	TripEvent.. #
{// 
Date00 
=00 
DateTime00 '
.00' (
Now00( +
+00, -
TimeSpan00. 6
.006 7
FromDays007 ?
(00? @
$num00@ A
)00A B
+00D E
TimeSpan00F N
.00N O
	FromHours00O X
(00X Y
$num00Y Z
)00Z [
,00[ \
Name11 
=11 
$str11 ,
}22 
,22 
new33 
	TripEvent33 !
{44 
Date55 
=55 
DateTime55 '
.55' (
Now55( +
+55, -
TimeSpan55. 6
.556 7
FromDays557 ?
(55? @
$num55@ A
)55A B
+55C D
TimeSpan55E M
.55M N
	FromHours55N W
(55W X
$num55X Y
)55Y Z
,55Z [
Name66 
=66 
$str66 ,
}77 
,77 
new88 
	TripEvent88 !
{99 
Date:: 
=:: 
DateTime:: '
.::' (
Now::( +
+::, -
TimeSpan::. 6
.::6 7
FromDays::7 ?
(::? @
$num::@ A
)::A B
+::C D
TimeSpan::E M
.::M N
	FromHours::N W
(::W X
$num::X Y
)::Y Z
,::Z [
Name;; 
=;; 
$str;; ,
}<< 
,<< 
new== 
	TripEvent== #
{>> 
Date?? 
=?? 
DateTime?? '
.??' (
Now??( +
+??, -
TimeSpan??. 6
.??6 7
FromDays??7 ?
(??? @
$num??@ A
)??A B
+??D E
TimeSpan??F N
.??N O
	FromHours??O X
(??X Y
$num??Y Z
)??Z [
,??[ \
Name@@ 
=@@ 
$str@@ ,
}AA 
,AA 
newBB 
	TripEventBB !
{CC 
DateDD 
=DD 
DateTimeDD '
.DD' (
NowDD( +
+DD, -
TimeSpanDD. 6
.DD6 7
FromDaysDD7 ?
(DD? @
$numDD@ A
)DDA B
+DDC D
TimeSpanDDE M
.DDM N
	FromHoursDDN W
(DDW X
$numDDX Y
)DDY Z
,DDZ [
NameEE 
=EE 
$strEE ,
}FF 
,FF 
newGG 
	TripEventGG !
{HH 
DateII 
=II 
DateTimeII '
.II' (
NowII( +
+II, -
TimeSpanII. 6
.II6 7
FromDaysII7 ?
(II? @
$numII@ A
)IIA B
+IIC D
TimeSpanIIE M
.IIM N
	FromHoursIIN W
(IIW X
$numIIX Y
)IIY Z
,IIZ [
NameJJ 
=JJ 
$strJJ ,
}KK 
}LL 
}MM 	
;MM	 

publicOO 
staticOO 
IEnumerableOO !
<OO! "
	GroupListOO" +
<OO+ ,
	TripEventOO, 5
>OO5 6
>OO6 7
PreviewDataOO8 C
=>OOD F
mockDataObjOOG R
.OOR S
GetEventsGroupedOOS c
(OOc d
)OOd e
;OOe f
publicQQ 
staticQQ 
stringQQ "
GetJsonDataFromServiceQQ 3
(QQ3 4
)QQ4 5
{RR 	
returnSS 
JsonConvertSS 
.SS 
SerializeObjectSS .
(SS. /
mockDataObjSS/ :
)SS: ;
;SS; <
}TT 	
}UU 
}VV Ê 
p/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Common/ViewModelLocator.cs
	namespace 	
TripTimeLine
 
. 
Common 
{ 
public 

static 
class 
ViewModelLocator (
{		 
public

 
static

 
readonly

 
BindableProperty

 /%
AutoWireViewModelProperty

0 I
=

J K
BindableProperty 
. 
CreateAttached ,
(, -
$str- @
,@ A
typeofB H
(H I
boolI M
)M N
,N O
typeof 
( 
ViewModelLocator (
)( )
,) *
default+ 2
(2 3
bool3 7
)7 8
,8 9
propertyChanged  
:  !&
OnAutoWireViewModelChanged" <
)< =
;= >
public 
static 
bool  
GetAutoWireViewModel /
(/ 0
BindableObject0 >
bindable? G
)G H
{ 	
return 
( 
bool 
) 
bindable !
.! "
GetValue" *
(* +%
AutoWireViewModelProperty+ D
)D E
;E F
} 	
public 
static 
void  
SetAutoWireViewModel /
(/ 0
BindableObject0 >
bindable? G
,G H
boolI M
valueN S
)S T
{ 	
bindable 
. 
SetValue 
( %
AutoWireViewModelProperty 7
,7 8
value9 >
)> ?
;? @
} 	
private 
static 
void &
OnAutoWireViewModelChanged 6
(6 7
BindableObject7 E
bindableF N
,N O
objectP V
oldValueW _
,_ `
objecta g
newValueh p
)p q
{ 	
if 
( 
! 
( 
bindable 
is 
Element %
view& *
)* +
)+ ,
{ 
return 
; 
} 
var   
viewType   
=   
view   
.    
GetType    '
(  ' (
)  ( )
;  ) *
if!! 
(!! 
viewType!! 
.!! 
FullName!! !
!=!!" $
null!!% )
)!!) *
{"" 
var## 
viewName## 
=## 
viewType## '
.##' (
FullName##( 0
.##0 1
Replace##1 8
(##8 9
$str##9 B
,##B C
$str##D R
)##R S
;##S T
var$$ 
viewAssemblyName$$ $
=$$% &
viewType$$' /
.$$/ 0
GetTypeInfo$$0 ;
($$; <
)$$< =
.$$= >
Assembly$$> F
.$$F G
FullName$$G O
;$$O P
var%% 
viewModelName%% !
=%%" #
string%%$ *
.%%* +
Format%%+ 1
(%%1 2
CultureInfo%%2 =
.%%= >
InvariantCulture%%> N
,%%N O
$str%%P _
,%%_ `
viewName%%a i
,%%i j
viewAssemblyName%%k {
)%%{ |
;%%| }
var'' 
viewModelType'' !
=''" #
Type''$ (
.''( )
GetType'') 0
(''0 1
viewModelName''1 >
)''> ?
;''? @
if(( 
((( 
viewModelType(( !
==((" $
null((% )
)(() *
{)) 
return** 
;** 
}++ 
var-- 
	viewModel-- 
=-- 
AppContainer--  ,
.--, -
Resolve--- 4
(--4 5
viewModelType--5 B
)--B C
;--C D
view.. 
... 
BindingContext.. #
=..$ %
	viewModel..& /
;../ 0
}// 
}00 	
}11 
}22  
Ç/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Contracts/Repositories/IGenericRepository.cs
	namespace 	
TripTimeLine
 
. 
	Contracts  
.  !
Repositories! -
{ 
public 

	interface 
IGenericRepository '
{ 
Task 
< 
T 
> 
GetAsync 
< 
T 
> 
( 
string "
uri# &
,& '
string( .
	authToken/ 8
=9 :
$str; =
)= >
;> ?
Task 
< 
T 
> 
	PostAsync 
< 
T 
> 
( 
string #
uri$ '
,' (
T) *
data+ /
,/ 0
string1 7
	authToken8 A
=B C
$strD F
)F G
;G H
Task		 
<		 
T		 
>		 
PutAsync		 
<		 
T		 
>		 
(		 
string		 "
uri		# &
,		& '
T		( )
data		* .
,		. /
string		0 6
	authToken		7 @
=		A B
$str		C E
)		E F
;		F G
Task

 
DeleteAsync

 
(

 
string

 
uri

  #
,

# $
string

% +
	authToken

, 5
=

6 7
$str

8 :
)

: ;
;

; <
Task 
< 
R 
> 
	PostAsync 
< 
T 
, 
R 
> 
(  
string  &
uri' *
,* +
T, -
data. 2
,2 3
string4 :
	authToken; D
=E F
$strG I
)I J
;J K
} 
} “
~/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Contracts/Services/INavigationService.cs
	namespace 	
TripTimeLine
 
. 
	Contracts  
.  !
Services! )
{ 
public 

	interface 
INavigationService '
{ 
Task 
InitializeAsync 
( 
) 
; 
Task

 
NavigateToAsync

 
<

 

TViewModel

 '
>

' (
(

( )
)

) *
where

+ 0

TViewModel

1 ;
:

< =
BaseViewModel

> K
;

K L
Task 
NavigateToAsync 
< 

TViewModel '
>' (
(( )
object) /
	parameter0 9
)9 :
where; @

TViewModelA K
:L M
BaseViewModelN [
;[ \
} 
} ü
y/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Contracts/Services/ITripsService.cs
	namespace 	
TripTimeLine
 
. 
	Contracts  
.  !
Services! )
{ 
public 

	interface 
ITripsService "
{ 
Task 
< 
Trip 
> 
GetTrip 
( 
string !
tripId" (
)( )
;) *
}		 
}

 ø
Å/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Converters/BooleanInverterValueConverter.cs
	namespace 	
TripTimeLine
 
. 

Converters !
{ 
public 

class )
BooleanInverterValueConverter .
:/ 0
IValueConverter1 @
{ 
public		 
object		 
Convert		 
(		 
object		 $
value		% *
,		* +
Type		, 0

targetType		1 ;
,		; <
object		= C
	parameter		D M
,		M N
CultureInfo		O Z
culture		[ b
)		b c
{

 	
if 
( 
value 
is 
bool 
	boolValue '
)' (
{ 
return 
! 
	boolValue !
;! "
} 
return 
false 
; 
} 	
public 
object 
ConvertBack !
(! "
object" (
value) .
,. /
Type0 4

targetType5 ?
,? @
objectA G
	parameterH Q
,Q R
CultureInfoS ^
culture_ f
)f g
{ 	
throw 
new !
NotSupportedException +
(+ ,
), -
;- .
} 	
} 
} Æ
}/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Converters/DateTimePlusDaysConverter.cs
	namespace 	
TripTimeLine
 
. 

Converters !
{ 
public 

class %
DateTimePlusDaysConverter *
:+ ,
IValueConverter- <
{ 
public

 
object

 
Convert

 
(

 
object

 $
value

% *
,

* +
Type

, 0

targetType

1 ;
,

; <
object

= C
	parameter

D M
,

M N
CultureInfo

O Z
culture

[ b
)

b c
{ 	
var 
days 
= 
$num 
; 
if 
( 
	parameter 
!= 
null !
&&" $
	parameter% .
is/ 1
int2 5
numDays6 =
)= >
{ 
days 
= 
numDays 
; 
} 
if 
( 
value 
is 
string 
strDate &
)& '
{ 
var 
date 
= 
DateTime #
.# $

ParseExact$ .
(. /
strDate/ 6
,6 7
$str8 D
,D E
CultureInfoF Q
.Q R
InvariantCultureR b
)b c
;c d
date 
= 
date 
. 
AddDays #
(# $
days$ (
)( )
;) *
return 
date 
. 
ToString $
($ %
$str% 1
)1 2
;2 3
} 
return 
value 
; 
} 	
public 
object 
ConvertBack !
(! "
object" (
value) .
,. /
Type0 4

targetType5 ?
,? @
objectA G
	parameterH Q
,Q R
CultureInfoS ^
culture_ f
)f g
{ 	
throw 
new !
NotSupportedException +
(+ ,
), -
;- .
}   	
}!! 
}"" ˘
É/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/CustomControls/ActivityIndicatorPanel.xaml.cs
	namespace 	
TripTimeLine
 
. 
CustomControls %
{ 
public 

partial 
class "
ActivityIndicatorPanel /
:0 1
ContentView2 =
{ 
public "
ActivityIndicatorPanel %
(% &
)& '
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
public 
string 
	TitleText 
{ 	
get 
{ 
return 
base 
. 
GetValue &
(& '
TitleTextProperty' 8
)8 9
.9 :
ToString: B
(B C
)C D
;D E
}F G
set 
{ 
base 
. 
SetValue 
(  
TitleTextProperty  1
,1 2
value3 8
)8 9
;9 :
}; <
} 	
public 
static 
readonly 
BindableProperty /
TitleTextProperty0 A
=B C
BindablePropertyD T
.T U
CreateU [
([ \
propertyName9 E
:E F
nameofG M
(M N
	TitleTextN W
)W X
,X Y

returnType9 C
:C D
typeofE K
(K L
stringL R
)R S
,S T
declaringType9 F
:F G
typeofH N
(N O"
ActivityIndicatorPanelO e
)e f
,f g
defaultValue9 E
:E F
stringG M
.M N
EmptyN S
,S T
defaultBindingMode9 K
:K L
BindingModeM X
.X Y
DefaultY `
,` a
propertyChanged9 H
:H I$
TitleTextPropertyChangedJ b
)b c
;c d
private 
static 
void $
TitleTextPropertyChanged 4
(4 5
BindableObject5 C
bindableD L
,L M
objectN T
oldValueU ]
,] ^
object_ e
newValuef n
)n o
{ 	
var 
control 
= 
bindable "
as# %"
ActivityIndicatorPanel& <
;< =
control 
. 
title 
. 
Text 
=  
newValue! )
.) *
ToString* 2
(2 3
)3 4
;4 5
} 	
} 
}   ë:
{/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/CustomControls/TripDetailIcon.xaml.cs
	namespace 	
TripTimeLine
 
. 
CustomControls %
{ 
[ 
DesignTimeVisible 
( 
true 
) 
] 
public 

partial 
class 
TripDetailIcon '
:( )
ContentView* 5
{ 
public		 
TripDetailIcon		 
(		 
)		 
{

 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
string 
	TitleText 
{ 	
get 
{ 
return 
base 
. 
GetValue &
(& '
TitleTextProperty' 8
)8 9
.9 :
ToString: B
(B C
)C D
;D E
}F G
set 
{ 
base 
. 
SetValue 
(  
TitleTextProperty  1
,1 2
value3 8
)8 9
;9 :
}; <
} 	
public 
double 
FontSize 
{ 	
get 
{ 
return 
double 
.  
Parse  %
(% &
base& *
.* +
GetValue+ 3
(3 4
FontSizeProperty4 D
)D E
.E F
ToStringF N
(N O
)O P
)P Q
;Q R
}S T
set 
{ 
base 
. 
SetValue 
(  
FontSizeProperty  0
,0 1
value2 7
)7 8
;8 9
}: ;
} 	
public 
string 
Image 
{ 	
get 
{ 
return 
base 
. 
GetValue &
(& '
ImageProperty' 4
)4 5
.5 6
ToString6 >
(> ?
)? @
;@ A
}B C
set 
{ 
base 
. 
SetValue 
(  
ImageProperty  -
,- .
value/ 4
)4 5
;5 6
}7 8
} 	
public   
static   
readonly   
BindableProperty   /
TitleTextProperty  0 A
=  B C
BindableProperty  D T
.  T U
Create  U [
(  [ \
propertyName!!9 E
:!!E F
nameof!!G M
(!!M N
	TitleText!!N W
)!!W X
,!!X Y

returnType""9 C
:""C D
typeof""E K
(""K L
string""L R
)""R S
,""S T
declaringType##9 F
:##F G
typeof##H N
(##N O
TripDetailIcon##O ]
)##] ^
,##^ _
defaultValue$$9 E
:$$E F
string$$G M
.$$M N
Empty$$N S
,$$S T
defaultBindingMode%%9 K
:%%K L
BindingMode%%M X
.%%X Y
Default%%Y `
,%%` a
propertyChanged&&9 H
:&&H I$
TitleTextPropertyChanged&&J b
)&&b c
;&&c d
public(( 
static(( 
readonly(( 
BindableProperty(( /
FontSizeProperty((0 @
=((A B
BindableProperty((C S
.((S T
Create((T Z
(((Z [
propertyName))8 D
:))D E
nameof))F L
())L M
FontSize))M U
)))U V
,))V W

returnType**8 B
:**B C
typeof**D J
(**J K
double**K Q
)**Q R
,**R S
declaringType++8 E
:++E F
typeof++G M
(++M N
TripDetailIcon++N \
)++\ ]
,++] ^
defaultValue,,8 D
:,,D E
$num,,F J
,,,J K
defaultBindingMode--8 J
:--J K
BindingMode--L W
.--W X
Default--X _
,--_ `
propertyChanged..8 G
:..G H#
FontSizePropertyChanged..I `
)..` a
;..a b
public22 
static22 
BindableProperty22 &
ImageProperty22' 4
=225 6
BindableProperty227 G
.22G H
Create22H N
(22N O
propertyName338 D
:33D E
nameof33F L
(33L M
Image33M R
)33R S
,33S T

returnType448 B
:44B C
typeof44D J
(44J K
string44K Q
)44Q R
,44R S
declaringType558 E
:55E F
typeof55G M
(55M N
TripDetailIcon55N \
)55\ ]
,55] ^
defaultValue668 D
:66D E
string66F L
.66L M
Empty66M R
,66R S
defaultBindingMode778 J
:77J K
BindingMode77L W
.77W X
TwoWay77X ^
,77^ _
propertyChanged888 G
:88G H&
ImageSourcePropertyChanged88I c
)88c d
;88d e
private<< 
static<< 
void<< $
TitleTextPropertyChanged<< 4
(<<4 5
BindableObject<<5 C
bindable<<D L
,<<L M
object<<N T
oldValue<<U ]
,<<] ^
object<<_ e
newValue<<f n
)<<n o
{== 	
var>> 
control>> 
=>> 
bindable>> "
as>># %
TripDetailIcon>>& 4
;>>4 5
control?? 
.?? 
title?? 
.?? 
Text?? 
=??  
newValue??! )
.??) *
ToString??* 2
(??2 3
)??3 4
;??4 5
}@@ 	
privateBB 
staticBB 
voidBB #
FontSizePropertyChangedBB 3
(BB3 4
BindableObjectBB4 B
bindableBBC K
,BBK L
objectBBM S
oldValueBBT \
,BB\ ]
objectBB^ d
newValueBBe m
)BBm n
{CC 	
varDD 
controlDD 
=DD 
bindableDD "
asDD# %
TripDetailIconDD& 4
;DD4 5
controlEE 
.EE 
titleEE 
.EE 
FontSizeEE "
=EE# $
doubleEE% +
.EE+ ,
ParseEE, 1
(EE1 2
newValueEE2 :
.EE: ;
ToStringEE; C
(EEC D
)EED E
)EEE F
;EEF G
}FF 	
privateHH 
staticHH 
voidHH &
ImageSourcePropertyChangedHH 6
(HH6 7
BindableObjectHH7 E
bindableHHF N
,HHN O
objectHHP V
oldValueHHW _
,HH_ `
objectHHa g
newValueHHh p
)HHp q
{II 	
varJJ 
controlJJ 
=JJ 
(JJ 
TripDetailIconJJ )
)JJ) *
bindableJJ* 2
;JJ2 3
controlKK 
.KK 
imageKK 
.KK 
SourceKK  
=KK! "
ImageSourceKK# .
.KK. /
FromFileKK/ 7
(KK7 8
newValueKK8 @
.KK@ A
ToStringKKA I
(KKI J
)KKJ K
)KKK L
;KKL M
}LL 	
}MM 
}NN æ
r/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Extensions/TripExtensions.cs
	namespace 	
TripTimeLine
 
. 

Extensions !
{ 
public 

static 
class 
TripExtensions &
{		 
public

 
static

 
IEnumerable

 !
<

! "
	GroupList

" +
<

+ ,
	TripEvent

, 5
>

5 6
>

6 7
GetEventsGrouped

8 H
(

H I
this

I M
Trip

N R
trip

S W
)

W X
{ 	
var 
	eventList 
= 
new  
ObservableCollection  4
<4 5
	GroupList5 >
<> ?
	TripEvent? H
>H I
>I J
(J K
)K L
;L M
var 
queryEventsByDate !
=" #
from 
ev 
in 
trip 
.  

TripEvents  *
group 
ev 
by 
ev 
. 
Date #
.# $
Day$ '
into( ,
newGroup- 5
orderby 
newGroup  
.  !
Key! $
select 
newGroup 
;  
foreach 
( 
var 
	nameGroup "
in# %
queryEventsByDate& 7
)7 8
{ 
var 
	tripEvent 
= 
new  #
	GroupList$ -
<- .
	TripEvent. 7
>7 8
(8 9
)9 :
;: ;
foreach 
( 
var 
	TripEvent &
in' )
	nameGroup* 3
)3 4
{ 
	tripEvent 
. 
Add !
(! "
	TripEvent" +
)+ ,
;, -
} 
	tripEvent 
. 
Heading !
=" #
	tripEvent$ -
[- .
$num. /
]/ 0
.0 1
Date1 5
.5 6
ToString6 >
(> ?
$str? K
)K L
;L M
	eventList 
. 
Add 
( 
	tripEvent '
)' (
;( )
}   
return"" 
	eventList"" 
;"" 
}## 	
}$$ 
}%% Ó
i/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Models/GroupList.cs
	namespace 	
TripTimeLine
 
. 
Models 
{ 
[ 
DesignTimeVisible 
( 
true 
) 
] 
public 

class 
	GroupList 
< 
T 
> 
:  
ObservableCollection 3
<3 4
T4 5
>5 6
{ 
public		 
string		 
Heading		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

  
ObservableCollection

 #
<

# $
T

$ %
>

% &
Events

' -
=>

. 0
this

1 5
;

5 6
} 
} ¬
d/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Models/Trip.cs
	namespace 	
TripTimeLine
 
. 
Models 
{ 
public 

class 
Trip 
{ 
public		 
int		 
Duration		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public 
double 

Kilometers  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
double 
FuelConsumption %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
double (
FuelConsumptionLitersPerHour 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
	TripEvent 
	StartTrip "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
	TripEvent 
EndTrip  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IEnumerable 
< 
	TripEvent $
>$ %

TripEvents& 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
IEnumerable 
< 
	GroupList $
<$ %
	TripEvent% .
>. /
>/ 0
CreateGroupList1 @
(@ A
)A B
{ 	
var 
	eventList 
= 
new  
ObservableCollection  4
<4 5
	GroupList5 >
<> ?
	TripEvent? H
>H I
>I J
(J K
)K L
;L M
var 
queryEventsByDate !
=" #
from 
ev 
in 

TripEvents %
group 
ev 
by 
ev 
. 
Date #
.# $
Day$ '
into( ,
newGroup- 5
orderby 
newGroup  
.  !
Key! $
select 
newGroup 
;  
foreach!! 
(!! 
var!! 
	nameGroup!! "
in!!# %
queryEventsByDate!!& 7
)!!7 8
{"" 
var## 
	tripEvent## 
=## 
new##  #
	GroupList##$ -
<##- .
	TripEvent##. 7
>##7 8
(##8 9
)##9 :
;##: ;
foreach%% 
(%% 
var%% 
	TripEvent%% &
in%%' )
	nameGroup%%* 3
)%%3 4
{&& 
	tripEvent'' 
.'' 
Add'' !
(''! "
	TripEvent''" +
)''+ ,
;'', -
}(( 
	tripEvent** 
.** 
Heading** !
=**" #
	tripEvent**$ -
[**- .
$num**. /
]**/ 0
.**0 1
Date**1 5
.**5 6
ToString**6 >
(**> ?
$str**? K
)**K L
;**L M
	eventList,, 
.,, 
Add,, 
(,, 
	tripEvent,, '
),,' (
;,,( )
}-- 
return// 
	eventList// 
;// 
}00 	
}22 
}33 Â
i/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Models/TripEvent.cs
	namespace 	
TripTimeLine
 
. 
Models 
{ 
public 

class 
	TripEvent 
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
}

 
} ‚
{/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Repositories/RestServiceRepository.cs
	namespace 	
TripTimeLine
 
. 
Repositories #
{ 
public		 

class		 !
RestServiceRepository		 &
:		' (
IGenericRepository		) ;
{

 
public 
async 
Task 
< 
T 
> 
GetAsync %
<% &
T& '
>' (
(( )
string) /
uri0 3
,3 4
string5 ;
	authToken< E
=F G
$strH J
)J K
{ 	
await 
Task 
. 
Delay 
( 
$num !
)! "
;" #
var 

jsonResult 
= 
MockDataUtils *
.* +"
GetJsonDataFromService+ A
(A B
)B C
;C D
return 
JsonConvert 
. 
DeserializeObject 0
<0 1
T1 2
>2 3
(3 4

jsonResult4 >
)> ?
;? @
} 	
public 
Task 
DeleteAsync 
(  
string  &
uri' *
,* +
string, 2
	authToken3 <
== >
$str? A
)A B
{ 	
throw 
new !
NotSupportedException +
(+ ,
), -
;- .
} 	
public 
Task 
< 
T 
> 
	PostAsync  
<  !
T! "
>" #
(# $
string$ *
uri+ .
,. /
T0 1
data2 6
,6 7
string8 >
	authToken? H
=I J
$strK M
)M N
{ 	
throw 
new !
NotSupportedException +
(+ ,
), -
;- .
} 	
public 
Task 
< 
R 
> 
	PostAsync  
<  !
T! "
," #
R$ %
>% &
(& '
string' -
uri. 1
,1 2
T3 4
data5 9
,9 :
string; A
	authTokenB K
=L M
$strN P
)P Q
{ 	
throw 
new !
NotSupportedException +
(+ ,
), -
;- .
}   	
public"" 
Task"" 
<"" 
T"" 
>"" 
PutAsync"" 
<""  
T""  !
>""! "
(""" #
string""# )
uri""* -
,""- .
T""/ 0
data""1 5
,""5 6
string""7 =
	authToken""> G
=""H I
$str""J L
)""L M
{## 	
throw$$ 
new$$ !
NotSupportedException$$ +
($$+ ,
)$$, -
;$$- .
}%% 	
}&& 
}'' ˘+
s/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Services/NavigationService.cs
	namespace 	
TripTimeLine
 
. 
Services 
{ 
public 

class 
NavigationService "
:# $
INavigationService% 7
{ 
private 

Dictionary 
< 
Type 
,  
Type! %
>% &"
mappingViewModelToView' =
;= >
public 
NavigationService  
(  !
)! "
{ 	"
mappingViewModelToView "
=# $
new% (

Dictionary) 3
<3 4
Type4 8
,8 9
Type: >
>> ?
(? @
)@ A
;A B
CreateMappings 
( 
) 
; 
} 	
public 
async 
Task 
InitializeAsync )
() *
)* +
{ 	
await 
NavigateToAsync !
<! "
TripsViewModel" 0
>0 1
(1 2
)2 3
;3 4
} 	
public 
Task 
NavigateToAsync #
<# $

TViewModel$ .
>. /
(/ 0
)0 1
where2 7

TViewModel8 B
:C D
BaseViewModelE R
{ 	
return !
CustomNavigateToAsync (
(( )
typeof) /
(/ 0

TViewModel0 :
): ;
,; <
null= A
)A B
;B C
} 	
public   
Task   
NavigateToAsync   #
<  # $

TViewModel  $ .
>  . /
(  / 0
object  0 6
	parameter  7 @
)  @ A
where  B G

TViewModel  H R
:  S T
BaseViewModel  U b
{!! 	
return"" !
CustomNavigateToAsync"" (
(""( )
typeof"") /
(""/ 0

TViewModel""0 :
)"": ;
,""; <
	parameter""= F
)""F G
;""G H
}## 	
private%% 
async%% 
Task%% !
CustomNavigateToAsync%% 0
(%%0 1
Type%%1 5
viewModelType%%6 C
,%%C D
object%%E K
	parameter%%L U
)%%U V
{&& 	
var(( 
page(( 
=(( 

CreatePage(( !
(((! "
viewModelType((" /
,((/ 0
	parameter((1 :
)((: ;
;((; <
if** 
(** 
page** 
is** 
	TripsView** !
)**! "
{++ 
var,, 
nv,, 
=,, 
new,, 
NavigationView,, +
(,,+ ,
page,,, 0
),,0 1
;,,1 2
Application-- 
.-- 
Current-- #
.--# $
MainPage--$ ,
=--- .
nv--/ 1
;--1 2
}// 
else00 
if00 
(00 
Application00  
.00  !
Current00! (
.00( )
MainPage00) 1
is002 4
NavigationView005 C
navigationPage00D R
)00R S
{11 
await22 
navigationPage22 $
.22$ %
	PushAsync22% .
(22. /
page22/ 3
)223 4
;224 5
}33 
else44 
{55 
throw66 
new66 !
NotSupportedException66 /
(66/ 0
)660 1
;661 2
}77 
await:: 
(:: 
page:: 
.:: 
BindingContext:: &
as::' )
BaseViewModel::* 7
)::7 8
.::8 9
InitializeAsync::9 H
(::H I
	parameter::I R
)::R S
;::S T
};; 	
private== 
Page== 

CreatePage== 
(==  
Type==  $
viewModelType==% 2
,==2 3
object==4 :
	parameter==; D
)==D E
{>> 	
Type?? 
pageType?? 
=?? "
mappingViewModelToView?? 2
[??2 3
viewModelType??3 @
]??@ A
;??A B
if@@ 
(@@ 
pageType@@ 
==@@ 
null@@  
)@@  !
throw@@" '
new@@( +
	Exception@@, 5
(@@5 6
$"@@6 8
$str@@8 O
{@@O P
viewModelType@@P ]
}@@] ^
"@@^ _
)@@_ `
;@@` a
PageBB 
pageBB 
=BB 
	ActivatorBB !
.BB! "
CreateInstanceBB" 0
(BB0 1
pageTypeBB1 9
)BB9 :
asBB; =
PageBB> B
;BBB C
returnCC 
pageCC 
;CC 
}DD 	
privateGG 
voidGG 
CreateMappingsGG #
(GG# $
)GG$ %
{HH 	"
mappingViewModelToViewII "
.II" #
AddII# &
(II& '
typeofII' -
(II- .
TripDetailViewModelII. A
)IIA B
,IIB C
typeofIID J
(IIJ K
TripDetailViewIIK Y
)IIY Z
)IIZ [
;II[ \"
mappingViewModelToViewJJ "
.JJ" #
AddJJ# &
(JJ& '
typeofJJ' -
(JJ- .
TripsViewModelJJ. <
)JJ< =
,JJ= >
typeofJJ? E
(JJE F
	TripsViewJJF O
)JJO P
)JJP Q
;JJQ R
}KK 	
}LL 
}MM ¿	
n/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Services/TripsService.cs
	namespace 	
TripTimeLine
 
. 
Services 
{ 
public 

class 
TripsService 
: 
ITripsService  -
{		 
private

 
readonly

 
IGenericRepository

 +

repository

, 6
;

6 7
public 
TripsService 
( 
IGenericRepository .

repository/ 9
)9 :
{ 	
this 
. 

repository 
= 

repository (
;( )
} 	
public 
async 
Task 
< 
Trip 
> 
GetTrip  '
(' (
string( .
tripId/ 5
)5 6
{ 	
return 
await 

repository #
.# $
GetAsync$ ,
<, -
Trip- 1
>1 2
(2 3
$str3 ?
,? @
$strA L
)L M
;M N
} 	
} 
} ®
v/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/ViewModels/Base/BaseViewModel.cs
	namespace 	
TripTimeLine
 
. 

ViewModels !
.! "
Base" &
{ 
public 

class 
BaseViewModel 
:  
BindableObject! /
{ 
private		 
bool		 
isBusy		 
;		 
	protected

 
readonly

 
INavigationService

 -
navigationService

. ?
;

? @
public 
BaseViewModel 
( 
INavigationService /
navigationService0 A
)A B
{ 	
this 
. 
navigationService "
=# $
navigationService% 6
;6 7
} 	
public 
bool 
IsBusy 
{ 	
get 
=> 
isBusy 
; 
set 
{ 
isBusy 
= 
value 
; 
OnPropertyChanged !
(! "
)" #
;# $
} 
} 	
public 
virtual 
Task 
InitializeAsync +
(+ ,
object, 2
	parameter3 <
)< =
{ 	
return 
Task 
. 

FromResult "
(" #
false# (
)( )
;) *
} 	
} 
}   è6
w/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/ViewModels/TripDetailViewModel.cs
	namespace 	
TripTimeLine
 
. 

ViewModels !
{ 
public

 

class

 
TripDetailViewModel

 $
:

% &
BaseViewModel

' 4
{ 
private 
readonly 
ITripsService &
tripsService' 3
;3 4
private 
Trip 
trip 
; 
private 
string 
tripTime 
;  
private 
string 
tripKm 
; 
private 
string 
tripFuelConsumption *
;* +
private 
string ,
 tripFuelConsumptionLitersPerHour 7
;7 8
private 
	TripEvent 
	tripStart #
;# $
private 
	TripEvent 
tripEnd !
;! "
private 
double &
transparentViewLabelHeight 1
;1 2
private 
IEnumerable 
< 
	GroupList %
<% &
	TripEvent& /
>/ 0
>0 1

tripEvents2 <
;< =
public 
TripDetailViewModel "
(" #
ITripsService# 0
tripsService1 =
,= >
INavigationService? Q
navigationServiceR c
)c d
:e f
baseg k
(k l
navigationServicel }
)} ~
{ 	
this 
. 
tripsService 
= 
tripsService  ,
;, -
base 
. 
IsBusy 
= 
true 
; 
} 	
public 
string 
TripTime 
{   	
get!! 
=>!! 
tripTime!! 
;!! 
set"" 
{## 
tripTime$$ 
=$$ 
value$$  
;$$  !
OnPropertyChanged%% !
(%%! "
)%%" #
;%%# $
}&& 
}'' 	
public)) 
string)) 
TripKm)) 
{** 	
get++ 
=>++ 
tripKm++ 
;++ 
set,, 
{-- 
tripKm.. 
=.. 
value.. 
;.. 
OnPropertyChanged// !
(//! "
)//" #
;//# $
}00 
}11 	
public33 
string33 
TripFuelConsumption33 )
{44 	
get55 
=>55 
tripFuelConsumption55 &
;55& '
set66 
{77 
tripFuelConsumption88 #
=88$ %
value88& +
;88+ ,
OnPropertyChanged99 !
(99! "
)99" #
;99# $
}:: 
};; 	
public== 
string== ,
 TripFuelConsumptionLitersPerHour== 6
{>> 	
get?? 
=>?? ,
 tripFuelConsumptionLitersPerHour?? 3
;??3 4
set@@ 
{AA ,
 tripFuelConsumptionLitersPerHourBB 0
=BB1 2
valueBB3 8
;BB8 9
OnPropertyChangedCC !
(CC! "
)CC" #
;CC# $
}DD 
}EE 	
publicGG 
	TripEventGG 
	TripStartGG "
{HH 	
getII 
=>II 
	tripStartII 
;II 
setJJ 
{KK 
	tripStartLL 
=LL 
valueLL !
;LL! "
OnPropertyChangedMM !
(MM! "
)MM" #
;MM# $
}NN 
}OO 	
publicQQ 
	TripEventQQ 
TripEndQQ  
{RR 	
getSS 
=>SS 
tripEndSS 
;SS 
setTT 
{UU 
tripEndVV 
=VV 
valueVV 
;VV  
OnPropertyChangedWW !
(WW! "
)WW" #
;WW# $
}XX 
}YY 	
public\\ 
IEnumerable\\ 
<\\ 
	GroupList\\ $
<\\$ %
	TripEvent\\% .
>\\. /
>\\/ 0

TripEvents\\1 ;
{]] 	
get^^ 
=>^^ 

tripEvents^^ 
;^^ 
set__ 
{`` 

tripEventsaa 
=aa 
valueaa "
;aa" #
OnPropertyChangedbb !
(bb! "
)bb" #
;bb# $
}cc 
}dd 	
publicff 
doubleff &
TransparentViewLabelHeightff 0
{gg 	
gethh 
=>hh &
transparentViewLabelHeighthh -
;hh- .
setii 
{jj &
transparentViewLabelHeightkk *
=kk+ ,
valuekk- 2
;kk2 3
OnPropertyChangedll !
(ll! "
)ll" #
;ll# $
}mm 
}nn 	
publicpp 
asyncpp 
overridepp 
Taskpp "
InitializeAsyncpp# 2
(pp2 3
objectpp3 9
	parameterpp: C
)ppC D
{qq 	
IsBusyrr 
=rr 
truerr 
;rr 
tripss 
=ss 
awaitss 
tripsServicess %
.ss% &
GetTripss& -
(ss- .
	parameterss. 7
asss8 :
stringss; A
)ssA B
;ssB C
DrawDatatt 
(tt 
)tt 
;tt 
IsBusyuu 
=uu 
falseuu 
;uu 
}vv 	
privatexx 
voidxx 
DrawDataxx 
(xx 
)xx 
{yy 	
TripTimezz 
=zz 
tripzz 
.zz 
Durationzz $
.zz$ %
ToStringzz% -
(zz- .
)zz. /
;zz/ 0
TripKm{{ 
={{ 
trip{{ 
.{{ 

Kilometers{{ $
.{{$ %
ToString{{% -
({{- .
){{. /
;{{/ 0
TripFuelConsumption|| 
=||  !
trip||" &
.||& '
FuelConsumption||' 6
.||6 7
ToString||7 ?
(||? @
)||@ A
;||A B,
 TripFuelConsumptionLitersPerHour}} ,
=}}- .
trip}}/ 3
.}}3 4(
FuelConsumptionLitersPerHour}}4 P
.}}P Q
ToString}}Q Y
(}}Y Z
)}}Z [
;}}[ \
	TripStart~~ 
=~~ 
trip~~ 
.~~ 
	StartTrip~~ &
;~~& '
TripEnd 
= 
trip 
. 
EndTrip "
;" #

TripEvents
ÄÄ 
=
ÄÄ 
trip
ÄÄ 
.
ÄÄ 
GetEventsGrouped
ÄÄ .
(
ÄÄ. /
)
ÄÄ/ 0
;
ÄÄ0 1
}
ÉÉ 	
}
ÑÑ 
}ÖÖ Ç
r/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/ViewModels/TripsViewModel.cs
	namespace 	
TripTimeLine
 
. 

ViewModels !
{ 
public		 

class		 
TripsViewModel		 
:		  !
BaseViewModel		" /
{

 
public 
TripsViewModel 
( 
INavigationService 0
navigationService1 B
)B C
:D E
baseF J
(J K
navigationServiceK \
)\ ]
{ 	
} 	
public 
ICommand 
GoToDetailCommand )
=>* ,
new- 0
Command1 8
(8 9
async9 >
(? @
obj@ C
)C D
=>E G
awaitH M

GoToDetailN X
(X Y
objY \
)\ ]
)] ^
;^ _
private 
async 
Task 

GoToDetail %
(% &
object& ,
obj- 0
)0 1
{ 	
await 
navigationService #
.# $
NavigateToAsync$ 3
<3 4
TripDetailViewModel4 G
>G H
(H I
objI L
asM O
stringP V
)V W
;W X
} 	
} 
} È
r/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Views/NavigationView.xaml.cs
	namespace 	
TripTimeLine
 
. 
Views 
{ 
public 

partial 
class 
NavigationView '
:( )
NavigationPage* 8
{ 
public 
NavigationView 
( 
) 
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
public 
NavigationView 
( 
Page "
root# '
)' (
:) *
base+ /
(/ 0
root0 4
)4 5
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ˜
Å/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Views/Templates/GroupFooterTemplate.xaml.cs
	namespace 	
TripTimeLine
 
. 
Views 
. 
	Templates &
{ 
public 

partial 
class 
GroupFooterTemplate ,
:- .
ContentView/ :
{ 
public 
GroupFooterTemplate "
(" #
)# $
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} ˜
Å/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Views/Templates/GroupHeaderTemplate.xaml.cs
	namespace 	
TripTimeLine
 
. 
Views 
. 
	Templates &
{ 
public 

partial 
class 
GroupHeaderTemplate ,
:- .
ContentView/ :
{ 
public 
GroupHeaderTemplate "
(" #
)# $
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} ›
/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Views/Templates/TripEventTemplate.xaml.cs
	namespace 	
TripTimeLine
 
. 
Views 
. 
	Templates &
{ 
[ 
DesignTimeVisible 
( 
true 
) 
] 
public 

partial 
class 
TripEventTemplate *
:+ ,
ContentView- 8
{ 
public		 
TripEventTemplate		  
(		  !
)		! "
{

 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ≥
Ç/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Views/Templates/TripStartEndTemplate.xaml.cs
	namespace 	
TripTimeLine
 
. 
Views 
. 
	Templates &
{ 
[ 
DesignTimeVisible 
( 
true 
) 
] 
public 

partial 
class  
TripStartEndTemplate -
:. /
ContentView0 ;
{ 
public		  
TripStartEndTemplate		 #
(		# $
)		$ %
{

 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
string 
TripEventIcon #
{ 	
get 
{ 
return 
base 
. 
GetValue &
(& '
ImageProperty' 4
)4 5
.5 6
ToString6 >
(> ?
)? @
;@ A
}B C
set 
{ 
base 
. 
SetValue 
(  
ImageProperty  -
,- .
value/ 4
)4 5
;5 6
}7 8
} 	
public 
static 
BindableProperty &
ImageProperty' 4
=5 6
BindableProperty7 G
.G H
CreateH N
(N O
propertyName7 C
:C D
nameofE K
(K L
TripEventIconL Y
)Y Z
,Z [

returnType7 A
:A B
typeofC I
(I J
stringJ P
)P Q
,Q R
declaringType7 D
:D E
typeofF L
(L M 
TripStartEndTemplateM a
)a b
,b c
defaultValue7 C
:C D
$strE G
,G H
defaultBindingMode7 I
:I J
BindingModeK V
.V W
TwoWayW ]
,] ^
propertyChanged7 F
:F G&
ImageSourcePropertyChangedH b
)b c
;c d
private 
static 
void &
ImageSourcePropertyChanged 6
(6 7
BindableObject7 E
bindableF N
,N O
objectP V
oldValueW _
,_ `
objecta g
newValueh p
)p q
{ 	
var 
control 
= 
(  
TripStartEndTemplate /
)/ 0
bindable0 8
;8 9
control 
. 
tripEventIcon !
.! "
Source" (
=) *
ImageSource+ 6
.6 7
FromFile7 ?
(? @
newValue@ H
.H I
ToStringI Q
(Q R
)R S
)S T
;T U
}   	
}!! 
}"" •
r/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Views/TripDetailView.xaml.cs
	namespace 	
TripTimeLine
 
. 
Views 
{ 
public 

partial 
class 
TripDetailView '
:( )
ContentPage* 5
{ 
public 
TripDetailView 
( 
) 
{		 	
InitializeComponent

 
(

  
)

  !
;

! "
} 	
	protected 
override 
void 
OnAppearing  +
(+ ,
), -
{ 	
map 
. 
PropertyChanged 
+=  "
Map_PropertyChanged# 6
;6 7
detailsPanel 
. 
PropertyChanged (
+=) +(
DetailsPanel_PropertyChanged, H
;H I
base 
. 
OnAppearing 
( 
) 
; 
} 	
private 
void (
DetailsPanel_PropertyChanged 1
(1 2
object2 8
sender9 ?
,? @
SystemA G
.G H
ComponentModelH V
.V W$
PropertyChangedEventArgsW o
ep q
)q r
{ 	
var 
vm 
= 
BindingContext #
as$ &
TripDetailViewModel' :
;: ;
vm 
. &
TransparentViewLabelHeight )
=* +
map, /
./ 0
Height0 6
+7 8
detailsPanel9 E
.E F
HeightF L
;L M
} 	
private 
void 
Map_PropertyChanged (
(( )
object) /
sender0 6
,6 7
System8 >
.> ?
ComponentModel? M
.M N$
PropertyChangedEventArgsN f
eg h
)h i
{ 	
var 
vm 
= 
BindingContext #
as$ &
TripDetailViewModel' :
;: ;
vm 
. &
TransparentViewLabelHeight )
=* +
map, /
./ 0
Height0 6
+7 8
detailsPanel9 E
.E F
HeightF L
;L M
} 	
}   
}!! ®
m/Users/nnovalbos/Documents/Proyectos/Pruebas/XamarinPruebas/TripTimeLine/TripTimeLine/Views/TripsView.xaml.cs
	namespace 	
TripTimeLine
 
. 
Views 
{ 
public 

partial 
class 
	TripsView "
:# $
ContentPage% 0
{ 
public 
	TripsView 
( 
) 
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} 