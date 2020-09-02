/obj/item/clothing/head/helmet/space/void/acolyte
	name = "vector hood"
	desc = "Even the most devout deserve head protection."
	icon_state = "acolyte"
	item_state = "acolyte"
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)

/obj/item/clothing/suit/space/void/acolyte
	name = "brother-chaplain armor"
	desc = "The armor worn by "
	icon_state = "acolyte"
	item_state = "acolyte"
	slowdown = 0.15
	matter = list(MATERIAL_PLASTIC = 30, MATERIAL_STEEL = 25, MATERIAL_BIOMATTER = 40)
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	helmet = /obj/item/clothing/head/helmet/space/void/acolyte

/obj/item/clothing/head/helmet/space/void/agrolyte
	name = "agrolyte hood"
	desc = "Don't want anything getting in your eyes."
	icon_state = "botanist"
	item_state = "botanist"
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)

/obj/item/clothing/suit/space/void/agrolyte
	name = "agrolyte armor"
	desc = "Every rose has its thorns."
	icon_state = "botanist"
	item_state = "botanist"
	slowdown = 0
	matter = list(MATERIAL_PLASTIC = 30, MATERIAL_STEEL = 15, MATERIAL_BIOMATTER = 40)
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	helmet = /obj/item/clothing/head/helmet/space/void/agrolyte

/obj/item/clothing/head/helmet/space/void/custodian
	name = "custodian helmet"
	desc = "Cleaning floors is more dangerous than it looks."
	icon_state = "custodian"
	item_state = "custodian"
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 90
	)
	unacidable = TRUE

/obj/item/clothing/suit/space/void/custodian
	name = "custodian armor"
	desc = "Someone's gotta clean this mess."
	icon_state = "custodian"
	item_state = "custodian"
	slowdown = 0.05
	matter = list(MATERIAL_PLASTIC = 40, MATERIAL_STEEL = 15, MATERIAL_BIOMATTER = 40)
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 90
	)
	unacidable = TRUE
	helmet = /obj/item/clothing/head/helmet/space/void/custodian

/obj/item/clothing/head/helmet/space/void/prime
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

/obj/item/clothing/suit/space/void/prime
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
	helmet = /obj/item/clothing/head/helmet/space/void/prime