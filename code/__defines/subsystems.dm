
//Timing subsystem
//Don't run if there is an identical unique timer active
#define TIMER_UNIQUE		0x1
//For unique timers: Replace the old timer rather then not start this one
#define TIMER_OVERRIDE		0x2
//Timing should be based on how timing progresses on clients, not the sever.
//	tracking this is more expensive,
//	should only be used in conjuction with things that have to progress client side, such as animate() or sound()
#define TIMER_CLIENT_TIME	0x4
//Timer can be stopped using deltimer()
#define TIMER_STOPPABLE		0x8
//To be used with TIMER_UNIQUE
//prevents distinguishing identical timers with the wait variable
#define TIMER_NO_HASH_WAIT  0x10

#define TIMER_NO_INVOKE_WARNING 600 //number of byond ticks that are allowed to pass before the timer subsystem thinks it hung on something

#define TIMER_ID_NULL -1

//For servers that can't do with any additional lag, set this to none in flightpacks.dm in subsystem/processing.
#define FLIGHTSUIT_PROCESSING_NONE 0
#define FLIGHTSUIT_PROCESSING_FULL 1

#define INITIALIZATION_INSSATOMS 0	//New should not call Initialize
#define INITIALIZATION_INNEW_MAPLOAD 1	//New should call Initialize(TRUE)
#define INITIALIZATION_INNEW_REGULAR 2	//New should call Initialize(FALSE)

#define INITIALIZE_HINT_NORMAL   0  //Nothing happens
#define INITIALIZE_HINT_LATELOAD 1  //Call LateInitialize
#define INITIALIZE_HINT_QDEL     2  //Call qdel on the atom

//type and all subtypes should always call Initialize in New()
#define INITIALIZE_IMMEDIATE(X) ##X/New(loc, ...){\
	..();\
	if(!(atom_flags & ATOM_FLAG_INITIALIZED)) {\
		args[1] = TRUE;\
		SSatoms.InitAtom(src, args);\
	}\
}

// Subsystem init_order, from highest priority to lowest priority
// Subsystems shutdown in the reverse of the order they initialize in
// The numbers just define the ordering, they are meaningless otherwise.

#define SS_INIT_SETUP            28
#define SS_INIT_HOLOMAP          17
#define SS_INIT_GARBAGE          16
#define SS_INIT_CHEMISTRY        15
#define SS_INIT_MATERIALS        14
#define SS_INIT_PLANTS           13
#define SS_INIT_ANTAGS           12
#define SS_INIT_CULTURE          11
#define SS_INIT_MISC             10
#define SS_INIT_SKYBOX           9
#define SS_INIT_MAPPING          8
#define SS_INIT_JOBS             7
#define SS_INIT_CHAR_SETUP       6
#define SS_INIT_CIRCUIT          5
#define SS_INIT_OPEN_SPACE       4
#define SS_INIT_ATOMS            3
#define SS_INIT_ICON_UPDATE      2
#define SS_INIT_MACHINES         1
#define SS_INIT_DEFAULT          0
#define SS_INIT_AIR             -1
#define SS_INIT_MISC_LATE       -2
#define SS_INIT_ALARM           -3
#define SS_INIT_SHUTTLE         -4
#define SS_INIT_LIGHTING        -5
#define SS_INIT_XENOARCH        -10
#define SS_INIT_BAY_LEGACY      -12
#define SS_INIT_TRADE           -13
#define SS_INIT_SUPPLY          -14
#define SS_INIT_EVENTS          -15
#define SS_INIT_EVACUATION      -16
#define SS_INIT_VOTING          -17
#define SS_INIT_NANOUI          -18
#define SS_INIT_TGUI            -19
#define SS_INIT_INACTIVITY      -21
#define SS_INIT_TICKER          -20
#define SS_INIT_UNIT_TESTS      -100
// SS runlevels

#define RUNLEVEL_INIT 0
#define RUNLEVEL_LOBBY 1
#define RUNLEVEL_SETUP 2
#define RUNLEVEL_GAME 4
#define RUNLEVEL_POSTGAME 8

#define RUNLEVELS_DEFAULT (RUNLEVEL_SETUP | RUNLEVEL_GAME | RUNLEVEL_POSTGAME)
