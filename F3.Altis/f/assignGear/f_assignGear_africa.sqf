f_param_backpacks = 1;
// F3 - Folk Assign Gear Script - Africa (CAF)
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co		- commander
//		dc 		- deputy commander
//		m 		- medic
//		ftl		- fire team leader
//		ar 		- automatic rifleman
//		aar		- assistant automatic rifleman
//		rat		- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		p		- air vehicle pilots
//		eng		- engineers
//		div    		- divers
//
//		r 		- rifleman
//		car		- carabineer
//		smg		- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES


// Attachments
// nil = no change
// [] = remove all
// ["acc_pointer_IR","optic_ACO_grn"] = remove all, add items.

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "arifle_mas_aks74";
_riflemag = "30Rnd_mas_545x39_mag";
_riflemag_tr = "30Rnd_mas_545x39_T_mag";
_rifle_attach = nil;

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "arifle_mas_m70ab";
_carbinemag = "30Rnd_mas_762x39_mag";
_carbinemag_tr = "30Rnd_mas_762x39_T_mag";
_carbine_attach = nil;

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "arifle_mas_akms";
_smgmag = "30Rnd_mas_762x39_mag";
_smgmag_tr = "30Rnd_mas_762x39_T_mag";
_smg_attach = nil;

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";
_diverWep_attach = nil;

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "arifle_mas_ak_74m_gl_h";
_glriflemag = "30Rnd_mas_545x39_mag";
_glriflemag_tr = "30Rnd_mas_545x39_T_mag";
_glmag = "1Rnd_HE_Grenade_shell";
_glrifle_attach = nil;

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
_pistol = "hgun_mas_mak_F";
_pistolmag = "8Rnd_mas_9x18_Mag";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles_INDEP";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "B_AssaultPack_khk";				// carries 120, weighs 20
_bagmedium = "B_FieldPack_oli";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";			// used by divers
_bagTFARlongRANGE = "tf_anprc155"; // used by ground infantry leaders
_bagTFARairBORNE = "tf_anarc164"; // used by pilots and other airborne troops

// ====================================================================================
// MEDICAL
_bandage = "AGM_Bandage";					// 5 Per Soldier, 10 Per TL, 20 Per Medic
_epipen = "AGM_Epipen";  					// 1 Per Soldier, 1 Per TL, 10 Per Medic
_morphine = "AGM_Morphine";					// 1 Per Soldier, 2 Per TL, 15 Per Medic
_bloodbag = "AGM_Bloodbag";					// 0 Per Soldier, 0 Per TL, 5 Per Medic
_earplugs = "AGM_EarBuds";					// For Every Soldier
_sparebarrle = "AGM_SpareBarrel";			// For LMG/MMG Only

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "LMG_mas_rpk_F_a";
_ARmag = "100Rnd_mas_545x39_mag";
_ARmag_tr = "100Rnd_mas_545x39_T_mag";
_AR_attach = ["acc_pointer_IR","optic_ACO_grn"];

// Medium MG
_MMG = "LMG_mas_pkm_F_h";
_MMGmag = "100Rnd_mas_762x54_mag";
_MMGmag_tr = "100Rnd_mas_762x54_T_mag";
_MMG_attach = nil;

// Rifleman AT
_RAT = "launch_NLAW_F";
_RATmag = "NLAW_F";

// Mortar
_MTR = "B_Mk6Mortar_Wpn";
_MTRmount = "B_Mk6Mortar_Support";

// Medium AT
_MAT = "launch_NLAW_F";
_MATmag1 = "NLAW_F";
_MATmag2 = "NLAW_F";

// Surface Air
_SAM = "launch_I_Titan_F";
_SAMmag = "Titan_AA";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Base
_baseUniform = ["U_mas_afr_O_uniform1","U_mas_afr_O_rebel1","U_mas_afr_O_rebel2"];
_baseHelmet = ["H_mas_afr_HelmetB","H_mas_afr_HelmetO","H_mas_afr_Booniehat_b2"];

_lightRig = ["V_mas_afr_ChestrigB_rgr","V_mas_afr_BandollierO_rgr","V_mas_afr_ChestrigB_rgr_g"];

//Note: The actually to be used armor V_PlateCarrierIA2_dgtl is bugged as of 1.10, thus light and medium rig share the same armor for now
_mediumRig = ["V_mas_afr_PlateCarrier1_rgr"]; 	// default for all infantry classes
_heavyRig = ["V_PlateCarrierIAGL_dgtl"];

