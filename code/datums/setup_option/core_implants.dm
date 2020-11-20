/datum/category_item/setup_option/core_implant/cruciform
	name = "Novice Cruciform"
	desc = "The implant given to every disciple of the Absolute. This one is a standard Novice design, having the base-line of a normal cruciform."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform
	restricted_jobs = list()
	allowed_depts = CHURCH
	allowed_jobs = list(
		/datum/job/janitor
		)
	allow_modifications = TRUE

/datum/category_item/setup_option/core_implant/cruciform/tessellate
	name = "Cleric Cruciform"
	desc = "The implant given to every Hospitaller. This one is made for those who walk the path of the Cleric, disciples who promote unity and healing for all. It charges slightly faster \
	but has a smaller power reserve."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/tessellate

/datum/category_item/setup_option/core_implant/cruciform/lemniscate
	name = "Cantor Cruciform"
	desc = "The implant given to every Hospitaller. This one is made for those who walk the path of the Cantor, disciples who preach to the masses the values of discovery, selflessness, experimentation, vigilance, and bravery.\
	They more than any other disciple can inspire those around them to incredible feats and heights they might otherwise not acheive. This has the smallest power reserves but the fastest charge of any cruciform."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/lemniscate

/datum/category_item/setup_option/core_implant/cruciform/monomial
	name = "Paladin Cruciform"
	desc = "The implant given to every Hospitaller. This one is made for those who walk the path of the Paladin, disciples who promote personal improvement and enduring the, \
	many hardships of life. They are famed for bravery, hardiness, and self-sacrifice. This has the largest power reserves of any cruciform but has an incredibly slow charge."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/monomial

/datum/category_item/setup_option/core_implant/cruciform/divisor
	name = "Templar Cruciform"
	desc = "The implant given to every Hospitaller. This one is made for those who walk the path of the Templar, disciples who promote the security of the Order and its members, \
	those who walk this path desire to protect the flock through arms, functioning as an internal guard to the Order."
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/divisor
	restricted_jobs = list(
		/datum/job/merchant,
		/datum/job/swo,
		/datum/job/rd,
		/datum/job/cmo,
		/datum/job/chief_engineer,
		/datum/job/supsec,
		/datum/job/officer,
		/datum/job/smc
		)