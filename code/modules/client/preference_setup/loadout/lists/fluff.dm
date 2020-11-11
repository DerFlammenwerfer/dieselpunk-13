/datum/gear
	var/list/ckeywhitelist
	var/list/character_name

/datum/gear/fluff
	path = /obj/item
	sort_category = "Fluff Items"
	display_name = "If this item can be chosen or seen, ping a coder immediately!"
	ckeywhitelist = list("This entry should never be choosable with this variable set.") //If it does, then that means somebody fucked up the whitelist system pretty hard
	character_name = list("This entry should never be choosable with this variable set.")
	cost = 0

/*
/datum/gear/fluff/testhorn
	path = /obj/item/weapon/bikehorn
	display_name = "Airhorn - Example Item" //Don't use the same as another item
	description = "An example item that you probably shouldn't see!"
	ckeywhitelist = list("broman2000")
	allowed_roles = list("Station Engineer")	//Don't include this if the item is not role restricted
	character_name = list("shitfacemcgee")	//Character name. this variable is required, or the item doesn't show in loadout. Change to "character_name = null" if not character restricted.
*/