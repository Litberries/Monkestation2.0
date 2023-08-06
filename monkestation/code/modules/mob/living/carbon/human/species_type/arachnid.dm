/datum/species/arachnid
	name = "\improper Arachnid"
	plural_form = "Arachnids"
	id = SPECIES_ARACHNIDS
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN
	sexes = FALSE
	species_traits = list(
		MUTCOLORS,
		EYECOLOR,
		LIPS,
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_BUG
	external_organs = list(/obj/item/organ/external/arachnid_appendages = "long")
	mutant_bodyparts = list("arachnid_appendages")
	meat = /obj/item/food/meat/slab/spider
	disliked_food = VEGETABLES
	liked_food = GORE | MEAT | SEAFOOD | BUGS | GROSS
	species_language_holder = /datum/language_holder/fly
	mutanttongue = /obj/item/organ/internal/tongue/fly
	mutanteyes = /obj/item/organ/internal/eyes/arachnid
	burnmod = 1.2
	heatmod = 1.2
	brutemod = 0.8
	speedmod = -0.1
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/arachnid,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/arachnid,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/arachnid,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/arachnid,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/arachnid,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/arachnid,
	)

/datum/species/arachnid/get_species_description()
	return "Arachnids are a species of humanoid spiders recently employed by Nanotrasen."

/datum/species/arachnid/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "bolt",
			SPECIES_PERK_NAME = "Agile",
			SPECIES_PERK_DESC = "Arachnids run slightly faster than other species.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = "spider",
			SPECIES_PERK_NAME = "Big Appendages",
			SPECIES_PERK_DESC = "Arachnids have appendages that are not hidden by space suits \
			or MODsuits. This can make concealing your identity harder.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "sun",
			SPECIES_PERK_NAME = "Maybe Too Many Eyes",
			SPECIES_PERK_DESC = "Arachnids cannot equip any kind of glasses, requiring \
			alternatives like welding helmets or implants. Their eyes are more durable however.",
		),
	)

	return to_add
