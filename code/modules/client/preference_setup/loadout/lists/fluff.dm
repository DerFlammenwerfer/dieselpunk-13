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

//  0-9 CKEYS

//  A CKEYS

//  B CKEYS

//  C CKEYS
//CertifiedHyena
//Nikolai Volkov
/datum/gear/fluff/dogtags
	path = /obj/item/clothing/accessory/dogtags/fluff/hyeana
	display_name = "tags man"
	ckeywhitelist = list("certifiedhyena")
	character_name = list("Nikolai Volkov")

//  D CKEYS
//DerFlammenwerfer
//Cult Mechanicus Members
/datum/gear/fluff/enginseer
	path = /obj/item/clothing/suit/hooded/enginseer
	display_name = "Enginseer Armor"
	ckeywhitelist = list("derflammenwerfer")
	character_name = list("Morran Dominic")

//  E CKEYS

//  F CKEYS

//  G CKEYS

//  H CKEYS

//  I CKEYS

//  J CKEYS

//  K CKEYS

//  L CKEYS

//  M CKEYS

//  N CKEYS

//  O CKEYS

//  P CKEYS

//  Q CKEYS

//  R CKEYS

// Random516
/datum/gear/fluff/tennisball_random
	path = /obj/item/toy/tennis/fluff
	display_name = "B A L L"
	ckeywhitelist = list("random516")
	character_name = list("Val Volkov", "Lucy Holmes")

//RisingStarSlash
//Monika Leonard
/datum/gear/fluff/stell_collar
	path = /obj/item/clothing/accessory/collar/fluff/stellar
	display_name = "Heart Collar"
	ckeywhitelist = list("risingstarslash")
	character_name = list("Monika Leonard")

//  S CKEYS

//  T CKEYS

//  U CKEYS

//  V CKEYS

//  W CKEYS

//  X CKEYS

//  Y CKEYS

//  Z CKEYS
