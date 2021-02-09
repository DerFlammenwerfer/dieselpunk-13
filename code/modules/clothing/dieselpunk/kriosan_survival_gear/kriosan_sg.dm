
// Not using the standard SS13 file sorting convention,
// to make it easier to find the code that is unique to the codebase.

//Standard Kriosan Survival Gear

/obj/item/clothing/under/ksg_uniform
	name = "uberleben uniform"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
	icon_state = "ksg_uniform"
	item_state = "ksg_uniform"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 90, rad = 90)

/obj/item/clothing/suit/armor/ksg_greatcoat
	name = "Uberleben Greatcoat"
	desc = "A robust greatcoat. Double-breasted with brass buttons, the greatcoat itself can provide limited protection. Plasteel shoulder pads are buckled to the greatcoat and embossed with rank insignia in the case of officers and higher ranks."
	icon_state = "ksgcoat"
	item_state = "ksgcoat"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(melee = 15, bullet = 15, laser = 15, energy = 15, bomb = 15, bio = 90, rad = 90)

/obj/item/clothing/shoes/ksg_boots
	name = "Uberleben low marching boots"
	desc = "Standard-issue low marching boots using hob-nailed soles for grip and includes an anti-vesicant."
	icon_state = "kboots"
	item_state = "kboots"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 90, rad = 90)
	flags = NOSLIP

/obj/item/clothing/mask/gas/ksg_gasmask
	name = "Uberleben gasmask"
	icon_state = "germangasmask"
	item_state = "germangasmask"

/obj/item/clothing/head/ksg_helmet
	name = "Uberleben Helmet"
	desc = "The standard-issue Uberleben helmet is made of plasteel and constructed to ensure a good fit around the gasmask; ventilation is provided through a top spine, which has its own internal filter to keep out biological and chemical agents."
	icon_state = "khelmet"
	flags_inv = HIDEEARS|HIDEEYES|BLOCKHAIR
	item_state = "khelmet"
	armor = list(melee = 15, bullet = 15, laser = 15,energy = 15, bomb = 25, bio = 90, rad = 90)

/obj/item/weapon/tank/emergency_oxygen/double/ksg_tank
	name = "Uberleben Oxygen Tank"
	desc = "A regulator unit carried inside a leather satchel buckled to a webbing and is easily the most complex piece. A battery-powered fan draws in air, which is passed through particle filters and air-quality samplers, before being pumped up through an air pipe into the connected gasmask."
	icon = 'kriosan_sg.dmi'
	icon_state = "koxygen"
	volume = 600

//Officer Kriosan Survival Gear
/*
/obj/item/clothing/suit/armor/ksg_greatcoat/officer
	icon_state = "ksgofficer"
	item_state = "ksgofficer"
	armor = list(melee = 65, bullet = 45, laser = 65, energy = 25, bomb = 35, bio = 90, rad = 90)
*/
//Kriosan Survival Gear Items

/obj/item/weapon/tool/shovel/ig970
	name = "9-70 Entrenchment Tool"
	desc = "A standard issue tool provided as part of the kriosan survival gear kit to assist during scavenging operations. Though little more than a glorified shovel, this can be used to clear away snow, dirt, dig trenches, and build fortifications."
	icon = 'kriosan_sg.dmi'
	icon_state = "ig970"
	force = 20.0

/obj/item/weapon/storage/box/ksg_kit
	name = "kriosan survival gear kit"
	desc = "Survival not guaranteed. Better hope it wasn't a scam."

/obj/item/weapon/storage/box/ksg_kit/populate_contents()
	new /obj/item/clothing/under/ksg_uniform(src)
	new /obj/item/clothing/suit/armor/ksg_greatcoat(src)
	new /obj/item/clothing/shoes/ksg_boots(src)
	new /obj/item/clothing/mask/gas/ksg_gasmask(src)
	new /obj/item/clothing/head/ksg_helmet(src)
	new /obj/item/weapon/tank/emergency_oxygen/double/ksg_tank(src)
	new /obj/item/weapon/tool/shovel/ig970(src)
