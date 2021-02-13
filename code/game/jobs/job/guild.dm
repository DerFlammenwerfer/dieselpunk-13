//Cargo
/datum/job/merchant
	title = "Resource Officer"
	flag = MERCHANT
	department = DEPARTMENT_NSS
	head_position = 1
	department_flag = NSS | COMMAND
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the High Council"
	difficulty = "Medium."
	selection_color = "#b3a68c"
	wage = WAGE_COMMAND	//CEO now gets paid the money moola muh [redacted] -Kaz
	access = list(
		access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_merchant, access_mining,
		access_heads, access_mining_station, access_RC_announce, access_keycard_auth, access_sec_doors,
		access_eva, access_external_airlocks, access_hydroponics, access_bar, access_kitchen, access_theatre,access_prospector,
		access_foreman, access_gunfactory
	)
	ideal_character_age = 40
	minimum_character_age = 30

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_COG = 20,
		STAT_MEC = 15,
		STAT_VIG = 10
	)
	description = "The Resource Officer coordinates the affairs of the local branch of Nadezhda Shipping & Salvage.<br>\
Your main objective, bluntly, is to make as much money as you can. Purchase and acquire goods, and sell them on for a profit.<br>\
Your Warehouse Technicians will handle most of the grunt work and your Miners will acquire minerals. They are capable - utilise them well.<br>\
The vendors found throughout the ship are also operated by your organisation. They make you money - ensure they are functional and well-stocked.<br>\
There is a market for contraband and more unscrupulous services. Venturing into this area may prove profitable, but comes with risk.<br>\
You do not receive a salary, but can fund yourself from the company account. Strike a balance between the needs of yourself and the wider company."

	duties = "Keep the crew supplied with anything they might need - for a healthy profit.<br>\
Buy up valuable items from scavengers and make a profit reselling them.<br>\
Deploy your mining staff to harvest matter and materials.<br>\
Counsel the council on directing the colony towards profitable opportunities."

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

	outfit_type = /decl/hierarchy/outfit/job/cargo/merchant

	perks = list(/datum/perk/timeismoney)

/obj/landmark/join/start/merchant
	name = "Resource Officer"
	icon_state = "player-beige-officer"
	join_tag = /datum/job/merchant

/datum/job/cargo_tech
	title = "Cargo Technician"
	flag = CARGOTECH
	department = DEPARTMENT_NSS
	department_flag = NSS
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Shipping Manager"
	difficulty = "Easy."
	selection_color = "#c3b9a6"
	wage = WAGE_LABOUR_DUMB
	department_account_access = TRUE
	outfit_type = /decl/hierarchy/outfit/job/cargo/cargo_tech

	access = list(
		access_mailsorting, access_cargo, access_cargo_bot, access_mining,
		access_mining_station, access_gunfactory
	)

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 10,
		STAT_VIG = 10,
	)

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)


	description = "The Cargo Technician forms the backbone of Lonestar Shipping Solutions, equal parts scavenger, loader, and salesman.<br>\
Your main duty is to keep the local company branch operational and profitable. Deliver goods, take payments and orders, and buy from scavengers.<br>\
In quieter times, use your initiative. Visit departments to ask if there's anything they need and try to sell them unusual items.<br>\
Busted lights? Broken vendors? Offer your services for a small fee. You may also find profit in the maintenance tunnels.<br>\
Avoid the deeper tunnels unless otherwise instructed, however - this domain is hazardous and for training mining specialists."

	duties = "Staff the front desk and be ready to process payments and orders.<br>\
	Deliver goods to departments and individuals in good time.<br>\
	Always seek other forms of profit, but do so while keeping the company in a good light."

/obj/landmark/join/start/cargo_tech
	name = "Cargo Technician"
	icon_state = "player-beige"
	join_tag = /datum/job/cargo_tech

/datum/job/janitor
	title = "Custodian"
	flag = JANITOR
	department = DEPARTMENT_NSS
	department_flag = NSS
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Shipping Manager"
	difficulty = "Easy."
	selection_color = "#c3b9a6"
	//alt_titles = list("Custodian","Sanitation Technician")
	access = list(access_janitor, access_maint_tunnels, access_morgue, access_crematorium, access_mailsorting, access_cargo)
	wage = WAGE_LABOUR_DUMB
	outfit_type = /decl/hierarchy/outfit/job/service/janitor

	stat_modifiers = list(
		STAT_ROB = 25,
		STAT_BIO = 15,
		STAT_MEC = 20,
		STAT_TGH = 25,
	)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor)
	description = "The lowly Janitor, well paid but rarely respected, nevertheless provides a valuable service.<br>\
	You will trundle around the colony, armed with your trusty janicart full of cleaning supplies, disposing of trash and pests.<br>\
	Some minor maintenance also falls within your duties. Fix lights, correct broken vendors, replace floor tiles - ease the guild burden.<br>\
	Although your wage is miserable, your knowledge of maintenance may lead you to some valuable salvage for some extra cash."

	duties = "Clean blood, dirt, rubble and messes. Don't clean up crime scenes!<br>\
		Conduct minor repairs and maintenance when guild adepts aren't available.<br>\
		Deploy traps on burrows and do your best to handle the ongoing roach and spider problem."
	setup_restricted = TRUE
	perks = list(/datum/perk/junkborn)

/obj/landmark/join/start/janitor
	name = "Custodian"
	icon_state = "player-black"
	join_tag = /datum/job/janitor

/datum/job/manager
	title = "Shipping Manager"
	flag = MANAGER
	department = DEPARTMENT_NSS
	department_flag = NSS
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Resource Officer"
	difficulty = "Easy."
	selection_color = "#c3b9a6"
	//alt_titles = list("Custodian","Sanitation Technician")
	access = list(access_janitor, access_maint_tunnels, access_morgue, access_crematorium, access_mailsorting, access_cargo, access_gunfactory)
	wage = WAGE_PROFESSIONAL
	department_account_access = TRUE
	outfit_type = /decl/hierarchy/outfit/job/cargo/cargo_tech

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_BIO = 10,
		STAT_MEC = 10,
		STAT_TGH = 10,
		STAT_VIG = 15,
	)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

	description = "The Shipping Manager tends to the supply and demand of the city and the NSS subsidiaries.<br>\
	Your primary responsibility is to oversee imports and exports in order to keep the cash flowing in.<br>\
	You also offer bulk supplies to the other departments, for a price, and the Weapons Factory is a valuable source of potential income.<br>\
	You are well paid, and your knowledge of maintenance may lead you to some valuable salvage for some extra cash. So will the recycling efforts of your Custodians"

	duties = "Staff the front desk and be ready to process payments and orders.<br>\
	Deliver goods to departments and individuals in good time.<br>\
	Always seek other forms of profit, but do so while keeping the company in a good light."

/obj/landmark/join/start/manager
	name = "Shipping Manager"
	icon_state = "player-black"
	join_tag = /datum/job/manager

