#define CLONING_START 	2	//Percent of total progress
#define CLONING_BONES	35
#define CLONING_MEAT 	70
#define CLONING_BODY 	90
#define CLONING_DONE	100

#define ANIM_OPEN 1
#define ANIM_NONE 0
#define ANIM_CLOSE -1

/obj/machinery/neotheology/cloner
	name = "Revenant Chamber"
	desc = "Pods such as this were developed on the cusp of the Shattered Cross Crusade from recovered Jackal flash-cloning tech. Nowadays, they are maintained by the Orden Hospitaller."
	icon = 'icons/obj/neotheology_pod.dmi'
	icon_state = "preview"
	density = TRUE
	anchored = TRUE
	layer = 2.8
	var/obj/machinery/neotheology/reader/reader
	var/reader_loc

	var/obj/machinery/neotheology/biomass_container/container
	var/container_loc

	var/mob/living/carbon/human/occupant
	var/cloning = FALSE
	var/closed = FALSE

	var/progress = 0

	var/cloning_speed  = 2	//Try to avoid use of non integer values

	var/biomass_consumption = 3

	var/image/anim0 = null
	var/image/anim1 = null

	var/power_cost = 250
	var/bin_eff = 1
	var/man_eff = 1
	var/cap_eff = 1

/obj/machinery/neotheology/cloner/medical
	name = "Lazarus Chamber"
	desc = "This version of the Absolutist cloning technology was developed alongside the Soulcrypt some decades after the Shattered Cross through cooperation between the Orden Hospitaller and the Nadezhda Medical service,\
	in order to proliferate an alternative to cruciforms as a means of reconstructing bodies that have been otherwise completely destroyed and without the need for a Chaplain to be present. An unfortunate downside to this is that\
	while these pods can be rebuilt and activated by anyone and are backwards-compatible with cruciform readers, they are only half as efficient as the original Revenant pods with standard-grade parts."
	cloning_speed  = 1
	biomass_consumption = 6
	power_cost = 500
	circuit = /obj/item/weapon/circuitboard/clonepod

/obj/machinery/neotheology/cloner/medical/RefreshParts()
	var/man_rating = 0
	var/bin_rating = 0
	var/cap_rating = 0

	for(var/obj/item/weapon/stock_parts/P in component_parts)
		if(istype(P, /obj/item/weapon/stock_parts/matter_bin))
			bin_rating += P.rating - 4
		if(istype(P, /obj/item/weapon/stock_parts/manipulator))
			man_rating += P.rating - 6
		if(istype(P, /obj/item/weapon/stock_parts/capacitor))
			cap_rating += P.rating - 2
	man_eff = man_rating
	bin_eff = bin_rating
	cap_eff = cap_rating

/obj/machinery/neotheology/cloner/New()
	..()
	icon = 'icons/obj/neotheology_machinery.dmi'
	update_icon()

/obj/machinery/neotheology/cloner/Destroy()
	if(occupant)
		qdel(occupant)
	return ..()


/obj/machinery/neotheology/cloner/proc/find_container()
	for(var/obj/machinery/neotheology/biomass_container/BC in orange(1,src))
		return BC
	return null


/obj/machinery/neotheology/cloner/proc/find_reader()
	for(var/obj/machinery/neotheology/reader/CR in orange(1,src))
		return CR
	return null


/obj/machinery/neotheology/cloner/proc/close_anim()
	qdel(anim0)
	anim0 = image(icon, "pod_closing0")
	anim0.layer = 5.01

	qdel(anim1)
	anim1 = image(icon, "pod_closing1")
	anim1.layer = 5.01
	anim1.pixel_z = 32

	update_icon()
	spawn(20)
		qdel(anim0)
		qdel(anim1)
		anim0 = null
		anim1 = null
		update_icon()

	return TRUE

/obj/machinery/neotheology/cloner/proc/open_anim()
	qdel(anim0)
	anim0 = image(icon, "pod_opening0")
	anim0.layer = 5.01

	qdel(anim1)
	anim1 = image(icon, "pod_opening1")
	anim1.layer = 5.01
	anim1.pixel_z = 32

	update_icon()
	spawn(20)
		qdel(anim0)
		qdel(anim1)
		anim0 = null
		anim1 = null
		update_icon()

	return TRUE


