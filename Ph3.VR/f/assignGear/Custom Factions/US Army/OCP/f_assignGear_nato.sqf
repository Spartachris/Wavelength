// F3 - Folk Assign Gear Script - OCP
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "RH_peq15";			// IR Laser
_attach2 = "RH_SFM952V";		// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "RH_compM4s";			// Holosight
_scope2 = "RH_ta31rco_2D";		// MRCO Scope - 1x - 6x
_scope3 = "hlc_optic_LRT_m14";	// SOS Scope - 18x - 75x

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "RH_m4a1_ris";
_riflemag = "30rnd_556x45_STANAG";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "RH_m4a1_ris";
_carbinemag = "30rnd_556x45_STANAG";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "RH_m4a1_ris";
_smgmag = "30rnd_556x45_STANAG";
_smgmag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "RH_m4a1_ris_m203";
_glriflemag = "30rnd_556x45_STANAG";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "3Rnd_UGL_FlareWhite_F";
_glflarered = "3Rnd_UGL_FlareRed_F";
_glflareyellow = "3Rnd_UGL_FlareYellow_F";
_glflaregreen = "3Rnd_UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "hgun_ACPC2_F";
_pistolmag = "9Rnd_45ACP_Mag";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles";

// UAV Terminal
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "rhsusf_assault_eagleaiii_ocp";		// carries 120, weighs 20
_bagmedium = "rhsusf_assault_eagleaiii_ocp";	// carries 240, weighs 30
_baglarge = "rhsusf_assault_eagleaiii_ocp"; 	// carries 320, weighs 40
_bagmediumdiver = "B_AssaultPack_blk";		// used by divers
_baguav = "B_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "O_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "O_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "O_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "O_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "O_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "O_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "O_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "O_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================
// MEDICAL
_bandage = "AGM_Bandage";					// 5 Per Soldier, 10 Per TL, 20 Per Medic
_epipen = "AGM_Epipen";  					// 1 Per Soldier, 1 Per TL, 10 Per Medic
_morphine = "AGM_Morphine";					// 1 Per Soldier, 2 Per TL, 15 Per Medic
_bloodbag = "AGM_Bloodbag";					// 0 Per Soldier, 0 Per TL, 5 Per Medic
_earplugs = "AGM_EarBuds";					// For Every Soldier
_sparebarrel = "AGM_SpareBarrel";			// For LMG/MMG Only
_keycuffs = "AGM_CableTie";                 // For FTL Only and 1 Per FTL
_maptools = "AGM_MapTools";                 // For SLs and CMD
_defusalkit = "AGM_DefusalKit";             // For Engineers
_clacker = "AGM_Clacker";                   // For Engineers

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "rhs_weap_m249_pip";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Medium MG
_MMG = "rhs_weap_m240B";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51";

// Rifleman AT
_RAT = "rhs_weap_M136";
_RATmag = "rhs_m136_mag";

// Medium AT
_MAT = "rhs_weap_fgm148";
_MATmag1 = "rhs_fgm148_magazine_AT";
_MATmag2 = "rhs_fgm148_magazine_AT";

// Surface Air
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Sniper
_SNrifle = "hlc_rifle_m14dmr";
_SNrifleMag = "hlc_20Rnd_762x51_B_M14";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["rhs_uniform_cu_ocp"];
_baseHelmet = ["rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_ESS_ocp"];
_baseGlasses = [];

// Armored vests
_lightRig = ["rhsusf_iotv_ocp_Repair"];
_mediumRig = ["rhsusf_iotv_ocp_Rifleman","rhsusf_iotv_ocp_Grenadier","rhsusf_iotv_ocp_Teamleader"]; 	// default for all infantry classes
_heavyRig = ["rhsusf_iotv_ocp_Teamleader"];

// Diver
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["rhs_uniform_cu_ocp"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["rhsusf_iotv_ocp_Repair"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["rhs_uniform_cu_ocp"];
_crewHelmet = ["rhsusf_cvc_green_helmet","rhsusf_cvc_green_ess"];
_crewRig = ["rhsusf_iotv_ocp_Repair"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["rhs_uniform_cu_ocp"];
_ghillieHelmet = ["rhs_Booniehat_ocp"];
_ghillieRig = ["rhsusf_iotv_ocp_Squadleader"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

// HANDLE CLOTHES
// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons and backpacks

	removeBackpack _unit;
	removeallweapons _unit;

	// We add a single first aid kit (FAK)

	_unit addItem _firstaid;

	// The following code removes any pre-added NVGs

	if(_nvg in (assignedItems _unit)) then
	{
		_unit unassignItem _nvg;
		_unit removeItem _nvg;
	};
	// uncomment to remove nvgoogles
	_unit linkItem _nvg;					// add universal NVG for this faction

	//removeAllItems _unit;						// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
	//_unit linkItem "ItemGPS"; 					// add gps to this faction
	//_unit linkItem "ItemMap";
	//_unit linkItem "ItemCompass";
	//_unit linkItem "ItemRadio";
	//_unit linkItem "ItemWatch";

};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_nato_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "AGM_Vector";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _maptools;
		_attachments = [_attach1,_scope2];		
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_DCrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "AGM_Vector";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _maptools;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _firstaid} forEach [1,2,3,4];
		["m"] call _backpack;
		{_unit addItem _bandage} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
		{_unit addItem _morphine} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
		{_unit addItem _epipen} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItem _bloodbag} forEach [1,2,3,4,5];
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,5];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "AGM_Vector";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _keycuffs;
		_attachments = [_attach1,_scope1];
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,4];
		_unit addweapon _AR;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		["ar"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;
		_attachments = [_attach1];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Binocular";
		["aar"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		["rat"] call _backpack;
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_MMGmag,2];
		_unit addmagazines [_MMGmag_tr,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _MMG;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		["mmg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;
		_attachments = [_attach1];
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,2];
		_unit addmagazines [_smokegrenade,2];
		["mmgag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hmgg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hmgag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		["matg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		["matag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hatg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hatag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		["mtrg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon "AGM_Vector";
		["mtrag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{
		["msamg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_grenade,1];
		_unit addweapon _SAM;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["msamag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hsamg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER
	case "hsamag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hsamag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,9];
		_unit addweapon _SNrifle;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_attachments = [_scope3];
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_scope3];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "AGM_Vector";
		_unit linkItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon "AGM_Vector";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["cc"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		["cc"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		["eng"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _defusalkit;
		_unit addItem _clacker;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		["engm"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _defusalkit;
		_unit addItem _clacker;
		_attachments = [_attach1];
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit linkItem _uavterminal;
		["uav"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: Diver
	case "div":
	{
		_unit addmagazines [_diverMag1,4];
		_unit addmagazines [_diverMag2,3];
		_unit addweapon _diverWep;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		_attachments = [_attach1,_scope1,_silencer1];
		["div"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["r"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["car"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["smg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addweapon _glrifle;
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,2];
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,4];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addmagazineCargoGlobal [_mgrenade,12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
		_unit addItemCargoGlobal [_firstaid,8];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addmagazineCargoGlobal [_mgrenade,8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,6];
	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;
