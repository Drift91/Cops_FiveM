config = {
	enableVersionNotifier = true, --notify if a new version is available (server console)

	useModifiedEmergency = false, --require modified emergency script
	useModifiedBanking = false, --require Simple Banking
	useVDKInventory = false, --require VDK Inventory script
	useGcIdentity = false, --require GCIdentity
	enableOutfits = false, --require Skin Customization
	useJobSystem = false, -- require job system
	useWeashop = false, -- require es_weashop
	
	stationBlipsEnabled = true, -- switch between true or false to enable/disable blips for police stations
	useCopWhitelist = true,
	enableCheckPlate = false, --require garages
	
	enableOtherCopsBlips = true,
	useNativePoliceGarage = true,
	enableNeverWanted = false,
	
	propsSpawnLimitByCop = 20,
	
	displayRankBeforeNameOnChat = true,
	
	--Available languages : 'en', 'fr', 'de'
	lang = 'en',

	
	--Use by job system
	job = {
		officer_on_duty_job_id = 2,
		officer_not_on_duty_job_id = 7,
	},
	
	bindings = {
		interact_position = 51, -- E
		use_police_menu = 166, -- F5
		accept_fine = 246, -- Y
		refuse_fine = 45 -- R
	},

	--Customizable Departments
	departments = {
		label = {
			[0] = "San Andreas Park Ranger",
			[1] = "Los Santos Police Department",
			[2] = "Los Santos County Sheriff",
			[3] = "San Andreas Highway Patrol",
			[4] = "San Andreas State Prison Authority"
		},

		minified_label = {
			[0] = "SAPR",
			[1] = "LSPD",
			[2] = "LSSD",
			[3] = "SAHP",
			[4] = "PRISON"
		}
	},
	
	--Customizable ranks
	rank = {

		--You can add or remove ranks as you want (just make sure to use numeric index, ascending)
		label = {
			[0] = "Cadet", -- Ranger Rank
			[1] = "Trainee", -- LSPD Rank
			[2] = "Trainee", -- Sheriff Rank
			[3] = "Cadet", -- State Highway Patrol Rank

			[4] = "Ranger",
			[5] = "Police Officer",
			[6] = "Deputy Sheriff",
			[7] = "Officer",

			[8] = "Ranger II",
			[9] = "Master Police Officer",
			[10] = "Deputy Sheriff II",
			[11] = "Officer II",

			[12] = "Supervisor",
			[13] = "Sergeant",
			[14] = "Sergeant",
			[15] = "Sergeant",

			[16] = "Superintendent",
			[17] = "Lieutenant",
			[18] = "Lieutenant",
			[19] = "Lieutenant",

			[20] = "Superintendent II",
			[21] = "Captain",
			[22] = "Captain",
			[23] = "Captain",
 
			[24] = "Chief of SAPR ",
			[25] = "Chief of Police",
			[26] = "Sheriff",
			[27] = "Chief of SAHP",

			[28] = "Ranger Admin Rank",
			[29] = "Police Admin Rank",
			[30] = "Sheriff Admin Rank",
			[31] = "SAHP Admin Rank",
		},

		--Used for chat
		minified_label = {
			[0] = "Cdt",
			[1] = "Trne", --1
			[2] = "Trne",
			[3] = "Cdt",

			[4] = "Rngr",
			[5] = "PO", --2
			[6] = "Dep",
			[7] = "Ofc",

			[8] = "Rngr2",
			[9] = "MPO", --3
			[10] = "Dep2",
			[11] = "Ofc2",

			[12] = "Sup",
			[13] = "Sgt", --4
			[14] = "Sgt",
			[15] = "Sgt",

			[16] = "Supt",
			[17] = "Lt", --5
			[18] = "Lt",
			[19] = "Lt",

			[20] = "Supt2",
			[21] = "Cpt", --6
			[22] = "Cpt",
			[23] = "Cpt",

			[24] = "CoPR",
			[25] = "CoP", --7
			[26] = "Shf",
			[27] = "CoHP",

			[28] = "Admin",
			[29] = "Admin", --8
			[30] = "Admin",
			[31] = "Admin",
		},

		--You can set here a badge for each rank you have. You have to enable "enableOutfits" to use this
		--The index is the rank index, the value is the badge index.
		--Here a link where you have the 4 MP Models badges with their index : https://kyominii.com/fivem/index.php/MP_Badges
		outfit_badge = {
			[0] = 0,
			[1] = 0,
			[2] = 0,
			[3] = 0,

			[4] = 0,
			[5] = 0,
			[6] = 0,
			[7] = 0,

			[8] = 1,
			[9] = 1,
			[10] = 1,
			[11] = 1,

			[12] = 1,
			[13] = 1,
			[14] = 1,
			[15] = 1,

			[16] = 2,
			[17] = 2,
			[18] = 2,
			[19] = 2,

			[20] = 2,
			[21] = 2,
			[22] = 2,
			[23] = 2,

			[24] = 3,
			[25] = 3,
			[26] = 3,
			[27] = 3,

			[28] = 3,
			[29] = 3,
			[30] = 3,
			[31] = 3,
		},

		--Minimum rank require to modify officers rank
		min_rank_set_rank = 24
	}
}

clockInStation = {
  {x=850.156677246094, y=-1283.92004394531, z=28.0047378540039}, -- La Mesa
  {x=457.956909179688, y=-992.72314453125, z=30.6895866394043}, -- Mission Row
  {x=1856.91320800781, y=3689.50073242188, z=34.2670783996582}, -- Sandy Shore
  {x=-450.063201904297, y=6016.5751953125, z=31.7163734436035} -- Paleto Bay
}

garageStation = {
   {x=-470.85266113281, y=6022.9296875, z=31.340530395508},  -- La Mesa
   {x=1873.3372802734, y=3687.3508300781, z=33.616954803467},  -- Mission Row
   {x=452.115966796875, y=-1018.10681152344, z=28.4786586761475}, -- Sandy Shore
   {x=855.24249267578, y=-1279.9300537109, z=26.513223648071 }  --Paleto Bay
}

heliStation = {
    {x=449.113966796875, y=-981.084966796875, z=43.691966796875} -- Mission Row
}

armoryStation = {
    {x=452.119966796875, y=-980.061966796875, z=30.690966796875},
    {x=853.157, y=-1267.74, z= 26.6729},	
    {x=1849.63, y=3689.48, z=34.2671},
    {x=-448.219, y= 6008.98, z=31.7164}
}

i18n.setLang(tostring(config.lang))
