/*
	Powers contained here:
	Penance: Deals large amounts of harmless pain to a target disciple
	//Obey: Second step of a two-part process to enslave a disciple with an Obey module
	Convalescence: Moderately powerful selfheal
	Succour: Heals a target disciple within arms reach
	Scrying: Look through the eyes of a target disciple.  Global range, expensive and limited duration
	Sending: Send a telepathic message to a specific disciple. Global range
	Initiation: Promotes a disciple to a preacher
	Knowledge: Checks remaining telecrystals (Inquisitor also has a traitor uplink)
	Bounty: Calls up the uplink to order supplies
*/
/datum/ritual/cruciform/inquisitor
	name = "crusader"
	implant_type = /obj/item/weapon/implant/core_implant/cruciform
	category = "Confessor"
	power = 30

/datum/ritual/targeted/cruciform/inquisitor
	name = "crusader targeted"
	implant_type = /obj/item/weapon/implant/core_implant/cruciform
	category = "Confessor"
	power = 30



/*
	Penance
	Deals pain damage to a targeted disciple
*/
/datum/ritual/targeted/cruciform/inquisitor/penance
	name = "Penance"
	phrase = "Mihi vindicta \[Target human]"
	desc = "Imparts extreme pain on the target disciple. Does no actual harm."
	power = 100

/datum/ritual/targeted/cruciform/inquisitor/penance/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	if(!targets.len)
		fail("Target not found.",user,C,targets)
		return FALSE

	var/obj/item/weapon/implant/core_implant/CI = targets[1]

	if(!CI.active || !CI.wearer)

		fail("Cruciform not found.", user, C)
		return FALSE

	var/mob/living/M = CI.wearer

	log_and_message_admins(" inflicted pain on [CI.wearer] with penance litany")
	to_chat(M, SPAN_DANGER("A wave of agony washes over you, the cruciform in your chest searing like a star for a few moments of eternity."))


	var/datum/effect/effect/system/spark_spread/s = new
	s.set_up(1, 1, M.loc)
	s.start()

	M.apply_effect(150, AGONY, 0)

	return TRUE

/datum/ritual/targeted/cruciform/inquisitor/penance/process_target(var/index, var/obj/item/weapon/implant/core_implant/target, var/text)
	target.update_address()
	if(index == 1 && target.address == text)
		if(target.wearer && (target.loc && (target.locs[1] in view())))
			return target



/*
	Obey
	Goes with obey module, disabled for now
*/
/*
/datum/ritual/cruciform/inquisitor/obey
	name = "Obey"
	phrase = "Sicut dilexit me Pater et ego dilexi, vos manete in dilectione mea"
	desc = "Bound believer to your will."

/datum/ritual/cruciform/inquisitor/obey/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	var/obj/item/weapon/implant/core_implant/CI = get_implant_from_victim(user, /obj/item/weapon/implant/core_implant/cruciform)

	if(!CI || !CI.wearer || !ishuman(CI.wearer) || !CI.active)

		fail("Cruciform not found",user,C)
		return FALSE

	if(CI.get_module(CRUCIFORM_OBEY))
		fail("The target is already obeying.",user,C)
		return FALSE

	var/datum/core_module/activatable/cruciform/obey_activator/OA = CI.get_module(CRUCIFORM_OBEY_ACTIVATOR)

	if(!OA)
		fail("Target must have obey upgrade inside his cruciform.",user,C)
		return FALSE

	OA.activate()

	return TRUE
*/

/*
	Scrying: Remotely look through someone's eyes. Global range, useful to find fugitives or corpses
	Uses all of your power and has a limited duration
*/
/datum/ritual/cruciform/inquisitor/scrying
	name = "Scrying"
	phrase = "Ecce ego ad te et ad caelum. Scio omnes absconditis tuis. Vos can abscondere, tu es coram me: nudus."
	desc = "Look on the world from the eyes of another believer. Strenuous and can only be maintained for half a minute. The target will sense they are being watched, but not by whom."
	power = 100

/datum/ritual/cruciform/inquisitor/scrying/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)

	if(!user.client)
		return FALSE

	var/mob/living/M = pick_disciple_global(user, TRUE)
	if (!M)
		return

	if(user == M)
		fail("You feel stupid.",user,C,targets)
		return FALSE
	log_and_message_admins("looks through the eyes of [C] with scrying litany")
	to_chat(M, SPAN_NOTICE("You feel an odd presence in the back of your mind. A lingering sense that someone is watching you..."))

	var/mob/observer/eye/god/eye = new/mob/observer/eye/god(M)
	eye.target = M
	eye.owner_mob = user
	eye.owner_loc = user.loc
	eye.owner = eye
	user.reset_view(eye)

	//After 30 seconds, your view is forced back to yourself
	addtimer(CALLBACK(user, .mob/proc/reset_view, user), 300)

	return TRUE


