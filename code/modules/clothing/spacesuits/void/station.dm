// Station voidsuits
//Engineering rig
/obj/item/clothing/head/helmet/space/void/engineering
	name = "engineering voidsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low-pressure environment. Has radiation shielding."
	icon_state = "rig0-engineering"
	item_state = "eng_helm"
	item_state_slots = list(
		slot_l_hand_str = "eng_helm",
		slot_r_hand_str = "eng_helm",
		)
	armor = list(
		melee = 35,
		bullet = 30,
		energy =30,
		bomb = 40,
		bio = 100,
		rad = 100
	)
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/space/void/engineering
	name = "engineering voidsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Has radiation shielding."
	icon_state = "rig-engineering"
	item_state = "eng_voidsuit"
	armor = list(
		melee = 35,
		bullet = 30,
		energy = 30,
		bomb = 40,
		bio = 100,
		rad = 100
	)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	extra_allowed = list(
		/obj/item/weapon/storage/toolbox,
		/obj/item/weapon/storage/briefcase/inflatable,
		/obj/item/device/t_scanner,
		/obj/item/weapon/rcd
	)
	helmet = /obj/item/clothing/head/helmet/space/void/engineering

/obj/item/clothing/suit/space/void/engineering/equipped
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/weapon/tank/jetpack/oxygen

