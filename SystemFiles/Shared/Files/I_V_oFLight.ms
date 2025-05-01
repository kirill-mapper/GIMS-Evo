local	IsCreating = false,
		VPMesh = undefined

fn UpdateUI = (
	/*<PROFILERSTART>*//*LogProfiler #Start (local SS = (StringStream ""); Stack ShowLocals:false FirstFrameOnly:true To:SS; SS); local PWS = (*//*<PROFILERSTARTED>*/
	/*<ERRHANDLERSTART>*/try (
	local	statePTN = (this.GenerateName == true),
			LightsRol = this.LightsRol
	LightsRol.ProjectedTextureName.Enabled = statePTN
	local	statePTH = (this.GenerateName == false)
	LightsRol.ProjTexHash.Enabled = statePTH
	local	state = this.CustomCullingPlane
	LightsRol.cCPX.Enabled = LightsRol.cCPAngleX.Enabled = state
	LightsRol.cCPY.Enabled = LightsRol.cCPAngleY.Enabled = state
	LightsRol.cCPZ.Enabled = LightsRol.cCPAngleZ.Enabled = state
	LightsRol.cCPDistance.Enabled = state
	local	stateTng = this.CustomTng
	LightsRol.cTngX.Enabled = LightsRol.cTngAngleX.Enabled = stateTng
	LightsRol.cTngY.Enabled = LightsRol.cTngAngleY.Enabled = stateTng
	LightsRol.cTngZ.Enabled = LightsRol.cTngAngleZ.Enabled = stateTng
	
	/*local	IsDot = (this.Type == 1)
	LightsRol.ConeInnerAngle.Enabled = IsDot
	LightsRol.ConeOuterAngle.Enabled = IsDot*/
		local	IsSpot = (this.Type == 2)
	LightsRol.ConeInnerAngle.Enabled = IsSpot
	LightsRol.ConeOuterAngle.Enabled = IsSpot
		local	IsCapsule = (this.Type == 3)
	LightsRol.TheExtents.Enabled = IsCapsule
	/*<ERRHANDLER>*/) catch (local	CET = (GetCurrentException()),ESS;if not (MatchPattern CET Pattern:"*<THROW>*") then (ESS = (StringStream "");Stack ShowLocals:EGIMS_EHStackLocals FirstFrameOnly:EGIMS_EHFFO To:ESS); EGIMS_EHReport CET ESS NoMetro:true)/*<ERRHANDLEREND>*/
	/*<PROFILEREND>*//*); LogProfiler #End 0; PWS*//*<PROFILERENDED>*/
)

fn UpdateContainer = (
	/*<PROFILERSTART>*//*LogProfiler #Start (local SS = (StringStream ""); Stack ShowLocals:false FirstFrameOnly:true To:SS; SS); local PWS = (*//*<PROFILERSTARTED>*/
	/*<ERRHANDLERSTART>*/try (
	if IsCreating != true then (
		local	ParentObj = this.ParentObj
		ParentObj.Type = #(#Omni, #FreeSpot, #FreeDirect)[this.Type]
		ParentObj.Color = this.TheColor
		ParentObj.FarAttenEnd = this.Falloff
		ParentObj.useNearAtten = off
		ParentObj.showNearAtten = off
		ParentObj.useFarAtten = on
		ParentObj.showFarAtten = off
		ParentObj.Multiplier = this.Intensity/25
		ParentObj.FarAttenStart = 1.0/(this.FalloffExponent/10+1.0)*this.Falloff
		ParentObj.ambientOnly = false
		ParentObj.DecayRadius = ParentObj.FarAttenStart
		ParentObj.attenDecay = 2
		if this.Type == 1 then (
			--ParentObj.DecayRadius = this.TheDistance
			)
		else if this.Type == 2 then (
			--ParentObj.DecayRadius = this.TheDistance
			ParentObj.HotSpot = this.ConeInnerAngle*2
			ParentObj.Falloff = this.ConeOuterAngle*2
			ParentObj.targetdistance = this.Falloff
			ParentObj.overshoot = false
			ParentObj.coneShape = 1
			ParentObj.showCone = false
		)
		else (
		ParentObj.attenDecay = 1
		--ParentObj.DecayRadius = this.TheExtents/2
		ParentObj.FarAttenStart = 1.0/(this.FalloffExponent/10+1.0)*(this.TheExtents/2+this.Falloff)
		ParentObj.FarAttenEnd = this.TheExtents/2+this.Falloff
		ParentObj.HotSpot = 1.0/(this.FalloffExponent/10+1.0)*this.Falloff
		ParentObj.Falloff = this.Falloff
		ParentObj.targetdistance = this.TheExtents/2
		ParentObj.coneShape = 1
		ParentObj.showCone = false
		ParentObj.ambientOnly = true
		)
	)
	/*<ERRHANDLER>*/) catch (local	CET = (GetCurrentException()),ESS;if not (MatchPattern CET Pattern:"*<THROW>*") then (ESS = (StringStream "");Stack ShowLocals:EGIMS_EHStackLocals FirstFrameOnly:EGIMS_EHFFO To:ESS); EGIMS_EHReport CET ESS NoMetro:true)/*<ERRHANDLEREND>*/
	/*<PROFILEREND>*//*); LogProfiler #End 0; PWS*//*<PROFILERENDED>*/
)

