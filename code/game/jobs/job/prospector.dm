/datum/job/foreman
	title = "Foreman"
	flag = FOREMAN
	head_position = 1
	department = DEPARTMENT_PROSPECTOR
	department_flag = PROSPECTORS | COMMAND
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Nadezhda Council"
	difficulty = "Hard."
	selection_color = "#97b0be"
	req_admin_notify = 1
	wage = WAGE_NONE // Draws salary from Prospector account
	department_account_access = TRUE

	outfit_type = /decl/hierarchy/outfit/job/foreman

	access = list(
		access_prospector, access_foreman, access_external_airlocks, access_eva, access_heads, access_sec_doors,
		access_RC_announce, access_keycard_auth, access_maint_tunnels, access_mailsorting, access_cargo,
		access_cargo_bot, access_mining, access_mining_station
	)

	stat_modifiers = list(
		STAT_ROB = 40,
		STAT_TGH = 40,
		STAT_VIG = 30,
		STAT_MEC = 10,
		STAT_BIO = 10,
	)

	perks = list(/datum/perk/junkborn, /datum/perk/space_asshole, /datum/perk/stalker)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

	description = "The Foreman oversees the hazardous labor of Nadezhda Shipping & Salvage, directly leading scavenger teams seeking fortune from ruins and scrap.<br>\
	Your goal is to lead your team into hostile locations and take everything of value that isn't nailed down - and the nails too!<br>\
	As potentially the youngest head of staff and the one expected to be in the most danger at all times you should be independent and cunning.<br>\
	Your work is perhaps the most dangerous within the entire colony, so good combat and survival skills are essential. Consider bringing a GPS device<br>\
	with you, so that the Orden Hospitaller can tend to any injuries your team isn't equipped to handle."

	duties = "Assemble your team of prospectors, drill techs, and salvagers by equipping them with whatever you can find in your prep area and elsewhere.<br>\
		Lead your team through dangerous areas and ensure they recover everything of value.<br>\
		Keep everyone alive and ensure nobody is left behind.<br>\
		Fill in any missing role on your team be it as muscle, medical, or technical support."

/obj/landmark/join/start/foreman
	name = "Foreman"
	icon_state = "player-blue-officer"
	join_tag = /datum/job/foreman

/datum/job/salvager
	title = "Salvager"
	flag = SALVAGER
	department = DEPARTMENT_PROSPECTOR
	department_flag = PROSPECTORS
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Foreman"
	difficulty = "Medium."
	selection_color = "#a7bbc6"
	wage = WAGE_LABOUR_HAZARD

	outfit_type = /decl/hierarchy/outfit/job/salv

	access = list(
		access_prospector, access_external_airlocks, access_eva, access_maint_tunnels,
		access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station
	)

	stat_modifiers = list(
		STAT_BIO = 30,
		STAT_MEC = 30,
		STAT_COG = 10,
		STAT_TGH = 20,
		STAT_VIG = 10,
		STAT_ROB = 10,
	)

	perks = list(/datum/perk/junkborn, /datum/perk/stalker)

	description = "The Salvager is an informally trained specialist for the prospectors who functions as both an engineer and a doctor.<br>\
	Your primary role is that of a field medic. Treat and stabilize the wounded on the combat backlines, and evacuate the critically injured.<br>\
	Your secondary task is providing technical support to the team by breaching walls, building FOBs, repairing broken equipment, and extracting valuables from junk piles.<br>\
	Remember that you are here to gain riches from the abandoned wilds. Don't waste time and resources mindlessly hunting creatures."

	duties = "Extract resources for your employer. Use equipment to access new areas and gain a foothold in the wilderness.<br>\
	Perform medical services on injured colleagues, from patching wounds to full field surgery.<br>\
	Leave security duties to the hired muscle unless faced with no other option."

/obj/landmark/join/start/salvager
	name = "Salvager"
	icon_state = "player-blue"
	join_tag = /datum/job/salvager

/datum/job/pro
	title = "Prospector"
	flag = PROSPECTOR
	department = DEPARTMENT_PROSPECTOR
	department_flag = PROSPECTORS
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Foreman"
	difficulty = "Medium."
	selection_color = "#a7bbc6"
	wage = WAGE_LABOUR_HAZARD

	outfit_type = /decl/hierarchy/outfit/job/pro

	access = list(
		access_prospector, access_external_airlocks, access_eva, access_maint_tunnels,
		access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station
	)

	stat_modifiers = list(
		STAT_TGH = 40,
		STAT_VIG = 20,
		STAT_ROB = 40,
		STAT_BIO = 10,
	)

	perks = list(/datum/perk/junkborn, /datum/perk/space_asshole, /datum/perk/stalker)

	description = "The Prospector serves as hired muscle to the Foreman, positioned somewhere between meat shield and exterminator.<br>\
	Your job is to keep the Salvagers and anyone else with you protected, handling the fighting and being the first to enter dangerous areas. <br>\
	While combat is your primary goal, you are still there to salvage valuable technology and make a profit selling said items to the colony."

	duties = "Guard your peers from hostile creatures and other dangers that cross your path.<br>\
	Use whatever measures necessary to ensure survival, but try not to soil the standing of your team.<br>\
	Help with the more general salvaging and heavy lifting."

/obj/landmark/join/start/pro
	name = "Prospector"
	icon_state = "player-blue"
	join_tag = /datum/job/pro

/datum/job/mining
	title = "Drill Technician"
	flag = MINER
	department = DEPARTMENT_PROSPECTOR
	department_flag = PROSPECTORS
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Foreman"
	difficulty = "Easy."
	selection_color = "#c3b9a6"
	wage = WAGE_LABOUR_HAZARD //The miners union is stubborn

	outfit_type = /decl/hierarchy/outfit/job/cargo/mining

	description = "The Drill Technician is a professional resource procurer, acquiring valuable minerals for Nadezhda Shipping & Salvage.<br>\
Your primary responsibility is to descend into the deep tunnels and dig up as much ore as you can.<br>\
Accessed by elevator, the area contains an outpost with all the facilities to process said ore and deliver refined materials ready for use.<br>\
Whatever you dig up will go to the warehouse, and from then on it is the responsibility of others to sell it.<br>\
The deep tunnels are far less dangerous than the wilderness, but pack well - disappearances are not unheard of.<br>\
You may also be ordered by the Foreman to come along on trips to mineral-rich locations in the Periphery or in asteroid fields."

	duties = "Dig up ores and minerals to be processed into useable material.<br>\
	Locate other valuables within the tunnels that may be turned to profit."

	access = list(
		access_prospector, access_external_airlocks, access_eva, access_maint_tunnels,
		access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station
	)

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_VIG = 15,
		STAT_MEC = 15
	)

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

/obj/landmark/join/start/mining
	name = "Drill Technician"
	icon_state = "player-beige"
	join_tag = /datum/job/mining
