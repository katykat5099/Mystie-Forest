const_value set 2
	const FUCHSIABILLSPEECHHOUSE_POKEFAN_F
	const FUCHSIABILLSPEECHHOUSE_YOUNGSTER

FuchsiaBillSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

FuchsiaBillSpeechHousePokefanFScript:
	jumptextfaceplayer FuchsiaBillSpeechHousePokefanFText

FuchsiaBillSpeechHouseYoungsterScript:
	jumptextfaceplayer FuchsiaBillSpeechHouseYoungsterText

FuchsiaBillSpeechHousePokefanFText:
	text "My grandpa is at "
	line "my brother BILL's"
	cont "on CERULEAN CAPE."
	done

FuchsiaBillSpeechHouseYoungsterText:
	text "I saw these weird,"
	line "slow #MON on"
	cont "CYCLING ROAD."
	done

FuchsiaBillSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 4, FUCHSIA_CITY
	warp_def $7, $3, 4, FUCHSIA_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 2
	person_event SPRITE_POKEFAN_F, 3, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, FuchsiaBillSpeechHousePokefanFScript, -1
	person_event SPRITE_YOUNGSTER, 4, 6, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FuchsiaBillSpeechHouseYoungsterScript, -1
