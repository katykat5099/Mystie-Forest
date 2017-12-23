const_value set 2
	const CHERRYGROVEPOKECENTER1F_NURSE
	const CHERRYGROVEPOKECENTER1F_FISHER
	const CHERRYGROVEPOKECENTER1F_GENTLEMAN
	const CHERRYGROVEPOKECENTER1F_TEACHER

CherrygrovePokecenter1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

NurseScript_0x19696d:
	jumpstd pokecenternurse

CherrygrovePokecenter1FFisherScript:
	jumptextfaceplayer CherrygrovePokecenter1FFisherText

CherrygrovePokecenter1FGentlemanScript:
	jumptextfaceplayer CherrygrovePokecenter1FGentlemanText

TeacherScript_0x196976:
	faceplayer
	opentext
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x196984
	writetext UnknownText_0x1969f1
	waitbutton
	closetext
	end

UnknownScript_0x196984:
	writetext UnknownText_0x196a46
	waitbutton
	closetext
	end

CherrygrovePokecenter1FFisherText:
	text "It's great. I can"
	line "store any number"

	para "of #MON, and"
	line "it's all free."
	done

CherrygrovePokecenter1FGentlemanText:
	text "That PC is free"
	line "for any trainer"
	cont "to use."
	done

UnknownText_0x1969f1:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "But they're still"
	line "finishing it up."
	done

UnknownText_0x196a46:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "I traded #MON"
	line "there already!"
	done

CherrygrovePokecenter1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $7, $3, 2, CHERRYGROVE_CITY
	warp_def $7, $4, 2, CHERRYGROVE_CITY
	warp_def $7, $0, 1, POKECENTER_2F

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 4
	person_event SPRITE_NURSE, 1, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NurseScript_0x19696d, -1
	person_event SPRITE_FISHER, 3, 2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, CherrygrovePokecenter1FFisherScript, -1
	person_event SPRITE_GENTLEMAN, 6, 8, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CherrygrovePokecenter1FGentlemanScript, -1
	person_event SPRITE_TEACHER, 6, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, TeacherScript_0x196976, -1