/datum/ritual/targeted/cruciform/inquisitor/god_eye/process_target(var/index, var/obj/item/weapon/implant/core_implant/target, var/text)
	if(index == 1 && target.address == text && target.active)
		if(target.wearer && target.wearer.stat != DEAD)
			return target

/datum/ritual/cruciform/inquisitor/initiation
	name = "Initiation"
	phrase = "By the powers vested in me as a Confessor, I declare you to have risen in station."
	desc = "The second stage of granting a field promotion to a disciple, upgrading them to Prime. The Prime ascension kit is the first step."
	power = 100

/datum/ritual/cruciform/inquisitor/initiation/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	var/obj/item/weapon/implant/core_implant/CI = get_implant_from_victim(user, /obj/item/weapon/implant/core_implant/cruciform)

	if(!CI || !CI.wearer || !ishuman(CI.wearer) || !CI.active)
		fail("Cruciform not found",user,C)
		return FALSE


	if(CI.get_module(CRUCIFORM_INQUISITOR))
		fail("You cannot promote above your station",user,C)
		return FALSE

	var/datum/core_module/activatable/cruciform/priest_convert/PC = CI.get_module(CRUCIFORM_PRIEST_CONVERT)
	var/datum/core_module/activatable/cruciform/priest_convert/SC = CI.get_module(CRUCIFORM_SQUIRE_CONVERT)
	var/datum/core_module/activatable/cruciform/priest_convert/SGC = CI.get_module(CRUCIFORM_SERGEANT_CONVERT)
	var/datum/core_module/activatable/cruciform/priest_convert/KC = CI.get_module(CRUCIFORM_KNIGHT_CONVERT)

	if(PC && !CI.get_module(CRUCIFORM_PRIEST))
		PC.activate()
		log_and_message_admins("promoted disciple [C] to Brother Chaplain with initiation litany")
		user.say("Arise, Brother Chaplain")
		return TRUE
	if(SC && !CI.get_module(CRUCIFORM_SQUIRE))
		SC.activate()
		log_and_message_admins("promoted disciple [C] to Brother-Corporal with initiation litany")
		user.say("Arise, Brother-Corporal")
		return TRUE
	if(SGC && !CI.get_module(CRUCIFORM_SERGEANT))
		SGC.activate()
		log_and_message_admins("promoted disciple [C] to Brother-Sergeant with initiation litany")
		return TRUE
	if(KC && !CI.get_module(CRUCIFORM_SQUIRE))
		KC.activate()
		log_and_message_admins("promoted disciple [C] to Brother-Knight with initiation litany")
		return TRUE

	fail("Target must have an upgrade inside their cruciform.",user,C)
	return FALSE

	log_and_message_admins("promoted disciple [C] with initiation litany")

	return TRUE

/datum/ritual/cruciform/inquisitor/unupgrade
	name = "Asacris"
	phrase = "A caelo usque ad centrum."
	desc = "This litany will remove any upgrade from the target's cruciform implant. Useable only by Knights and Confessors"
	power = 100
	category = "Brother-Knight"

/datum/ritual/cruciform/inquisitor/unupgrade/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	var/obj/item/weapon/implant/core_implant/cruciform/CI = get_implant_from_victim(user, /obj/item/weapon/implant/core_implant/cruciform)

	if(!CI)
		fail("There is no cruciform on this one.", user, C)
		return FALSE

	if(!CI.wearer)
		fail("Cruciform is not installed.", user, C)
		return FALSE

	if(!istype(CI.upgrades) || length(CI.upgrades) <= 0)
		fail("There are no upgrades on this one.", user, C)
		return FALSE

	if(CI.get_module(CRUCIFORM_INQUISITOR))
		fail("You cannot Asacrate a fellow Confessor", user, C)

	for(var/obj/item/weapon/coreimplant_upgrade/CU in CI.upgrades)
		CU.remove()
		log_and_message_admins("removed upgrades from [C] cruciform with asacris litany")

	return TRUE

/datum/ritual/cruciform/inquisitor/check_telecrystals
	name = "Knowledge"
	phrase = "Cor sapientis quaerit doctrinam, et os stultorum pascetur inperitia"
	desc = "Find out the limits of your power, how much telecrystals you have now."
	power = 5

/datum/ritual/cruciform/inquisitor/check_telecrystals/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	var/datum/core_module/cruciform/uplink/I = C.get_module(CRUCIFORM_UPLINK)

	if(I && I.uplink)
		I.telecrystals = I.uplink.uses
		to_chat(user, "<span class='info'>You have [I.telecrystals] telecrystals.</span>")
		return FALSE
	else
		to_chat(user, "<span class='info'>You have no uplink.</span>")
		return FALSE


