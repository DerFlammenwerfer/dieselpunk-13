/obj/structure/closet/secure_closet/reinforced/preacher
	name = "confessor's locker"
	req_access = list(76)
	icon_state = "head_preacher"

/obj/structure/closet/secure_closet/reinforced/preacher/populate_contents()
	if(prob(25))
		new /obj/item/weapon/storage/backpack/neotheology(src)
	else if(prob(25))
		new /obj/item/weapon/storage/backpack/sport/neotheology(src)
	else
		new /obj/item/weapon/storage/backpack/satchel/neotheology(src)
	new /obj/item/clothing/under/rank/preacher(src)
	new /obj/item/device/radio/headset/church(src)
	new /obj/item/weapon/storage/belt/utility/neotheology(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/clothing/suit/storage/chaplain(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/weapon/storage/fancy/candle_box(src)
	new /obj/item/weapon/storage/fancy/candle_box(src)
	new /obj/item/weapon/deck/tarot(src)
	new /obj/item/weapon/computer_hardware/hard_drive/portable/design/nt_boards(src)
	new /obj/item/weapon/storage/pouch/nt_sheath(src)
	new /obj/item/weapon/gun/projectile/mk58/wood(src)
	new /obj/item/ammo_magazine/magnum_40(src)
	new /obj/item/ammo_magazine/magnum_40(src)
	new /obj/item/ammo_magazine/magnum_40/rubber(src)
	new /obj/item/ammo_magazine/magnum_40/rubber(src)
	new /obj/item/weapon/gun/energy/ntpistol(src)
	new /obj/item/weapon/cell/small(src)
	new /obj/item/weapon/tool/knife/neotritual(src)
	new /obj/item/clothing/suit/armor/vest/prime(src)
	new /obj/item/clothing/head/helmet/prime(src)
	new /obj/item/clothing/under/rank/church/sport(src)
	new /obj/item/clothing/suit/storage/neotheosports(src)

/obj/structure/closet/secure_closet/reinforced/ordenknight
	name = "knight's locker"
	req_access = list(77)
	icon_state = "acolyte"

/obj/structure/closet/secure_closet/reinforced/ordenknight/populate_contents()
	if(prob(25))
		new /obj/item/weapon/storage/backpack/neotheology(src)
	else if(prob(25))
		new /obj/item/weapon/storage/backpack/sport/neotheology(src)
	else
		new /obj/item/weapon/storage/backpack/satchel/neotheology(src)
	new /obj/item/device/radio/headset/church(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/weapon/storage/pouch/pistol_holster(src)
	new /obj/item/clothing/accessory/holster/leg(src)
	new /obj/item/weapon/cell/medium/moebius/omega(src)
	new /obj/item/weapon/cell/medium/moebius/omega(src)
	new /obj/item/clothing/mask/gas/germanmask(src)
	new /obj/item/weapon/tank/onestar_regenerator(src)
	new /obj/item/weapon/gun/energy/sniperrifle(src)
	new /obj/item/clothing/accessory/bs_silk(src)
	new /obj/item/clothing/accessory/bs_silk(src)
	new /obj/item/clothing/suit/space/void/prime(src)
	new /obj/item/clothing/accessory/holster/saber/greatsword(src)
	new /obj/item/weapon/tool/sword/crusader/nt_sword/knight(src)
	new /obj/item/weapon/gun/energy/captain 

/obj/structure/closet/secure_closet/reinforced/ordensargent
	name = "orden sargent's locker"
	req_access = list(112)
	icon_state = "acolyte"

/obj/structure/closet/secure_closet/reinforced/ordensargent/populate_contents()
	if(prob(25))
		new /obj/item/weapon/storage/backpack/neotheology(src)
	else if(prob(25))
		new /obj/item/weapon/storage/backpack/sport/neotheology(src)
	else
		new /obj/item/weapon/storage/backpack/satchel/neotheology(src)
	new /obj/item/device/radio/headset/church(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/weapon/storage/pouch/pistol_holster(src)
	new /obj/item/clothing/accessory/holster/leg(src)
	new /obj/item/weapon/cell/medium/moebius/omega(src)
	new /obj/item/weapon/cell/medium/moebius/omega(src)
	new /obj/item/clothing/mask/gas/germanmask(src)
	new /obj/item/weapon/tank/onestar_regenerator(src)
	new /obj/item/clothing/accessory/bs_silk(src)
	new /obj/item/clothing/accessory/bs_silk(src)
	new /obj/item/weapon/storage/pouch/large_generic(src)
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/weapon/gun/energy/centurio(src)
	new /obj/item/clothing/suit/space/void/medarmor/sarge(src)
	new /obj/item/clothing/accessory/holster/saber/greatsword(src)
	new /obj/item/weapon/tool/sword/crusader(src)

/obj/structure/closet/secure_closet/reinforced/ordencorperal
	name = "corperal's locker"
	req_access = list(113)
	icon_state = "acolyte"

/obj/structure/closet/secure_closet/reinforced/ordencorperal/populate_contents()
	if(prob(25))
		new /obj/item/weapon/storage/backpack/neotheology(src)
	else if(prob(25))
		new /obj/item/weapon/storage/backpack/sport/neotheology(src)
	else
		new /obj/item/weapon/storage/backpack/satchel/neotheology(src)
	new /obj/item/device/radio/headset/church(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/weapon/storage/pouch/pistol_holster(src)
	new /obj/item/clothing/accessory/holster/leg(src)
	new /obj/item/weapon/cell/medium/moebius/omega(src)
	new /obj/item/weapon/cell/medium/moebius/omega(src)
	new /obj/item/clothing/mask/gas/germanmask(src)
	new /obj/item/weapon/tank/onestar_regenerator(src)
	new /obj/item/clothing/accessory/bs_silk(src)
	new /obj/item/clothing/accessory/bs_silk(src)
	new /obj/item/weapon/storage/pouch/large_generic(src)
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/weapon/gun/energy/gun(src)
	new /obj/item/clothing/suit/space/void/medarmor(src)
	new /obj/item/weapon/shield/riot(src)
	new /obj/item/clothing/accessory/holster/saber/greatsword(src)
	new /obj/item/weapon/tool/sword/crusader(src)