parameters params rollout:LightsRol (
	ParentObj				Type:#MAXObject
	Type					Type:#Integer	Default:1			UI:cType
	BoneTag					Type:#Integer	Default:0			UI:BoneTag
	GroupId					Type:#Integer	Default:0			UI:GroupId
	LightHash				Type:#Integer	Default:0			UI:LightHash
	ProjectedTextureName	Type:#String	Default:""			UI:ProjectedTextureName
	ProjTexHash				Type:#String	Default:"0"			UI:ProjTexHash	
	GenerateName			Type:#Boolean	Default:true		UI:GenName
	Flags					Type:#BoolTab	Default:false		TabSize:32					UI:(
																								mcflag_1,
																								mcflag_2,
																								mcflag_3,
																								mcflag_4,
																								mcflag_5,
																								mcflag_6,
																								mcflag_7,
																								mcflag_8,
																								mcflag_9,
																								mcflag_10,
																								mcflag_11,
																								mcflag_12,
																								mcflag_13,
																								mcflag_14,
																								mcflag_15,
																								mcflag_16,
																								mcflag_17,
																								mcflag_18,
																								mcflag_19,
																								mcflag_20,
																								mcflag_21,
																								mcflag_22,
																								mcflag_23,
																								mcflag_24,
																								mcflag_25,
																								mcflag_26,
																								mcflag_27,
																								mcflag_28,
																								mcflag_29,
																								mcflag_30,
																								mcflag_31,
																								mcflag_32
																							)
	TimeFlags				Type:#BoolTab	Default:false		TabSize:32					UI:(
																								mtflag_1,
																								mtflag_2,
																								mtflag_3,
																								mtflag_4,
																								mtflag_5,
																								mtflag_6,
																								mtflag_7,
																								mtflag_8,
																								mtflag_9,
																								mtflag_10,
																								mtflag_11,
																								mtflag_12,
																								mtflag_13,
																								mtflag_14,
																								mtflag_15,
																								mtflag_16,
																								mtflag_17,
																								mtflag_18,
																								mtflag_19,
																								mtflag_20,
																								mtflag_21,
																								mtflag_22,
																								mtflag_23,
																								mtflag_24,
																								mtflag_25,
																								mtflag_26,
																								mtflag_27,
																								mtflag_28,
																								mtflag_29,
																								mtflag_30,
																								mtflag_31,
																								mtflag_32
																							)
	TheColor				Type:#Color		Default:White		UI:TheColor
	TheExtents				Type:#Float		Default:1			UI:TheExtents
	LocalAxisCP				Type:#Boolean	Default:false		UI:localCP
	CustomCullingPlane		Type:#Boolean	Default:false		UI:cCustomCullingPlane
	CPAngles				Type:#AngleTab	Default:0			TabSize:3	UI:(
																				cCPX,
																				cCPY,
																				cCPZ
																			)
																			
	CustomTng				Type:#Boolean	Default:false		UI:cCustomTng
	TngAngles				Type:#AngleTab	Default:0			TabSize:3	UI:(
																				cTngX,
																				cTngY,
																				cTngZ
																			)																			
																			
	CPDistance				Type:#Float		Default:10			UI:cCPDistance

	CoronaSize				Type:#Float		Default:3			UI:CoronaSize
	CoronaIntensity			Type:#Float		Default:2			UI:CoronaIntensity
	CoronaZBias				Type:#Float		Default:0.1			UI:CoronaZBias

	Flashiness				Type:#Integer	Default:0			
	FlashinessFlags			Type:#Integer	Default:1			UI:FlashinessFlags
	Intensity				Type:#Float		Default:1			UI:Intensity
	Falloff					Type:#Float		Default:10			UI:Falloff
	FalloffExponent			Type:#Float		Default:45			UI:FalloffExponent

	VolumeOuterColor		Type:#Color		Default:White		UI:VolumeOuterColor			
	VolumeIntensity			Type:#Float		Default:1			UI:VolumeIntensity
	VolumeSizeScale			Type:#Float		Default:1			UI:VolumeSizeScale
	VolumeOuterIntensity	Type:#Float		Default:1			UI:VolumeOuterIntensity
	VolumeOuterExponent		Type:#Float		Default:1			UI:VolumeOuterExponent
	VolumetricFadeDistance	Type:#Integer	Default:0			UI:VolumetricFadeDistance

	TheDistance				Type:#Integer	Default:0			UI:LightFadeDistance
	SpecularFadeDistance	Type:#Integer	Default:0			UI:SpecularFadeDistance

	ShadowBlur				Type:#Integer	Default:0			UI:ShadowBlur
	ShadowFadeDistance		Type:#Integer	Default:0			UI:ShadowFadeDistance
	ShadowNearClip			Type:#Float		Default:0.01		UI:ShadowNearClip

	ConeInnerAngle			Type:#Float		Default:10			UI:ConeInnerAngle
	ConeOuterAngle			Type:#Float		Default:25			UI:ConeOuterAngle
	
	on FlashinessFlags set Val do
		Flashiness = (Val - 1)
	
	on Flashiness set Val do
		FlashinessFlags = (Val + 1)
	
	on Type set val do (
		VPMesh = undefined
		UpdateContainer()
		UpdateUI()
	)
	on GenerateName set Val do (
		UpdateUI()
	)
	on TheColor set val do
		UpdateContainer()
	on CustomCullingPlane set Val do (
		VPMesh = undefined
		UpdateUI()
	)
	on CustomTng set Val do (
		UpdateUI()
	)
	on CPAngles set val do
		VPMesh = undefined
	on CPAngles set val i do
		VPMesh = undefined
		
	on TngAngles set val do
		VPMesh = undefined
	on TngAngles set val i do
		VPMesh = undefined	
		
	on CPDistance set val do
		VPMesh = undefined
	on TheDistance set val do
		UpdateContainer()
	on Falloff set val do
		UpdateContainer()
	on FalloffExponent set val do
		UpdateContainer()
	on Intensity set val do
		UpdateContainer()
	on ConeInnerAngle set val do
		UpdateContainer()
	on ConeOuterAngle set val do
		UpdateContainer()
	on TheExtents set val do
		UpdateContainer()
)

