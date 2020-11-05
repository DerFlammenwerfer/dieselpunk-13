/datum/job/confessor
	title = "Confessor"
	flag = CONFESSOR
	department = DEPARTMENT_CHURCH
	department_flag = CHURCH | COMMAND
	faction = MAP_FACTION
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	supervisors = "the High Council"
	difficulty = "Medium."
	selection_color = "#ecd37d"
	ideal_character_age = 40
	minimum_character_age = 30

	access = list(
		access_oh_corperal, access_oh_sargent, access_oh_knight, access_oh_confessor, access_nt_preacher, access_nt_disciple, access_morgue, access_chapel_office, access_crematorium, access_hydroponics, access_maint_tunnels, access_RC_announce, access_keycard_auth, access_heads, access_sec_doors
	)

	wage = WAGE_COMMAND //The church has deep pockets
	department_account_access = TRUE
	outfit_type = /decl/hierarchy/outfit/job/church/confessor

	stat_modifiers = list(
		STAT_MEC = 30,
		STAT_BIO = 40,
		STAT_COG = 20,
		STAT_VIG = 30,
		STAT_TGH = 40,
		STAT_ROB = 30,
	)

	software_on_spawn = list(/datum/computer_file/program/records,
							 /datum/computer_file/program/reports)

	core_upgrades = list(
		CRUCIFORM_PRIEST,
		CRUCIFORM_SQUIRE,
		CRUCIFORM_SERGEANT,
		CRUCIFORM_KNIGHT,
		CRUCIFORM_INQUISITOR,
		CRUCIFORM_REDLIGHT
	)

	description = "The Confessor serves as the head of the local branch of the Orden Hospitaller. <br>\
	You represent the interest of the church and its disciples within the colony - identified by the cruciform implant upon their breast.<br>\
	Your most pressing duty is as a spiritual leader. Preach to the flock, inspire faith and strength, and convert those seeking salvation.<br>\
	While you are no trained psychologist, you can provide support and guidance to all - in both bright and dark times.<br>\
	The Crusader protocol may also be enacted under your command when facing a Hivemind or any other extreme threat. Use this boost, and your ritual book, to defeat evil."

	duties = "Represent the interests of disciples on the colony. Protect them from persecution and speak for them.<br>\
		Hold mass, give sermons, preach to the faithful, and lead group ritual sessions.<br>\
		Recover and revive the faithful dead. Hold funerals for those who cannot be saved, and ensure any missing cruciforms are recovered.<br>\
		Oversee the Knights Hospitaller, whose duty it is to retrieve the dead and damned. Do not allow others to steal from the Order unpunished."

	setup_restricted = TRUE

/obj/landmark/join/start/confessor
	name = "Confessor"
	icon_state = "player-black"
	join_tag = /datum/job/confessor

/datum/job/chaplain
	title = "Brother Chaplain"
	flag = CHAPLAIN
	department = DEPARTMENT_CHURCH
	department_flag = CHURCH
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Confessor"
	difficulty = "Easy to Medium."
	selection_color = "#ecd37d"
	access = list(access_nt_preacher, access_morgue, access_crematorium, access_maint_tunnels, access_hydroponics, access_nt_disciple)
	wage = WAGE_LABOUR
	outfit_type = /decl/hierarchy/outfit/job/church/chaplain

	stat_modifiers = list(
	STAT_MEC = 25,
	STAT_BIO = 40,
	STAT_VIG = 10,
	STAT_TGH = 5,
	STAT_ROB = 20,
	)

	core_upgrades = list(
		CRUCIFORM_PRIEST
	)

	description = "The Chaplaincy serves the City, and more generally the Order, as medical professionals.<br>\
	The duties of operating the bioreactor and managing biomass supplies fall to you, but you are also expected to provide aid wherever it is requested or required.<br>\
	You should also work to present the Order in a positive light to all citizens. The Confessor may issue you with further duties."

	duties = "Operate the bioreactor and manage biomass for the Order's machines.<br>\
		Maintain areas owned by the Order, keeping the facilities functional and in good order.<br>\
		Offer assistance to the faithful and non-faithful alike."

	setup_restricted = TRUE

/obj/landmark/join/start/chaplain
	name = "Brother Chaplain"
	icon_state = "player-black"
	join_tag = /datum/job/chaplain

