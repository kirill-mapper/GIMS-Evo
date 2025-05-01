parameters chFlags rollout:rolChFlags (
	Flags1		Type:#BoolTab	Default:false		UI:(
		f1_01,
		f1_02,
		f1_03,
		f1_04,
		f1_05,
		f1_06,
		f1_07,
		f1_08,
		f1_09,
		f1_10,
		f1_11,
		f1_12,
		f1_13,
		f1_14,
		f1_15,
		f1_16,
		f1_17,
		f1_18,
		f1_19,
		f1_20,
		f1_21,
		f1_22,
		f1_23,
		f1_24,
		f1_25,
		f1_26,
		f1_27,
		f1_28,
		f1_29,
		f1_30,
		f1_31,
		f1_32
	)	TabSize:32
	Flags2		Type:#BoolTab	Default:false		UI:(
		f2_01,
		f2_02,
		f2_03,
		f2_04,
		f2_05,
		f2_06,
		f2_07,
		f2_08,
		f2_09,
		f2_10,
		f2_11,
		f2_12,
		f2_13,
		f2_14,
		f2_15,
		f2_16,
		f2_17,
		f2_18,
		f2_19,
		f2_20,
		f2_21,
		f2_22,
		f2_23,
		f2_24,
		f2_25,
		f2_26,
		f2_27,
		f2_28,
		f2_29,
		f2_30,
		f2_31,
		f2_32
	)	TabSize:32
)

