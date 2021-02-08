/obj/item/weapon/gun/projectile/speargun
	name = "Naramad Shotgun-Lance"
	desc = "A spear and pump action shotgun hybrid from early Noria years, a replica of a craftmanship interestingly advanced for the date it was created, though, the original manufacturer is unknown. The chamber can only fit one shell, the mediocre capacity is compensated with an incredible kickback to make clear to your enemies that don't appreciate your personal space." //WIP
	icon = 'icons/obj/guns/projectile/speargun_fancy.dmi'
	icon_state = "spearguna"
	item_state = "spearguna"
	w_class = ITEM_SIZE_GARGANTUAN
	force = 40
	throwforce = WEAPON_FORCE_LETHAL*1.35
	armor_penetration = ARMOR_PEN_MODERATE
	throw_speed = 2.8 //slower than glass spear
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	caliber = CAL_SHOTGUN
	fire_delay = 20
	damage_multiplier = 1.4
	penetration_multiplier  = 1.3
	recoil_buildup = 40
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING
	max_shells = 1
	ammo_type = /obj/item/ammo_casing/shotgun/
	fire_sound = 'sound/weapons/guns/fire/speargun_fire.ogg'
	bulletinsert_sound 	= 'sound/weapons/guns/interact/shotgun_insert.ogg'
	matter = list(MATERIAL_STEEL = 15, MATERIAL_PLASTEEL = 20, MATERIAL_GLASS = 20)
	tool_qualities = list(QUALITY_CUTTING = 10)
	price_tag = 6500
	hitsound = 'sound/weapons/slice.ogg'
	one_hand_penalty = 50 //Massive spear with gunparts in it, meant to be fired at point blank
	var/bolt_open = 0
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "poked", "torn", "ripped", "gored", "cleaved")
	structure_damage_factor = STRUCTURE_DAMAGE_NORMAL
	sharp = TRUE
	edge = TRUE //These two together make for piercing, was an accident that worked out
//	gun_mod_tags = list(GUN_BARREL, GUN_KNIFE, GUN_GRIP, GUN_MUZZLE, GUN_SCOPE)
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_BAYONET, GUN_SILENCABLE)
	embed_mult = 3 //Embeds easily round head
	max_upgrades = 1


///obj/item/weapon/gun/projectile/speargun/get_held_offsets()
//	. = ..()
//	var/mob/M = loc
//	if(istype(M) && (M.get_held_index_of_item(src) & 1))
//		if(. == null)
//			. = list("x"=0,"y"=0)
//		.["x"] -= 12

/obj/item/weapon/gun/projectile/speargun/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (item_suffix)
		itemstring += "[item_suffix]"

	if (bolt_open)
		iconstring += "_open"
	else
		iconstring += "_closed"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/weapon/gun/projectile/speargun/Initialize()
	. = ..()
	update_icon()

/obj/item/weapon/gun/projectile/speargun/attack_self(mob/user) //Someone overrode attackself for this class, soooo.
	if(zoom)
		toggle_scope(user)
		return
	bolt_act(user)

/obj/item/weapon/gun/projectile/speargun/handle_shield(mob/user, var/damage, atom/damage_source = null, mob/attacker = null, var/def_zone = null, var/attack_text = "the attack")
	if(user.incapacitated())
		return 0

	//block as long as they are not directly behind us
	var/bad_arc = reverse_direction(user.dir) //arc of directions from which we cannot block
	if(check_shield_arc(user, bad_arc, damage_source, attacker) && prob(50))
		user.visible_message(SPAN_DANGER("\The [user] blocks [attack_text] with \the [src]!"))
		playsound(user.loc, 'sound/weapons/parry.ogg', 50, 1)
		return 1
	return 0

///obj/item/weapon/gun/projectile/speargun/handle_shield(mob/user, var/damage, atom/damage_source = null, mob/attacker = null, var/def_zone = null, var/attack_text = "the attack")
//
//	if(default_parry_check(user, attacker, damage_source) && prob(40))
//		user.visible_message(SPAN_DANGER("\ [user] parries [attack_text] with \the [src]!"))
//		playsound(user.loc, 'sound/weapons/parry.ogg', 50, 1)
//		return 1
//	return 0