/datum/job/broknight
	title = "Brother-Knight"
	flag = BROKNIGHT
	department = DEPARTMENT_CHURCH
	department_flag = CHURCH
	faction = MAP_FACTION
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Confessor"
	difficulty = "Easy to Medium."
	selection_color = "#ecd37d"
	access = list(access_oh_knight, access_nt_preacher, access_morgue, access_crematorium, access_maint_tunnels, access_hydroponics, access_nt_disciple)
	wage = WAGE_LABOUR_HAZARD
	outfit_type = /decl/hierarchy/outfit/job/church/broknight

	stat_modifiers = list(
	STAT_VIG = 30,
	STAT_BIO = 30,
	STAT_TGH = 60,
	STAT_ROB = 60,
	)

	core_upgrades = list(
		CRUCIFORM_PRIEST,
		CRUCIFORM_SQUIRE,
		CRUCIFORM_SERGEANT,
		CRUCIFORM_KNIGHT
	)

	description = "The Knighthood serves the City, and more generally the Order, as the penultimate Search and Rescue specialists.<br>\
	You are responsible for directly overseeing the efforts of the Brother-Sergeants and the recovery teams they lead.<br>\
	You should also work to present the Order in a positive light to all citizens. The Confessor may issue you with further duties."

	duties = "Direct the Brother-Sergeants and Brother-Corporals. Help them make good use of the Order's technology.<br>\
		Protect areas owned by the Order, keeping the facilities safe and secure.<br>\
		Offer assistance to the faithful and non-faithful alike. You can use any of the litanies that the Chaplaincy can.<br>\
		Keep a watchful eye for Chaplains and Novices who demonstrate substantial bravery, selflessness, or leadership. You are a recruiter of such fine individuals."

	setup_restricted = TRUE

/obj/landmark/join/start/broknight
	name = "Brother-Knight"
	icon_state = "player-black"
	join_tag = /datum/job/broknight

/datum/job/brosarge
	title = "Brother-Sergeant"
	flag = BROSARGE
	department = DEPARTMENT_CHURCH
	department_flag = CHURCH
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Confessor"
	difficulty = "Easy to Medium."
	selection_color = "#ecd37d"
	access = list(access_oh_sargent, access_nt_preacher, access_morgue, access_crematorium, access_maint_tunnels, access_hydroponics, access_nt_disciple)
	wage = WAGE_LABOUR
	outfit_type = /decl/hierarchy/outfit/job/church/brosarge

	stat_modifiers = list(
	STAT_VIG = 20,
	STAT_BIO = 30,
	STAT_TGH = 50,
	STAT_ROB = 50,
	)

	core_upgrades = list(
		CRUCIFORM_PRIEST,
		CRUCIFORM_SQUIRE,
		CRUCIFORM_SERGEANT
	)

	description = "The Knighthood serves the City, and more generally the Order, as the penultimate Search and Rescue specialists.<br>\
	You are responsible for leading a team of Brother-Corporals on search and rescue missions.<br>\
	You should also work to present the Order in a positive light to all citizens. The Confessor may issue you with further duties."

	duties = "Direct your Brother-Corporals. Run practice drills with them in friendly and hostile territory alike. Recover the dead and dying.<br>\
		Protect areas owned by the Order, keeping the facilities safe and secure when not on a recovery mission. <br>\
		Offer assistance to the faithful and non-faithful alike. You can use any of the litanies that the Chaplaincy can."

	setup_restricted = TRUE

/obj/landmark/join/start/brosarge
	name = "Brother-Sergeant"
	icon_state = "player-black"
	join_tag = /datum/job/brosarge

/datum/job/brocorp
	title = "Brother-Corporal"
	flag = BROSARGE
	department = DEPARTMENT_CHURCH
	department_flag = CHURCH
	faction = MAP_FACTION
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Confessor"
	difficulty = "Easy to Medium."
	selection_color = "#ecd37d"
	access = list(access_oh_corperal, access_nt_preacher, access_morgue, access_crematorium, access_maint_tunnels, access_hydroponics, access_nt_disciple)
	wage = WAGE_LABOUR
	outfit_type = /decl/hierarchy/outfit/job/church/brocorp

	stat_modifiers = list(
	STAT_VIG = 20,
	STAT_BIO = 30,
	STAT_TGH = 40,
	STAT_ROB = 40,
	)

	core_upgrades = list(
		CRUCIFORM_PRIEST,
		CRUCIFORM_SQUIRE
	)

	description = "The Knighthood serves the City, and more generally the Order, as the penultimate Search and Rescue specialists.<br>\
	You are responsible for participating in search and rescue missions. You are also expected to defend your patients with your life.<br>\
	You should also work to present the Order in a positive light to all citizens. The Confessor may issue you with further duties."

	duties = "Recover the dead and dying. Stabilise them on-site and use your bluespace equipment to return they and you to the Monastery for treatment<br>\
		Protect areas owned by the Order, keeping the facilities safe and secure when not on a recovery mission. Neutralize threats to your patients if they present themselves.<br>\
		Offer assistance to the faithful and non-faithful alike. You can use any of the litanies that the Chaplaincy can."

	setup_restricted = TRUE

/obj/landmark/join/start/brocorp
	name = "Brother-Corporal"
	icon_state = "player-black"
	join_tag = /datum/job/brocorp
