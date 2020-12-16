/obj/item/clothing/head/helmet/space/void/SCAF
	name = "SCAF helmet"
	desc = "A thick airtight helmet designed for inter-ship warfare and fitted with a luminescent visor and a helmet camera. Widely regarded to be lostech, and rarely found with the suit it attaches to."
	icon_state = "scaf"
	item_state = "scaf"
	armor = list(
		melee = 35,
		bullet = 45,
		energy = 80,
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
	desc = "If you thought the SolFed voidsuits were ancient, this relic of Sol's golden age surely puts them to shame. Designed prior to the collapse of Greyson Positronics, this pre-Unification 'Solar Command Aegis Fleet' \
	voidsuit was designed primarily to combat laser weapons, which were ubiquitous at the time. In an age where ballistics were on the decline and melee combat was all but unheard of, this suit offers reduced protection against \
	the former and only paltry protection against the latter. On the upside, its plastitanium carapace is exceedingly lightweight for the protection it offers and its laser dispersal is second to none."
	icon_state = "scaf"
	item_state = "scaf"
	slowdown = 0.35
	flags_inv = HIDEGLOVES|HIDEJUMPSUIT|HIDETAIL
	armor = list(
		melee = 35,
		bullet = 45,
		energy = 80,
		bomb = 75,
		bio = 100,
		rad = 25
	)
	siemens_coefficient = 0.35
	species_restricted = list("Human")
	helmet = /obj/item/clothing/head/helmet/space/void/SCAF

/obj/item/clothing/head/helmet/space/void/SCAF/blackshield
	name = "Black Guard SOAR helmet"
	desc = "The spaceworthy helmet worn by the Black Guard's SOAR troopers, fitted with a powerful spotlight and a mounted camera."
	icon_state = "scaf_mil"
	item_state = "scaf_mil"
	camera_networks = list(NETWORK_SECURITY)
	light_overlay = "helmet_light_white"
	armor = list(
		melee = 50,
		bullet = 75,
		energy = 75,
		bomb = 65,
		bio = 100,
		rad = 50
	)

/obj/item/clothing/suit/space/void/SCAF/blackshield
	name = "Black Guard SOAR suit"
	desc = "A spaceworthy marriage of pre-Unification lostech with modern Coalition armor plating, this lightweight, low drag voidsuit is worn exclusively by an elite unit of the Black Guard known as the \
	Special Operations Aerospace Rangers. Troopers who have undergone SOAR training are considered a cut above their peers, authorized to operate in zones outside of the city while the Mechanized Infantry \
	are only deployed in exceptional circumstances."
	icon_state = "scaf_mil"
	item_state = "scaf_mil"
	helmet = /obj/item/clothing/head/helmet/space/void/SCAF/blackshield
	slowdown = 0.35
	armor = list(
		melee = 50,
		bullet = 75,
		energy = 75,
		bomb = 65,
		bio = 100,
		rad = 50
	)

//Voidsuit for traitors
/obj/item/clothing/head/helmet/space/void/merc
	name = "blood-red voidsuit helmet"
	desc = "An advanced helmet designed for work in special operations. This version is additionally reinforced against melee attacks."
	icon_state = "syndiehelm"
	item_state = "syndiehelm"
	armor = list(
		melee = 80,
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
	icon_state = "syndievoidsuit"
	name = "blood-red voidsuit"
	desc = "An advanced suit that protects against injuries during special operations. This version is additionally reinforced against melee attacks."
	item_state = "syndie_voidsuit"
	armor = list(
		melee = 80,
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


//Church Crusader armor, credit to Valterak for the original sprite.
/obj/item/clothing/head/helmet/space/void/crusader
	name = "crusader hood"
	desc = "An armored helmet with a built in light system allowing you to shine heavens grace on heretics before you purge them."
	icon_state = "inqarmor_hood"
	item_state = "inqarmor_hood"
	armor = list(
		melee = 75,
		bullet = 75,
		energy = 75,
		bomb = 80,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0
	species_restricted = list("Human")
	light_overlay = "helmet_light_white"
	brightness_on = 8 //luminosity when on

/obj/item/clothing/suit/space/void/crusader
	name = "crusader 'Deus Vult' power armor"
	desc = "The church of absolutes most powerful creation, the Mark I 'Deus Vult' power armor, a void capable ablative durasteel-forged suit with built in power systems linked to a wearers cruciform, recharged by its presence to prevent slow down from the armors weight. The only thing they fear is you."
	icon_state = "inqarmor"
	item_state = "inqarmor"
	slowdown = 0
	flags_inv = HIDEGLOVES|HIDEJUMPSUIT|HIDETAIL
	armor = list(
		melee = 75,
		bullet = 75,
		energy = 75,
		bomb = 80,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0
	species_restricted = list("Human")
	helmet = /obj/item/clothing/head/helmet/space/void/crusader

/obj/item/clothing/head/helmet/space/void/peking
	name = "peking void-hat"
	desc = "A strange albiet intriguing mask and hat design. The creases at its neck are visible but the field cover appears to be attached to the air-tight mask itself. \
	It might be air-tight and fitted for space but god knows how well it actually protects the wearer.."
	icon_state = "peking"
	item_state = "peking"
	armor = list(
		melee = 45,
		bullet = 40,
		energy = 40,
		bomb = 25,
		bio = 100,
		rad = 50
	)
	siemens_coefficient = 0.35
	species_restricted = list("Human")
	camera_networks = list(NETWORK_MERCENARY)

/obj/item/clothing/suit/space/void/peking
	name = "peking armored fatigues"
	desc = "\"As the flames reached the sky, Death called for us all as he moved through Peking..\" \
	A simple airtight armored suit used by Xian Jiang fighters. While the suit remains light weight in spite of its bulk one can feel by running their hand \
	along the material over the arms or lower-body section that the suit has sacrificed some of its armor coverage for mobility."
	icon_state = "peking"
	item_state = "peking"
	slowdown = 0.35
	flags_inv = HIDEGLOVES|HIDEJUMPSUIT|HIDETAIL
	armor = list(
		melee = 55,
		bullet = 45,
		energy = 40,
		bomb = 50,
		bio = 100,
		rad = 50
	)
	siemens_coefficient = 0.35
	species_restricted = list("Human")
	helmet = /obj/item/clothing/head/helmet/space/void/peking

/obj/item/clothing/head/helmet/space/void/ronin
	name = "\"Ronin\" Mk5 heavy voidsuit helmet"
	desc = "An advanced helmet designed specifically to shrug off blunt force blows, blades and even conventional projectiles with its domed armor design."
	icon_state = "ronin"
	item_state = "ronin"
	armor = list(
		melee = 66,
		bullet = 60,
		energy = 45,
		bomb = 45,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.35
	species_restricted = list("Human")
	camera_networks = list(NETWORK_MERCENARY)
	light_overlay = "helmet_light_ihs"

/obj/item/clothing/suit/space/void/ronin
	name = "\"Ronin\" heavy voidsuit"
	desc = "\"It's the nature of time that the old ways must give in or they will die out..\" \
	The \"Ronin\" Mk V Heavy Voidsuit is a state of the art piece of technology yet hails from relatively unkown origins; sporting no corporate logos or serial numbers other than Xian Jiang markings. \
	Its armor appears to be layered to increase its thickness, protecting it from conventional small-arms projectiles. No wonder the suits nickname is 'Bulletproof Samuarai'."
	icon_state = "ronin"
	item_state = "ronin"
	slowdown = 0.45
	flags_inv = HIDEGLOVES|HIDEJUMPSUIT|HIDETAIL|HIDESHOES
	armor = list(
		melee = 66,
		bullet = 60,
		energy = 45,
		bomb = 45,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.35
	species_restricted = list("Human")
	helmet = /obj/item/clothing/head/helmet/space/void/ronin

/obj/item/clothing/suit/space/void/ronin/equipped
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/weapon/tank/oxygen

/obj/item/clothing/suit/space/void/ronin/boxed
	tank = /obj/item/weapon/tank/emergency_oxygen/double
