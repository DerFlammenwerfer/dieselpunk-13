/obj/item/weapon/circuitboard/clonepod
	build_name = "Lazarus Chamber"
	build_path = /obj/machinery/neotheology/cloner/medical
	board_type = "machine"
	origin_tech = list(TECH_DATA = 5, TECH_BIO = 7)
	req_components = list(
		/obj/item/stack/cable_coil = 2,
		/obj/item/weapon/stock_parts/capacitor = 2,
		/obj/item/weapon/stock_parts/manipulator = 6,
		/obj/item/weapon/stock_parts/matter_bin = 4,
		/obj/item/weapon/stock_parts/console_screen = 1
	)

/obj/item/weapon/circuitboard/soulcrypt_reader
	build_name = "Soulcrypt scanner"
	build_path = /obj/machinery/neotheology/reader/medical
	board_type = "machine"
	origin_tech = list(TECH_DATA = 5, TECH_BIO = 7)
	req_components = list(
		/obj/item/stack/cable_coil = 2,
		/obj/item/weapon/stock_parts/scanning_module = 2
	)

/obj/item/weapon/circuitboard/clonescanner
	build_name = "cloning scanner"
	build_path = /obj/machinery/dna_scannernew
	board_type = "machine"
	origin_tech = list(TECH_DATA = 2, TECH_BIO = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/scanning_module = 1,
		/obj/item/weapon/stock_parts/manipulator = 1,
		/obj/item/weapon/stock_parts/micro_laser = 1,
		/obj/item/weapon/stock_parts/console_screen = 1,
		/obj/item/stack/cable_coil = 2
	)