/datum/ritual/cruciform/inquisitor/brotherhood
	name = "Eternal Brotherhood"
	phrase = "Ita multi unum corpus sumus in Christo singuli autem alter alterius membra."
	desc = "Reveals other disciples to speaker."


/datum/ritual/cruciform/inquisitor/brotherhood/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	var/datum/core_module/cruciform/neotheologyhud/hud_module = C.get_module(/datum/core_module/cruciform/neotheologyhud)
	if(hud_module)
		C.remove_module(hud_module)
	else
		C.add_module(new /datum/core_module/cruciform/neotheologyhud)
	return TRUE


/datum/ritual/cruciform/inquisitor/battle_call
	name = "Call to Battle"
	phrase = "Si exieritis ad bellum de terra vestra contra hostes qui dimicant adversum vos clangetis ululantibus tubis et erit recordatio vestri coram Domino Deo vestro ut eruamini de manibus inimicorum vestrorum."
	desc = "Inspires the crusader and gives him strength to protect the other disciples. True strength in unity."
	cooldown = TRUE
	cooldown_time = 10 MINUTES
	cooldown_category = "battle call"
	effect_time = 10 MINUTES

/datum/ritual/cruciform/inquisitor/battle_call/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	var/count = 0
	for(var/mob/living/carbon/human/brother in view(user))
		if(brother.get_core_implant(/obj/item/weapon/implant/core_implant/cruciform))
			count += 2

	user.stats.changeStat(STAT_TGH, count)
	user.stats.changeStat(STAT_ROB, count)
	user.stats.changeStat(STAT_VIG, (count / 2))
	to_chat(user, SPAN_NOTICE("You feel an extraordinary burst of energy."))
	set_personal_cooldown(user)
	addtimer(CALLBACK(src, .proc/discard_effect, user, count), src.cooldown_time)
	return TRUE

/datum/ritual/cruciform/inquisitor/battle_call/proc/discard_effect(mob/living/carbon/human/user, amount)
	user.stats.changeStat(STAT_TGH, -amount)
	user.stats.changeStat(STAT_ROB, -amount)
	user.stats.changeStat(STAT_VIG, -amount / 2)

/datum/ritual/cruciform/inquisitor/flash
	name = "Searing Revelation"
	phrase = "Per fidem enim ambulamus et non per speciem."
	desc = "Knocks over everybody without cruciform in the view range. Psy-wave is extremely powerful, the speaker can be knocked down too."
	cooldown = TRUE
	cooldown_time = 2 MINUTES
	cooldown_category = "flash"

/datum/ritual/cruciform/inquisitor/flash/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	for(var/mob/living/carbon/human/victim in view(user))
		if(!victim.get_core_implant(/obj/item/weapon/implant/core_implant/cruciform))
			if(prob(100 - victim.stats.getStat(STAT_VIG)))
				to_chat(victim, SPAN_WARNING("You feel that your knees bends!"))
				victim.Weaken(10)
			else
				to_chat(victim, SPAN_NOTICE("Your legs feel numb, but you managed to stay on your feet!"))
	set_personal_cooldown(user)
	return TRUE


/datum/ritual/targeted/cruciform/inquisitor/useuplink
	name = "Bounty"
	phrase = "Supra Domini, bona de te peto. Audi me, et libera vocationem ad me munera tua"
	desc = "Request supplies and items from headquarters. Find a private place to do this. Establishing the connection takes a lot of power."
	power = 100

/datum/ritual/targeted/cruciform/inquisitor/useuplink/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	var/datum/core_module/cruciform/uplink/I = C.get_module(CRUCIFORM_UPLINK)

	if(I && I.uplink)
		I.uplink.trigger(user)

		return TRUE
	return FALSE


/*
	This is used when an Inquisitor or Knight-Commander promotes someone to the Brother-Knight rank.
*/
/datum/ritual/targeted/cruciform/inquisitor/spawn_item
	name = "Litany of Armaments"
	phrase = "Supra Domini, bona de te peto. Audi me, et libera vocationem ad me munera tua."
	desc = "Request a greatsword, tower shield, and suit of power armor from the church armory to become a real crusader. Establishing the connection takes a lot of power and this litany may only be used once every twelve hours."
	power = 100
	cooldown = TRUE
	cooldown_time = 12 HOURS
	cooldown_category = "armaments"


/datum/ritual/targeted/cruciform/inquisitor/spawn_item/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	new /obj/item/weapon/tool/sword/crusader(usr.loc)
	new /obj/item/clothing/accessory/holster/saber/greatsword/nt_sword/knight(usr.loc)
	new /obj/item/weapon/shield/riot/crusader(usr.loc)
	new /obj/item/weapon/storage/belt/security/neotheology(usr.loc)
	new /obj/item/clothing/suit/space/void/crusader(usr.loc)
	set_personal_cooldown(user)