/obj/machinery/neotheology/cloner/proc/eject_contents()
	if(occupant)
		occupant.forceMove(loc)
		occupant = null
	else
		if(progress >= CLONING_MEAT)
			new /obj/item/weapon/reagent_containers/food/snacks/meat(loc)

	update_icon()

/obj/machinery/neotheology/cloner/proc/start()
	if(cloning)
		return

	reader = find_reader()
	if(!reader)
		return

	reader_loc = reader.loc

	container = find_container()
	if(!container)
		return

	reader.reading = TRUE
	reader.update_icon()

	container_loc = container.loc

	progress = 0

	cloning = TRUE

	occupant = null

	closed = TRUE

	close_anim()

	update_icon()
	return TRUE

/obj/machinery/neotheology/cloner/proc/stop()
	if(!cloning)
		return

	cloning = FALSE
	closed = FALSE
	if(reader)
		reader.reading = FALSE
		reader.update_icon()

	eject_contents()
	update_icon()
	return TRUE

/obj/machinery/neotheology/cloner/proc/done()
	occupant.setCloneLoss(0)
	occupant.setBrainLoss(0)
	occupant.updatehealth()
	stop()

/obj/machinery/neotheology/cloner/medical/attack_hand(mob/user)
	src.add_fingerprint(user)
	reader = find_reader()
	if(!reader)
		visible_message("[src]'s control panel flashes \"NO READER\" light.")
		return
	if(!reader.implant)
		visible_message("[src]'s control panel flashes \"NO IMPLANT\" light.")
		return
	if(cloning)
		visible_message("[src]'s control panel flashes \"OCCUPIED\" light.")
		return
	start()

///////////////

/obj/machinery/neotheology/cloner/Process()
	if(stat & NOPOWER)
		return

	if(cloning)
		if(!reader || reader.loc != reader_loc || !reader.implant || !container || container.loc != container_loc)
			open_anim()
			stop()
			update_icon()
			return

		progress += cloning_speed * bin_eff

		if(progress <= CLONING_DONE)
			if(container)
				if(!container.reagents.remove_reagent("biomatter", biomass_consumption / man_eff))
					stop()
			else
				stop()

		if(occupant && ishuman(occupant))
			occupant.setCloneLoss(CLONING_DONE-progress)
			occupant.setBrainLoss(CLONING_DONE-progress)

			occupant.adjustOxyLoss(-4)
			occupant.Paralyse(4)

			occupant.updatehealth()


		if(progress >= CLONING_MEAT && !occupant)
			var/datum/core_module/cruciform/cloning/C = reader.implant.get_module(CRUCIFORM_CLONING)
			var/obj/item/weapon/implant/core_implant/soulcrypt/R = reader.implant
			if(!R && !C)
				open_anim()
				stop()
				update_icon()
				return
			if(R)
				occupant = new/mob/living/carbon/human(src)
				occupant.dna = R.host_dna.Clone()
				occupant.set_species()
				occupant.real_name = R.host_dna.real_name
				occupant.age = R.host_age
				occupant.UpdateAppearance()
				occupant.sync_organ_dna()
				occupant.flavor_text = R.host_flavor_text
				R.host_stats.copyTo(occupant.stats)
			else
				occupant = new/mob/living/carbon/human(src)
				occupant.dna = C.dna.Clone()
				occupant.set_species()
				occupant.real_name = C.dna.real_name
				occupant.age = C.age
				occupant.UpdateAppearance()
				occupant.sync_organ_dna()
				occupant.flavor_text = C.flavor
				C.stats.copyTo(occupant.stats)

		if(progress == CLONING_BODY*cloning_speed )
			var/datum/effect/effect/system/spark_spread/s = new
			s.set_up(3, 1, src)
			s.start()

		if(progress == CLONING_DONE*cloning_speed )
			open_anim()
			closed = FALSE

		if(progress >= CLONING_DONE*cloning_speed  + 2)
			done()

		update_icon()

	use_power(power_cost / cap_eff)