rollout LightsRol "GTA V model light" (
	local	AngleRange = [-360, 360, 0],
			FlashinessNameArray = #(
				"Constant","Random","RandomOverrideIfWet",
				"OnceSecond","TwiceSecond","FiveSecond",			
				"RandomFlashiness","Off","Unused1",	
				"Alarm","OnWhenRaining","Cycle1",			
				"Cycle2","Cycle3","Disco","Candle",			
				"Plane","Fire","Threshold","Electric",		
				"Strobe","Count"
			),
			FlashinessTooltip = (
				" 0 - Constant\n 1 - Random\n 2 - RandomOverrideIfWet\n" +
				" 3 - OnceSecond\n 4 - TwiceSecond\n 5 - FiveSecond\n" + 
				" 6 - RandomFlashiness\n 7 - Off\n 8 - Unused1\n" + 
				" 9 - Alarm\n10 - OnWhenRaining\n11 - Cycle1\n" +
				"12 - Cycle2\n13 - Cycle3\n14 - Disco\n15 - Candle\n" +
				"16 - Plane\n17 - Fire\n18 - Threshold\n19 - Electric\n" +
				"20 - Strobe\n21 - Count"
			)
	Label	TypeTip	"Type:"	Across:2
	RadioButtons cType Labels:#("Dot", "Spot", "Capsule") Columns:1
	ColorPicker TheColor "Color" Align:#Right
	Group "Projector texture"(
	CheckBox	GenName	"Generate Name"
	EditText	ProjectedTextureName
	Label	pth		"Hash"
	EditText	ProjTexHash
	)
	Group "" (
	Spinner	LightHash					"Light hash"		Type:#Integer	Range:[0,255,0]
	Spinner	BoneTag						"Bone ID"			Type:#Integer	Range:[0,65535,0]
	Spinner	GroupId						"Group ID"			Type:#Integer	Range:[0,255,0]
	Label FlashinessLabel 				"Flashiness" 		Offset:[0, 3]   Align:#Right	Across:2 
	DropdownList FlashinessFlags 		items:FlashinessNameArray tooltip:FlashinessTooltip
	Spinner	Intensity					"Intensity"			Type:#Float		Range:[0,100,1] 
	Spinner	Falloff						"Falloff"			Type:#Float		Range:[0.01,179,10]
	Spinner	FalloffExponent				"FalloffExponent"	Type:#Float		Range:[0,512,1]
	Spinner	TheExtents					"Extents"			Type:#Float		Range:[0,1000,1]
	)
	Group "Light cone" (
		Spinner	ConeInnerAngle			"Inner angle"		Type:#Float		Range:[0.01,179,10]
		Spinner	ConeOuterAngle			"Outer angle"		Type:#Float		Range:[0.01,179,25]
	)
	Group "Fade distance" (
		Spinner	LightFadeDistance		"Light"				Type:#Integer	Range:[0,255,0]
		Spinner	SpecularFadeDistance	"Specular"			Type:#Integer	Range:[0,255,0]
	)
	Group "Corona" (
		Spinner	CoronaSize				"Size"				Type:#Float		Range:[0,100,1]
		Spinner	CoronaIntensity			"Intensity"			Type:#Float		Range:[0,10,1]
		Spinner	CoronaZBias				"Z-Bias"			Type:#Float		Range:[0,1,0.1]
	)
	Group "Shadows" (
		Spinner	ShadowBlur				"Blur"				Type:#Integer	Range:[0,255,0]
		Spinner	ShadowFadeDistance		"Fade distance"		Type:#Integer	Range:[0,255,0]
		Spinner	ShadowNearClip			"Near clip"			Type:#Float		Range:[0,5,0.01]
	)
	Group "Light volume" (
		ColorPicker VolumeOuterColor 	"Outer color" 		Align:#Right
		Spinner	VolumeIntensity			"Intensity"			Type:#Float		Range:[0,10,1]
		Spinner	VolumeSizeScale			"Size scale"		Type:#Float		Range:[0,10,1]
		Spinner	VolumeOuterIntensity	"Outer intensity"	Type:#Float		Range:[0,1,0]
		Spinner	VolumeOuterExponent		"Outer exponent"	Type:#Float		Range:[0,512,1]
		Spinner	VolumetricFadeDistance	"Fade distance"		Type:#Integer	Range:[0,255,0]
	)
	Group "Culling plane" (
		CheckBox	cCustomCullingPlane	"Custom"  Across:2
		CheckBox	localCP	"Local Axis"
		Spinner	cCPDistance	"Distance"	Type:#Float		Range:[0,10000,10]	Align:#Right
		Label	lCP	"Direction:"	Align:#Center
		Angle	cCPAngleX	"X"	Color:(color 200 0 0)	Diameter:40	StartDegrees:-90	Dir:#CW	Range:AngleRange	Align:#Left	Across:3
		Angle	cCPAngleY	"Y"	Color:(color 0 156 0)	Diameter:40	StartDegrees:-90	Dir:#CW	Range:AngleRange	Align:#Center
		Angle	cCPAngleZ	"Z"	Color:(color 0 0 195)	Diameter:40	StartDegrees:-90	Dir:#CW	Range:AngleRange	Align:#Right
		Spinner	cCPX	Type:#Float	Range:AngleRange	FieldWidth:35	Align:#Left	Across:3
		Spinner	cCPY	Type:#Float	Range:AngleRange	FieldWidth:35	Align:#Center
		Spinner	cCPZ	Type:#Float	Range:AngleRange	FieldWidth:35	Align:#Right
	)
	Group "Tangent" (
		CheckBox	cCustomTng	"Custom"
		Label	lTng	"Direction:"	Align:#Center
		Angle	cTngAngleX	"X"	Color:(color 200 0 0)	Diameter:40	StartDegrees:-90	Dir:#CW	Range:AngleRange	Align:#Left	Across:3
		Angle	cTngAngleY	"Y"	Color:(color 0 156 0)	Diameter:40	StartDegrees:-90	Dir:#CW	Range:AngleRange	Align:#Center
		Angle	cTngAngleZ	"Z"	Color:(color 0 0 195)	Diameter:40	StartDegrees:-90	Dir:#CW	Range:AngleRange	Align:#Right
		Spinner	cTngX	Type:#Float	Range:AngleRange	FieldWidth:35	Align:#Left	Across:3
		Spinner	cTngY	Type:#Float	Range:AngleRange	FieldWidth:35	Align:#Center
		Spinner	cTngZ	Type:#Float	Range:AngleRange	FieldWidth:35	Align:#Right
	)
	Group "Flags" (
		checkbox mcflag_1 "InteriorOnly"		
		checkbox mcflag_2 "ExteriorOnly"
		checkbox mcflag_3 "DontUseInCutscene"		
		checkbox mcflag_4 "Vehicle"
		checkbox mcflag_5 "Fx"		
		checkbox mcflag_6 "TextureProjection"
		checkbox mcflag_7 "CastShadows"		
		checkbox mcflag_8 "CastStaticGeomShadows"
		checkbox mcflag_9 "CastDynamicGeomShadows"		
		checkbox mcflag_10 "CalcFromSun"
		checkbox mcflag_11 "EnableBuzzing"		
		checkbox mcflag_12 "ForceBuzzing"
		checkbox mcflag_13 "DrawVolume"		
		checkbox mcflag_14 "NoSpecular"
		checkbox mcflag_15 "BothInteriorAndExterior"		
		checkbox mcflag_16 "CoronaOnly"
		checkbox mcflag_17 "NotInReflection"		
		checkbox mcflag_18 "OnlyInReflection"
		checkbox mcflag_19 "UseCullPlane"		
		checkbox mcflag_20 "UseVolumeOuterColour"
		checkbox mcflag_21 "CastHigherResShadows"		
		checkbox mcflag_22 "CastOnlyLowresShadows"
		checkbox mcflag_23 "FarLodLight"		
		checkbox mcflag_24 "DontLightAlpha"
		checkbox mcflag_25 "CastShadowsIfPossible"		
		checkbox mcflag_26 "Cutscene"
		checkbox mcflag_27 "MovingLightSource"		
		checkbox mcflag_28 "UseVehicleTwin"
		checkbox mcflag_29 "ForceMediumLodLight"		
		checkbox mcflag_30 "CoronaOnlyLodLight"
		checkbox mcflag_31 "DelayRender"		
		checkbox mcflag_32 "AlreadyTestedForOcclusion"
	)
	Group "Time flags" (
		checkbox mtflag_1 "00:00"	Across:2
		checkbox mtflag_2 "01:00"
		checkbox mtflag_3 "02:00"	Across:2
		checkbox mtflag_4 "03:00"
		checkbox mtflag_5 "04:00"	Across:2
		checkbox mtflag_6 "05:00"
		checkbox mtflag_7 "06:00"	Across:2
		checkbox mtflag_8 "07:00"
		checkbox mtflag_9 "08:00"	Across:2
		checkbox mtflag_10 "09:00"
		checkbox mtflag_11 "10:00"	Across:2
		checkbox mtflag_12 "11:00"
		checkbox mtflag_13 "12:00"	Across:2
		checkbox mtflag_14 "13:00"
		checkbox mtflag_15 "14:00"	Across:2
		checkbox mtflag_16 "15:00"
		checkbox mtflag_17 "16:00"	Across:2
		checkbox mtflag_18 "17:00"
		checkbox mtflag_19 "18:00"	Across:2
		checkbox mtflag_20 "19:00"
		checkbox mtflag_21 "20:00"	Across:2
		checkbox mtflag_22 "21:00"
		checkbox mtflag_23 "22:00"	Across:2
		checkbox mtflag_24 "23:00"
		)
	Group "Time flags Unknown"(
		checkbox mtflag_25 "unk 25"	Across:2
		checkbox mtflag_26 "unk 26"
		checkbox mtflag_27 "unk 27"	Across:2
		checkbox mtflag_28 "unk 28"
		checkbox mtflag_29 "unk 29"	Across:2
		checkbox mtflag_30 "unk 30"
		checkbox mtflag_31 "unk 31"	Across:2
		checkbox mtflag_32 "unk 32"

	)
	
	on FlashinessFlags rightClick do
		FlashinessFlags.selection = 1

	on cCPAngleX Changed Val do
		cCPX.Value = Val
	on cCPAngleY Changed Val do
		cCPY.Value = Val
	on cCPAngleZ Changed Val do
		cCPZ.Value = Val
		
	on cTngAngleX Changed Val do
		cTngX.Value = Val
	on cTngAngleY Changed Val do
		cTngY.Value = Val
	on cTngAngleZ Changed Val do
		cTngZ.Value = Val
		
	on cCPX Changed Val do
		cCPAngleX.Degrees = Val
	on cCPY Changed Val do
		cCPAngleY.Degrees = Val
	on cCPZ Changed Val do
		cCPAngleZ.Degrees = Val
		
	on cTngX Changed Val do
		cTngAngleX.Degrees = Val
	on cTngY Changed Val do
		cTngAngleY.Degrees = Val
	on cTngZ Changed Val do
		cTngAngleZ.Degrees = Val
		
	on cType Changed State do
		UpdateContainer()
	on cCustomCullingPlane Changed State do
		UpdateUI()
	on cCustomTng Changed State do
		UpdateUI()	
	on LightsRol open do (
		LightsRol.cCPAngleX.Degrees = LightsRol.cCPX.Value
		LightsRol.cCPAngleY.Degrees = LightsRol.cCPY.Value
		LightsRol.cCPAngleZ.Degrees = LightsRol.cCPZ.Value
		
		LightsRol.cTngAngleX.Degrees = LightsRol.cTngX.Value
		LightsRol.cTngAngleY.Degrees = LightsRol.cTngY.Value
		LightsRol.cTngAngleZ.Degrees = LightsRol.cTngZ.Value
		UpdateUI()
	)
)