// Diver
_diverUniform =  ["U_I_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIA"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_mas_afr_O_uniform4"];
_pilotHelmet = ["H_mas_afr_headset_b"];
_pilotRig = ["V_mas_afr_TacVest_o"];
// Crewman
_crewUniform = ["U_mas_afr_O_uniform4"];
_crewHelmet = ["H_mas_afr_headset_b"];
_crewRig = ["V_mas_afr_TacVest_o"];
// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init

// ====================================================================================

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

_unit addItem _nvg;
_unit assignItem _nvg;					// add universal NVG for this faction

//removeAllItems _unit;						// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
//unit addItem "ItemGPS"; 					// add gps to this faction
//_unit assignItem "ItemGPS";
//_unit addweapon "ItemMap";
//_unit addweapon "ItemCompass";
//_unit addweapon "ItemRadio";
//_unit addweapon "ItemWatch";

// ====================================================================================

// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		// BACKPACK: MEDIC
		case "m":
		{
			// BACKPACK: LIGHT
			if (f_param_backpacks <= 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
				(unitBackpack _unit) addItemCargoGlobal [_firstaid, 4];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 6];
				(unitBackpack _unit) addItemCargoGlobal [_firstaid, 12];
			};
		};

		// BACKPACK: GRENADIER (CO/DC/SL/FTL/G)
		case "g":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_glriflemag,2];
				_unit addmagazines [_glmag,1];
				_unit addmagazines [_glsmokewhite,1];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 6];
				(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: AR
		case "ar":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_ARmag_Tr,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: AAR
		case "aar":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_riflemag,2];
				_unit addmagazines [_ARmag,2];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: RIFLEMAN AT (RAT)
		case "rat":
		{
			// NO BACKPACK (STILL ADD SMALL FOR ROCKETS)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];

			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
			};
		};

		// BACKPACK: RIFLEMAN (R)
		case "r":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_riflemag,2];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: CARABINEER (CAR)
		case "car":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_carbinemag,2];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: MMG GUNNER (MMG)
		case "mmg":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_MMGmag,1];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
					(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: MMG ASSISTANT GUNNER (MMGAG)
		case "mmgag":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_MMGmag,1];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 3];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: MAT GUNNER (MATG)
		case "matg":
		{
			// NO BACKPACK (STILL ADD SMALL FOR ROCKETS)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: MAT ASSISTANT (MATAG)
		case "matag":
		{
			// NO BACKPACK (STILL ADD SMALL FOR ROCKETS)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
			_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 3];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: ENGINEER (DEMO)
		case "eng":
		{
			// NO BACKPACK (STILL ADD SMALL FOR TOOLKIT)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
				(unitBackpack _unit) addItemCargoGlobal [_satchel,2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
				(unitBackpack _unit) addItemCargoGlobal [_satchel,4];
			};
		};

		// BACKPACK: ENGINEER (MINES)
		case "engm":
		{
			// NO BACKPACK (STILL ADD SMALL FOR TOOLKIT)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
				(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
				(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,2];
			};
		};

		// BACKPACK: SUBMACHINEGUNNER (SMG)
		case "smg":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_smgmag,2];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: DIVER (DIV)
		case "div":
		{
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};
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
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addBackpack _bagTFARlongRANGE;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];
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
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addBackpack _bagTFARlongRANGE;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _firstaid} forEach [1,2,3,4];
		["m"] call _backpack;
		_unit addItem [_bandage,20];
		_unit addItem [_morphine,15];
		_unit addItem [_epipen,10];
		_unit addItem [_bloodbag,5];
		_unit addItem [_earplugs,1];		
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
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addBackpack _bagTFARlongRANGE;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,2];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
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
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];
		_unit addItem [_sparebarrel,1];		
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
		["aar"] call _backpack;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];
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
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
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
		_unit addBackpack _bagTFARlongRANGE;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];
		_unit addItem [_sparebarrel,1];		
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,2];
		_unit addmagazines [_smokegrenade,2];
		["mmgag"] call _backpack;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		_unit addBackpack _bagTFARlongRANGE;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
		_unit addmagazines [_MATMag1,1];
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_riflemag,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		["matag"] call _backpack;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addBackpack _MTR;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Binocular";
		_unit addBackpack _MTRmount;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
	};

// LOADOUT: VEHICLE CREW
	case "c":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
	};


// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon _bagTFARairBORNE;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
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
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
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
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
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
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];
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
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
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
		["div"] call _backpack;
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
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
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
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
		_unit addItem [_bandage,5];
		_unit addItem [_morphine,1];
		_unit addItem [_epipen,1];
		_unit addItem [_earplugs,1];		
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
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
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];		
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
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
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];		
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
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
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];		
	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// Handle weapon attachments here.

#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;