/obj/machinery/neotheology/cloner/update_icon()
	icon_state = "pod_base0"

	cut_overlays()

	if(panel_open)
		var/image/P = image(icon, "pod_panel")
		add_overlay(P)

	var/image/I = image(icon, "pod_base1")
	I.layer = 5
	I.pixel_z = 32
	add_overlay(I)

	if(closed)
		I = image(icon, "pod_under")
		I.layer = 5
		add_overlay(I)

		I = image(icon, "pod_top_on")
		I.layer = 5.021
		I.pixel_z = 32
		add_overlay(I)


	/////////BODY
	var/P = progress
	if(cloning && P >= CLONING_START)
		var/icon/IC = icon(icon, "clone_bones")
		var/crop = 32-min(32,round(((P-CLONING_START)/(CLONING_BONES-CLONING_START))*32))
		IC.Crop(1,crop,IC.Width(),IC.Height())

		I = image(IC)
		I.layer = 5
		I.pixel_z = 11 + crop

		add_overlay(I)

		if(P >= CLONING_BONES)
			I = image(icon, "clone_meat")
			I.alpha = min(255,round(((P-CLONING_BONES)/(CLONING_MEAT-CLONING_BONES))*255))
			I.layer = 5
			I.pixel_z = 11
			add_overlay(I)

			if(P >= CLONING_MEAT && occupant)
				I = image(occupant.icon, occupant.icon_state)
				I.alpha = min(255,round(((P-CLONING_MEAT)/(CLONING_BODY-CLONING_MEAT))*255))
				I.copy_overlays(occupant.get_overlays(), TRUE)
				I.layer = 5
				I.pixel_z = 11
				add_overlay(I)

	//////////////

	if(closed)
		if(!anim0 && !anim1)
			I = image(icon, "pod_glass0")
			I.layer = 5.01
			add_overlay(I)

			I = image(icon, "pod_glass1")
			I.layer = 5.01
			I.pixel_z = 32
			add_overlay(I)

			I = image(icon, "pod_liquid0")
			I.layer = 5.01
			add_overlay(I)

			I = image(icon, "pod_liquid1")
			I.layer = 5.01
			I.pixel_z = 32
			add_overlay(I)

	if(anim0 && anim1)
		add_overlay(anim0)
		add_overlay(anim1)

	I = image(icon, "pod_top0")

	if(!cloning)
		I.layer = layer
	else
		I.layer = 5.02

	add_overlay(I)

	I = image(icon, "pod_top1")
	I.layer = 5.02
	I.pixel_z = 32
	add_overlay(I)


/////////////////////

/////////////////////
//BIOMASS CONTAINER
/////////////////////

/obj/machinery/neotheology/biomass_container
	name = "Strange biomass container"
	desc = "It seems to be a biomass container."
	icon_state = "biocan"
	density = TRUE
	anchored = TRUE

	var/biomass_capacity = 600


/obj/machinery/neotheology/biomass_container/New()
	..()
	create_reagents(biomass_capacity)
	if(SSticker.current_state != GAME_STATE_PLAYING)
		reagents.add_reagent("biomatter", 300)

/obj/machinery/neotheology/biomass_container/examine(mob/user)
	if(!..(user, 2))
		return

	if(!reagents.has_reagent("biomatter"))
		to_chat(user, SPAN_NOTICE("It is empty."))
	else
		to_chat(user, SPAN_NOTICE("Filled to [reagents.total_volume]/[biomass_capacity]."))

