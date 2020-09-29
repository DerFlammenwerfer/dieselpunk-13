/obj/item/clothing/head/helmet/space/void/SCAF
	name = "SCAF helmet"
	desc = "A thick airtight helmet designed for planetside warfare retrofitted with seals to act like normal space suit helmet."
	icon_state = "scaf"
	item_state = "scaf"
	armor = list(
		melee = 60,
		bullet = 55,
		energy = 50,
		bomb = 75,
		bio = 100,
		rad = 25
	)
	siemens_coefficient = 0.35
	species_restricted = list("Human")
	camera_networks = list(NETWORK_MERCENARY)
	light_overlay = "helmet_light_green"

/obj/item/clothing/suit/space/void/SCAF
	name = "SCAF suit"
	desc = "A bulky antique suit of refurbished infantry armour, retrofitted with seals and coatings to make it EVA capable but also reducing mobility."
	icon_state = "scaf"
	item_state = "scaf"
	slowdown = 1.3
	flags_inv = HIDEGLOVES|HIDEJUMPSUIT|HIDETAIL
	armor = list(
		melee = 60,
		bullet = 55,
		energy = 50,
		bomb = 75,
		bio = 100,
		rad = 25
	)
	siemens_coefficient = 0.35
	species_restricted = list("Human")
	helmet = /obj/item/clothing/head/helmet/space/void/SCAF


//Voidsuit for traitors
/obj/item/clothing/head/helmet/space/void/merc
	name = "blood-red voidsuit helmet"
	desc = "An advanced helmet designed for work in special operations. This version is additionally reinforced against melee attacks."
	icon_state = "syndiehelm"
	item_state = "syndiehelm"
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 30,
		bomb = 50,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.35
	species_restricted = list("Human")
	camera_networks = list(NETWORK_MERCENARY)
	light_overlay = "helmet_light_ihs"

/obj/item/clothing/head/helmet/space/void/merc/update_icon()
	..()
	if(on)
		icon_state = "syndiehelm_on"
	else
		icon_state = initial(icon_state)
	return

/obj/item/clothing/suit/space/void/merc
	name = "blood-red voidsuit"
	desc = "An advanced suit that protects against injuries during special operations. This version is additionally reinforced against melee attacks."
	icon_state = "syndievoidsuit"
	item_state = "syndie_voidsuit"
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 30,
		bomb = 50,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.35
	species_restricted = list("Human")
	helmet = /obj/item/clothing/head/helmet/space/void/merc

/obj/item/clothing/suit/space/void/merc/equipped
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/weapon/tank/oxygen

/obj/item/clothing/suit/space/void/merc/boxed
	tank = /obj/item/weapon/tank/emergency_oxygen/double

/obj/item/clothing/head/helmet/space/void/merc/xanorath
	name = "xanorath voidsuit helmet"
	desc = "A crimson helmet sporting clean lines and durable plating. Engineered to look menacing. This one is branded with a small rune at the back of the neck noting it was made by the Xanorath Syndicate."

/obj/item/clothing/suit/space/void/merc/xanorath
	name = "xanorath voidsuit"
	desc = "A crimson spacesuit sporting clean lines and durable plating. Robust, reliable, and slightly suspicious. This one is branded with a small rune at the collar noting it was made by the Xanorath Syndicate."
	helmet = /obj/item/clothing/head/helmet/space/void/merc/xanorath
	price_tag = 650