//Mining rig
/obj/item/clothing/head/helmet/space/void/mining
	name = "mining voidsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has reinforced plating."
	icon_state = "mining_helmet"
	item_state = "mining_helmet"
	item_state_slots = list(
		slot_l_hand_str = "mining_helm",
		slot_r_hand_str = "mining_helm",
		)
	armor = list(
		melee = 50,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	light_overlay = "helmet_light_dual"

/obj/item/clothing/suit/space/void/mining
	name = "mining voidsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Has reinforced plating."
	item_state = "miner_suit"
	icon_state = "miner_suit"
	slowdown = 0.35
	armor = list(
		melee = 50,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	helmet = /obj/item/clothing/head/helmet/space/void/mining

//Medical Rig
/obj/item/clothing/head/helmet/space/void/medical
	name = "medical voidsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has minor radiation shielding."
	icon_state = "rig0-medical"
	item_state = "medical_helm"
	item_state_slots = list(
		slot_l_hand_str = "medical_helm",
		slot_r_hand_str = "medical_helm",
		)
	armor = list(
		melee = 30,
		bullet = 10,
		energy = 35,
		bomb = 25,
		bio = 100,
		rad = 75
	)

/obj/item/clothing/suit/space/void/medical
	icon_state = "rig-medical"
	name = "medical voidsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Has minor radiation shielding."
	item_state = "medical_voidsuit"
	slowdown = 0.25
	extra_allowed = list(
		/obj/item/weapon/storage/firstaid,
		/obj/item/device/scanner/health,
		/obj/item/stack/medical,
		/obj/item/roller
	)
	armor = list(
		melee = 20,
		bullet = 10,
		energy = 35,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	helmet = /obj/item/clothing/head/helmet/space/void/medical

/obj/item/clothing/suit/space/void/medical/equipped
	boots = /obj/item/clothing/shoes/magboots

	//Security
/obj/item/clothing/head/helmet/space/void/security
	name = "marshal voidsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has an additional layer of armor."
	icon_state = "ihsvoidhelm"
	item_state = "ihsvoidhelm"
	item_state_slots = list(
		slot_l_hand_str = "sec_helm",
		slot_r_hand_str = "sec_helm",
		)

	armor = list(
		melee = 50,
		bullet = 40,
		energy = 40,
		bomb = 40,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.7
	light_overlay = "helmet_light_ihs"

/obj/item/clothing/suit/space/void/security
	name = "marshal voidsuit"
	icon_state = "ihvoidsuit"
	desc = "A bulky suit that protects against hazardous, low pressure environments. Sacrifices mobility for protection"
	item_state = "ihvoidsuit"
	slowdown = 1
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 40,
		bomb = 40,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.7
	helmet = /obj/item/clothing/head/helmet/space/void/security

/obj/item/clothing/suit/space/void/security/equipped
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/weapon/tank/jetpack/oxygen

/obj/item/clothing/head/helmet/space/void/odst
	name = "sol federation voidsuit helmet"
	desc = "A helmet designed for military EVA operations, though not direct combat."
	icon_state = "odst"
	item_state = "odst"
	item_state_slots = list(
		slot_l_hand_str = "sec_helm",
		slot_r_hand_str = "sec_helm",
		)

	armor = list(
		melee = 50,
		bullet = 40,
		energy = 40,
		bomb = 40,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.7
	light_overlay = "helmet_light_ihs"

/obj/item/clothing/suit/space/void/odst
	name = "sol federation voidsuit"
	desc = "Do you wanna be a hero in the sky? High adventure, higher pay, join the Space Marines today."
	icon_state = "odst"
	item_state = "odst"
	slowdown = 1
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 40,
		bomb = 40,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.7
	helmet = /obj/item/clothing/head/helmet/space/void/odst


/obj/item/clothing/head/helmet/space/void/odst/mil
	name = "blackshield voidsuit helmet"
	icon_state = "odst_mil"
	item_state = "odst_mil"

/obj/item/clothing/suit/space/void/security/odst/mil
	name = "blackshield voidsuit"
	icon_state = "odst_mil"
	item_state = "odst_mil"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/mil

/obj/item/clothing/head/helmet/space/void/odst/corps
	name = "blackshield corpsman voidsuit helmet"
	icon_state = "odst_mil"
	item_state = "odst_mil"

/obj/item/clothing/suit/space/void/odst/corps
	name = "blackshield corpsman voidsuit"
	icon_state = "odst_corps"
	item_state = "odst_corps"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/corps



//Colored military suits//
/obj/item/clothing/head/helmet/space/void/odst/red
	name = "military voidsuit helmet"
	icon_state = "odst_red"
	item_state = "odst_red"

/obj/item/clothing/suit/space/void/odst/red
	name = "military voidsuit"
	icon_state = "odst_red"
	item_state = "odst_red"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/red

/obj/item/clothing/suit/space/void/odst/blue
	name = "military voidsuit"
	icon_state = "odst_blue"
	item_state = "odst_blue"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/blue

/obj/item/clothing/head/helmet/space/void/odst/blue
	name = "military voidsuit helmet"
	icon_state = "odst_blue"
	item_state = "odst_blue"

/obj/item/clothing/head/helmet/space/void/odst/orange
	name = "military voidsuit helmet"
	icon_state = "odst_orange"
	item_state = "odst_orange"

/obj/item/clothing/suit/space/void/odst/orange
	name = "military voidsuit"
	icon_state = "odst_orange"
	item_state = "odst_orange"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/orange

/obj/item/clothing/head/helmet/space/void/odst/purple
	name = "military voidsuit helmet"
	icon_state = "odst_purple"
	item_state = "odst_purple"

/obj/item/clothing/suit/space/void/odst/purple
	name = "military voidsuit"
	icon_state = "odst_purple"
	item_state = "odst_purple"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/purple

//Atmospherics Rig (BS12)
/obj/item/clothing/head/helmet/space/void/atmos
	desc = "A special helmet designed for work in a hazardous, low pressure environments. Has improved thermal protection and minor radiation shielding."
	name = "atmospherics voidsuit helmet"
	icon_state = "rig0-atmos"
	item_state = "atmos_helm"
	item_state_slots = list(
		slot_l_hand_str = "atmos_helm",
		slot_r_hand_str = "atmos_helm",
		)
	armor = list(
		melee = 30,
		bullet = 10,
		energy = 10,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	light_overlay = "helmet_light_dual"

/obj/item/clothing/suit/space/void/atmos
	desc = "A special suit that protects against hazardous, low pressure environments. Has improved thermal protection and minor radiation shielding."
	icon_state = "rig-atmos"
	name = "atmos voidsuit"
	item_state = "atmos_voidsuit"
	armor = list(
		melee = 30,
		bullet = 10,
		energy = 10,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	helmet = /obj/item/clothing/head/helmet/space/void/atmos

/obj/item/clothing/suit/space/void/security/equipped
	tank = /obj/item/weapon/tank/jetpack/oxygen

//Science
/obj/item/clothing/head/space/void/assault
	name = "assault helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has an additional layer of armor."
	icon_state = "assaulthelm"
	item_state = "assaulthelm"
	item_state_slots = list(
		slot_l_hand_str = "assaulthelm",
		slot_r_hand_str = "assaulthelm",
		)

	armor = list(
		melee = 60,
		bullet = 70,
		energy = 60,
		bomb = 80,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0.4
	light_overlay = "helmet_light_dual"

/obj/item/clothing/suit/space/void/assault
	name = "assault armor"
	icon_state = "assaultsuit"
	desc = "Designed by the Kriosan Kaiserreich, this armor features multiple layers of padding beneath durasteel plating. It costs a king's ransom to replace."
	item_state = "assaultsuit"
	armor = list(
		melee = 60,
		bullet = 70,
		energy = 60,
		bomb = 80,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0.4
	slowdown = 0.6
	helmet = /obj/item/clothing/head/space/void/assault

//Science
/obj/item/clothing/head/space/void/medarmor
	name = "squire helm"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has an additional layer of armor."
	icon_state = "armor_medical"
	item_state = "armor_medical"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EARS
	item_state_slots = list(
		slot_l_hand_str = "assaulthelm",
		slot_r_hand_str = "assaulthelm",
		)

	armor = list(
		melee = 40,
		bullet = 40,
		energy = 40,
		bomb = 50,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0.4
	light_overlay = "helmet_light_dual"
	matter = list(MATERIAL_STEEL = 10, MATERIAL_BIOMATTER = 5, MATERIAL_PLASTIC = 5, MATERIAL_GLASS = 5)

/obj/item/clothing/suit/space/void/medarmor
	name = "squire armor"
	icon_state = "armor_medical"
	desc = "Spaceworthy search-and-rescue armor of the Orden Hospitaller. Used for operations where protection is needed."
	item_state = "armor_medical"
	armor = list(
		melee = 40,
		bullet = 40,
		energy = 40,
		bomb = 50,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0.4
	slowdown = 0.15
	helmet = /obj/item/clothing/head/space/void/medarmor
	matter = list(MATERIAL_STEEL = 40, MATERIAL_BIOMATTER = 10, MATERIAL_PLASTIC = 30, MATERIAL_GLASS = 10)

/obj/item/clothing/head/space/void/medarmor/sarge
	name = "brother-sergeant helm"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has an additional layer of armor."
	icon_state = "armor_medical_sarge"
	item_state = "armor_medical_sarge"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EARS
	item_state_slots = list(
		slot_l_hand_str = "assaulthelm",
		slot_r_hand_str = "assaulthelm",
		)

	armor = list(
		melee = 50,
		bullet = 50,
		energy = 50,
		bomb = 60,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0.4
	matter = list(MATERIAL_STEEL = 10, MATERIAL_BIOMATTER = 5, MATERIAL_PLASTIC = 5, MATERIAL_GLASS = 5)

/obj/item/clothing/suit/space/void/medarmor/sarge
	name = "brother-sergeant armor"
	icon_state = "armor_medical_sarge"
	desc = "Spaceworthy search-and-rescue armor of the Orden Hospitaller. This upgraded version is worn by Brother-Sergeants leading a team of Squires."
	item_state = "armor_medical_sarge"
	armor = list(
		melee = 50,
		bullet = 50,
		energy = 50,
		bomb = 60,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0.4
	helmet = /obj/item/clothing/head/space/void/medarmor/sarge
	matter = list(MATERIAL_STEEL = 40, MATERIAL_BIOMATTER = 10, MATERIAL_PLASTIC = 30, MATERIAL_GLASS = 10)

/obj/item/clothing/head/helmet/space/void/knight
	name = "brother-knight helm"
	desc = "A visored helmet with a cloth hood covering it."
	icon_state = "prime"
	armor = list(
		melee = 60,
		bullet = 60,
		energy = 60,
		bomb = 80,
		bio = 100,
		rad = 100
	)

/obj/item/clothing/suit/space/void/knight
	name = "brother-knight armor"
	desc = "Armor of the Orden Hospitaller's chamber militant"
	icon_state = "prime"
	slowdown = 0.15
	armor = list(
		melee = 60,
		bullet = 60,
		energy = 60,
		bomb = 80,
		bio = 100,
		rad = 100
	)
	helmet = /obj/item/clothing/head/helmet/space/void/knight