/obj/machinery/neotheology/biomass_container/attackby(obj/item/I, mob/user as mob)
	if (istype(I, /obj/item/stack/material/biomatter))
		var/obj/item/stack/material/biomatter/B = I
		if (B.biomatter_in_sheet && B.amount)
			var/sheets_amount_to_transphere = input(user, "How many sheets you want to load?", "Biomatter melting", 1) as num
			if(sheets_amount_to_transphere)
				var/total_transphere_from_stack = 0
				var/i = 1
				while(i <= sheets_amount_to_transphere)
					reagents.add_reagent("biomatter", B.biomatter_in_sheet)
					total_transphere_from_stack += B.biomatter_in_sheet
					i++
				B.use(sheets_amount_to_transphere)
				user.visible_message(
									"[user.name] inserted \the [B.name]'s sheets in \the [name].",
									"You inserted \the [B.name] in  (in amount: [sheets_amount_to_transphere]) \the [name].\
									And after that you see how the counter on \the [name] is incremented by [total_transphere_from_stack]."
									)
				ping()
			else
				to_chat(user, SPAN_WARNING("You can't insert [sheets_amount_to_transphere] in [name]"))
			return
		else
			to_chat(user, SPAN_WARNING("\The [B.name] is exhausted and can't be melted to biomatter. "))

	if(istype(I, /obj/item/weapon/reagent_containers) && I.is_open_container())
		var/obj/item/weapon/reagent_containers/container = I
		if(container.reagents.get_reagent_amount("biomatter") == container.reagents.total_volume)
			container.reagents.trans_to_holder(reagents, container.amount_per_transfer_from_this)
			to_chat(user, SPAN_NOTICE("You transfer some of biomatter from \the [container] to \the [name]."))
		else
			to_chat(user, SPAN_NOTICE("You need clear biomatter to fill \the [name]."))


/obj/machinery/neotheology/biomass_container/update_icon()
	cut_overlays()

	if(panel_open)
		var/image/P = image(icon, "biocan_panel")
		P.dir = dir
		add_overlay(P)

/////////////////////

/////////////////////
//CRUCIFORM IMPLANT READER
/////////////////////

/obj/machinery/neotheology/reader
	name = "Cruciform scanner"
	desc = "It thrums and seems to be scanning anyone who gets near it judging from the small beeps."
	icon_state = "reader_off"
	density = TRUE
	anchored = TRUE

	var/obj/item/weapon/implant/core_implant/implant
	var/reading = FALSE

/obj/machinery/neotheology/reader/medical
	name = "Soulcrypt scanner"
	desc = "Despite the name, it is capable of reading both Soulcrypts and Cruciforms"
	icon = 'icons/obj/soulcrypt_machinery.dmi'
	circuit = /obj/item/weapon/circuitboard/soulcrypt_reader

/obj/machinery/neotheology/reader/attackby(obj/item/I, mob/user as mob)
	if(istype(I, /obj/item/weapon/implant/core_implant/cruciform))
		var/obj/item/weapon/implant/core_implant/cruciform/C = I
		user.drop_item()
		C.forceMove(src)
		implant = C
		visible_message("[I] slides smoothly into the slot.")

	src.add_fingerprint(user)
	update_icon()

/obj/machinery/neotheology/reader/medical/attackby(obj/item/I, mob/user as mob)
	if(istype(I, /obj/item/weapon/implant/core_implant))
		var/obj/item/weapon/implant/core_implant/CI = I
		user.drop_item()
		CI.forceMove(src)
		implant = CI
		visible_message("[I] slides smoothly into the slot.")

	src.add_fingerprint(user)
	update_icon()

/obj/machinery/neotheology/reader/attack_hand(mob/user as mob)
	if(!implant)
		return

	if(reading)
		to_chat(user, SPAN_WARNING("You try to pull the [implant], but it does not move."))
		return

	user.put_in_active_hand(implant)
	implant = null

	src.add_fingerprint(user)
	update_icon()

/obj/machinery/neotheology/reader/on_deconstruction()
	if(implant)
		implant.forceMove(loc)
		implant = null
	return ..()

/obj/machinery/neotheology/reader/update_icon()
	cut_overlays()

	if(panel_open)
		var/image/P = image(icon, "reader_panel")
		add_overlay(P)


	icon_state = "reader_off"

	if(reading)
		icon_state = "reader_on"

	if(implant)
		var/image/I = image(icon, "reader_c_green")
		if(implant.get_module(CRUCIFORM_PRIEST))
			I = image(icon, "reader_c_red")
		add_overlay(I)


/////////////////////

/obj/machinery/neotheology
	icon = 'icons/obj/neotheology_machinery.dmi'

#undef ANIM_OPEN
#undef ANIM_NONE
#undef ANIM_CLOSE