rollout rolChFlags "Composite child flags" (
	Group	""	(
		button		btnCopy		"Copy"		width:34					Align:#Left		Across:4		Offset:[0, -8]
		button		btnPast 	"Paste"		width:34					Align:#Left             		Offset:[0, -8]
		button		btnReset 	"Reset"		width:34					Align:#Right            		Offset:[0, -8]
		button		btnUsed 	"Used"		width:34					Align:#Right      		        Offset:[0, -8]
		CheckBox		f1_01											Align:#Left		Across:3		Offset:[5, -2]
		label			lb_01	"Animal"								Align:#Left						Offset:[-15, -2]
		CheckBox		f2_01											Align:#Right					Offset:[5, -2]
		CheckBox		f1_02											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_02	"Animal ragdoll"						Align:#Left						Offset:[-15, -4]
		CheckBox		f2_02											Align:#Right					Offset:[5, -4]
		CheckBox		f1_03											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_03	"Explosion"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_03											Align:#Right					Offset:[5, -4]
		CheckBox		f1_04											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_04	"Foliage"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_04											Align:#Right					Offset:[5, -4]
		CheckBox		f1_05											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_05	"Forklift forks"						Align:#Left						Offset:[-15, -4]
		CheckBox		f2_05											Align:#Right					Offset:[5, -4]
		CheckBox		f1_06											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_06	"Glass"									Align:#Left						Offset:[-15, -4]
		CheckBox		f2_06											Align:#Right					Offset:[5, -4]
		CheckBox		f1_07											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_07	"Map animal"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_07											Align:#Right					Offset:[5, -4]
		CheckBox		f1_08											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_08	"Map cover"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_08											Align:#Right					Offset:[5, -4]
		CheckBox		f1_09											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_09	"Map deep surface"						Align:#Left						Offset:[-15, -4]
		CheckBox		f2_09											Align:#Right					Offset:[5, -4]
		CheckBox		f1_10											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_10	"Map dynamic"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_10											Align:#Right					Offset:[5, -4]
		CheckBox		f1_11											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_11	"Map river"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_11											Align:#Right					Offset:[5, -4]
		CheckBox		f1_12											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_12	"Map stairs"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_12											Align:#Right					Offset:[5, -4]
		CheckBox		f1_13											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_13	"Map vehicle"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_13											Align:#Right					Offset:[5, -4]
		CheckBox		f1_14											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_14	"Map weapon"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_14											Align:#Right					Offset:[5, -4]
		CheckBox		f1_15											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_15	"Object"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_15											Align:#Right					Offset:[5, -4]
		CheckBox		f1_16											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_16	"Object env cloth"						Align:#Left						Offset:[-15, -4]
		CheckBox		f2_16											Align:#Right					Offset:[5, -4]
		CheckBox		f1_17											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_17	"Ped"									Align:#Left						Offset:[-15, -4]
		CheckBox		f2_17											Align:#Right					Offset:[5, -4]
		CheckBox		f1_18											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_18	"Pickup"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_18											Align:#Right					Offset:[5, -4]
		CheckBox		f1_19											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_19	"Plant"									Align:#Left						Offset:[-15, -4]
		CheckBox		f2_19											Align:#Right					Offset:[5, -4]
		CheckBox		f1_20											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_20	"Projectile"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_20											Align:#Right					Offset:[5, -4]
		CheckBox		f1_21											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_21	"Ragdoll"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_21											Align:#Right					Offset:[5, -4]
		CheckBox		f1_22											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_22	"Smoke"									Align:#Left						Offset:[-15, -4]
		CheckBox		f2_22											Align:#Right					Offset:[5, -4]
		CheckBox		f1_23											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_23	"Test ai"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_23											Align:#Right					Offset:[5, -4]
		CheckBox		f1_24											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_24	"Test camera"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_24											Align:#Right					Offset:[5, -4]
		CheckBox		f1_25											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_25	"Test script"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_25											Align:#Right					Offset:[5, -4]
		CheckBox		f1_26											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_26	"Test vehicle wheel"					Align:#Left						Offset:[-15, -4]
		CheckBox		f2_26											Align:#Right					Offset:[5, -4]
		CheckBox		f1_27											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_27	"Test weapon"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_27											Align:#Right					Offset:[5, -4]
		CheckBox		f1_28											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_28	"Unknown"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_28											Align:#Right					Offset:[5, -4]
		CheckBox		f1_29											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_29	"Unsmashed"								Align:#Left						Offset:[-15, -4]
		CheckBox		f2_29											Align:#Right					Offset:[5, -4]
		CheckBox		f1_30											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_30	"Vehicle box"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_30											Align:#Right					Offset:[5, -4]
		CheckBox		f1_31											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_31	"Vehicle bvh"							Align:#Left						Offset:[-15, -4]
		CheckBox		f2_31											Align:#Right					Offset:[5, -4]
		CheckBox		f1_32											Align:#Left		Across:3		Offset:[5, -4]
		label			lb_32	"Vehicle not bvh"						Align:#Left						Offset:[-15, -4]
		CheckBox		f2_32											Align:#Right					Offset:[5, -4]
	) 		
		label			lb1		"Flags1" 		Enabled:false			Align:#Left		Across:2		Offset:[0, -560]
		label			lb2		"Flags2" 		Enabled:false			Align:#Right				    Offset:[0, -560]
		
	local	gf1 = EGIMS_V_Col_Flags1,
			gf2 = EGIMS_V_Col_Flags2
	fn copyFlags = (
		local	f1 = this.Flags1,
				f2 = this.Flags2
		if f1 != undefined and f2 != undefined then (
		for i = 1 to f1.count do gf1[i] = f1[i]
		for i = 1 to f2.count do gf2[i] = f2[i]
		)
	)
	fn getTargets = (
		local targets = #()
		if (isProperty this "Flags1") and (isProperty this "Flags2") then (
			append targets this
		)
		if modPanel.getPinStack() then (
			for Obj in selection where (
				Obj.BaseObject != modPanel.getCurrentObject() and
				Obj.modifiers[#EGIMS_V_CollisionMesh] != modPanel.getCurrentObject()
			) do (
				if (isProperty Obj.modifiers[#EGIMS_V_CollisionMesh] "Flags1") and 
				   (isProperty Obj.modifiers[#EGIMS_V_CollisionMesh] "Flags2") then (
					append targets Obj.modifiers[#EGIMS_V_CollisionMesh]
				) else if (isProperty Obj "Flags1") and (isProperty Obj "Flags2") then (
					append targets Obj
				)
			)
		)
		return targets
	)
	fn pasteFlags = (
		undo "Paste Flags" on (
			local	f1, f2,
					targets = getTargets()
			for target in targets do (
				f1 = target.Flags1
				f2 = target.Flags2
				if f1 != undefined and f2 != undefined then (
					for i = 1 to gf1.count do f1[i] = gf1[i]
					for i = 1 to gf2.count do f2[i] = gf2[i]
				)
			)
		)
	)
	fn resetFlags = (
		undo "Reset Flags" on (
			local	f1, f2,
					targets = getTargets()
			for target in targets do (
				f1 = target.Flags1
				f2 = target.Flags2
				if f1 != undefined and f2 != undefined then (
					for i = 1 to f1.count do f1[i] = false
					for i = 1 to f2.count do f2[i] = false
				)
			)
		)
	)
	fn usedFlags = (
		undo "Used Flags" on (
			local	f1, f2,
					targets = getTargets()
			for target in targets do (
				f1 = target.Flags1
				f2 = target.Flags2
				if f1 != undefined and f2 != undefined then (
					for i = 1 to f1.count do f1[i] = false
					for i = 1 to f2.count do f2[i] = false
					for i in #(7, 8, 10, 13, 14) do f1[i] = true
					for i in #(1, 2, 3, 5, 6, 15, 17, 19, 20, 21, 23, 24, 25, 26, 27, 31, 32) do f2[i] = true
				)
			)
		)
	)	
	on btnCopy pressed do copyFlags()
	on btnPast pressed do pasteFlags()
	on btnReset pressed do resetFlags()
	on btnUsed pressed do usedFlags()
)
/*
fn AdditionalCreateHandler = (
	local	f1 = this.Flags1,
			f2 = this.Flags2
	for i = 1 to f1.count do
        f1[i] = false
    for i = 1 to f2.count do
        f2[i] = false
    for i in #(7, 8, 10, 13, 14) do
        f1[i] = true
	for i in #(1, 2, 3, 5, 6, 15, 17, 19, 20, 21, 23, 24, 25, 26, 27, 31, 32) do
        f2[i] = true
)*/