fn Init Obj = (
	local	ParentObj = this.ParentObj = Obj
	ParentObj.UseFarAtten = true
	ParentObj.ShowFarAtten = false
	ParentObj.UseNearAtten = false
	ParentObj.ShowNearAtten = false
	ParentObj.CastShadows = true
	ParentObj.RaytracedShadows = true
	ParentObj.FarAttenStart = 0
	ParentObj.AttenDecay  = 2
	
	local	ObjClass = (ClassOf ParentObj)
	this.Type = (
		case ObjClass of (
			TargetDirectionalLight:
				3
			DirectionalLight:
				3
			TargetSpot:
				2
			FreeSpot:
				2
			OmniLight:
				1
			Default:
				throw "Unknown light container: " ObjClass
		)
	)
	
	this.TheColor = ParentObj.Color
	/**this.TheDistance = ParentObj.FarAttenEnd
	this.Intensity = ParentObj.Multiplier**/
	if this.Type == 1 then
		this.Falloff = ParentObj.FarAttenEnd
	else (
		/**ParentObj.DecayRadius = 0**/
		this.ConeInnerAngle = ParentObj.HotSpot
		this.ConeOuterAngle = ParentObj.Falloff
	)
	
	IsCreating = false
	UpdateContainer()
	UpdateUI()
)
/**
on GetDisplayMesh do (
	if No VPMesh then (
		local	baseMesh = (
					case this.Type of (
						1:	--point
							(CreateInstance GeoSphere Radius:0.5 Segs:1 BaseType:1).Mesh
						2: (	--spot
							local	h = 2,
									res = (CreateInstance Cone Radius1:0.5 Radius2:0 Height:h Sides:8 HeightSegs:0 Capsegs:0).Mesh
							for i = 1 to res.NumVerts do
								SetVert res i ((GetVert res i) - [0, 0, h])
							res
						)
						3: (	--capsule
							local	h = 1,
									res = (CreateInstance Capsule Radius:0.5 Height:h Sides:8 HeightSegs:1).Mesh
							for i = 1 to res.NumVerts do
								SetVert res i ((GetVert res i) - [0, 0, h])
							res
						)
						Default:
							throw "Unknown light type: " this.Type
					)
				)
		if this.CustomCullingPlane then (
			local	CPObj = (CreateInstance Plane Length:1 Width:1 LengthSegs:1 WidthSegs:1),
					CPMesh = CPObj.Mesh,
					CPAngles = this.CPAngles,
					CPDistance = this.CPDistance,
					CPRot = ((EulerAngles CPAngles[1] CPAngles[2] CPAngles[3]) as Quat),
					CPVec = ([0, 0, -1] * CPRot)
			for i = 1 to CPMesh.NumVerts do
				SetVert CPMesh i (((GetVert CPMesh i) * CPRot) + (CPVec * CPDistance))
			--TODO add tangent mesh
			VPMesh = (baseMesh + CPMesh.Mesh)
		) else
			VPMesh = baseMesh
	)
	VPMesh
)
/**/