/obj/item/weapon/gun/projectile/speargun/proc/bolt_act(mob/living/user)
	playsound(src.loc, 'sound/weapons/guns/interact/rifle_boltback.ogg', 75, 1)
	bolt_open = !bolt_open
	if(bolt_open)
		if(chambered)
			to_chat(user, SPAN_NOTICE("You work the bolt open, ejecting [chambered]!"))
			chambered.forceMove(get_turf(src))
			loaded -= chambered
			chambered = null
		else
			to_chat(user, SPAN_NOTICE("You work the bolt open."))
	else
		to_chat(user, SPAN_NOTICE("You work the bolt closed."))
		playsound(src.loc, 'sound/weapons/guns/interact/rifle_boltforward.ogg', 75, 1)
		bolt_open = 0
	add_fingerprint(user)
	update_icon()

/obj/item/weapon/gun/projectile/speargun/special_check(mob/user)
	if(bolt_open)
		to_chat(user, SPAN_WARNING("You can't fire [src] while the bolt is open!"))
		return 0
	return ..()

/obj/item/weapon/gun/projectile/speargun/load_ammo(var/obj/item/A, mob/user)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/speargun/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
		return
	..()


/obj/item/weapon/gun/projectile/speargun/protospeargun
	name = "\"Rain's Fury\" Prototype Naramad Rifle-Lance"
	desc = "A stronger prototype of a prototype, with similar features to the Shotgun-Lance, this one is adapted to carry antimaterial rounds for making extra breathing space out of your opponent." //WIP
	icon = 'icons/obj/guns/projectile/speargun_proto.dmi'
	icon_state = "spearguna2"
	item_state = "spearguna2"
	force = 50
	throwforce = WEAPON_FORCE_LETHAL*1.4
	armor_penetration = ARMOR_PEN_MODERATE*1.05
	origin_tech = list(TECH_COMBAT = 7, TECH_MATERIAL = 3)
	caliber = CAL_ANTIM
	fire_delay = 35
	damage_multiplier = 1.2
	penetration_multiplier  = 1.1
	recoil_buildup = 75
	ammo_type = /obj/item/ammo_casing/antim
	fire_sound = 'sound/weapons/guns/fire/protospeargun_fire.ogg'
	bulletinsert_sound 	= 'sound/weapons/guns/interact/shotgun_insert.ogg'
	matter = list(MATERIAL_STEEL = 15, MATERIAL_PLASTEEL = 20, MATERIAL_GLASS = 20)
	tool_qualities = list(QUALITY_CUTTING = 12)
	price_tag = 12500
	one_hand_penalty = 100 //Massive spear with gunparts to match original, meant to be fired at point blank
	structure_damage_factor = STRUCTURE_DAMAGE_BLUNT
	twohanded = TRUE



/obj/item/weapon/gun/projectile/speargun/speargunb
	name = "\"Cleaver\" Naramad Shotgun-Lance"
	desc = "A spear and pump action shotgun hybrid from early Noria years, a replica of a craftmanship interestingly advanced for the date it was created, though, the original manufacturer is unknown. The chamber can only fit one shell, the mediocre capacity is compensated with an incredible kickback to make clear to your enemies that don't appreciate your personal space.\
	This one features a straight edged blade." //WIP
	icon = 'icons/obj/guns/projectile/speargun_varib.dmi'
	icon_state = "speargunb"
	item_state = "speargunc"
	tool_qualities = list(QUALITY_CUTTING = 15)


/obj/item/weapon/gun/projectile/speargun/speargunc
	name = "Naramad Shotgun-Lance"
	desc = "A spear and pump action shotgun hybrid from early Noria years, a replica of a craftmanship interestingly advanced for the date it was created, though, the original manufacturer is unknown. The chamber can only fit one shell, the mediocre capacity is compensated with an incredible kickback to make clear to your enemies that don't appreciate your personal space.\
	This one sports a wavy blade, lacks a butt, but you may feel a better sense of control with the extra room to hold it."
	icon = 'icons/obj/guns/projectile/speargun_varic.dmi'
	icon_state = "speargunc"
	item_state = "speargunc"
	force = 41
	recoil_buildup = 60
	one_hand_penalty = 50 //no buttstock, just handle
	embed_mult = 2 //jagged blade
	throw_speed = 5

//Credits Olympus7 "code", TripleZ sprites, T-StalkerZero and Drago Silves lore consultants, Armyguy, Monster860 ballancing and code consultant, Mick39 rifle concept and Sergals.