// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/Uber/3D Lit URP Uber"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin]_MainTex("MainTex", 2D) = "white" {}
		_Metallic("Metallic", Range( 0 , 1)) = 0
		_Smoothness("Smoothness", Range( 0 , 1)) = 0.5
		_SmoothnessMap("Smoothness Map", 2D) = "white" {}
		_NormalMap("Normal Map", 2D) = "bump" {}
		_NormalIntensity("Normal Intensity", Range( 0 , 3)) = 1
		_FullFade("Full Fade", Range( 0 , 1)) = 1
		_UberNoiseTexture("Uber Noise Texture", 2D) = "white" {}
		[Toggle(_ENABLESTRONGTINT_ON)] _EnableStrongTint("Enable Strong Tint", Float) = 0
		_StrongTintFade("Strong Tint: Fade", Range( 0 , 1)) = 1
		[HDR]_StrongTintTint("Strong Tint: Tint", Color) = (1,1,1,1)
		_StrongTintContrast("Strong Tint: Contrast", Float) = 0
		[Toggle(_ENABLEADDCOLOR_ON)] _EnableAddColor("Enable Add Color", Float) = 0
		_AddColorFade("Add Color: Fade", Range( 0 , 1)) = 1
		[HDR]_AddColorColor("Add Color: Color", Color) = (4,0,0,0)
		_AddColorContrast("Add Color: Contrast", Float) = 0.5
		[Toggle(_ENABLEALPHATINT_ON)] _EnableAlphaTint("Enable Alpha Tint", Float) = 0
		_AlphaTintFade("Alpha Tint: Fade", Range( 0 , 1)) = 1
		[HDR]_AlphaTintColor("Alpha Tint: Color", Color) = (23.96863,1.254902,23.96863,0)
		_AlphaTintPower("Alpha Tint: Power", Float) = 1
		_AlphaTintMinAlpha("Alpha Tint: Min Alpha", Range( 0 , 1)) = 0.05
		[Toggle(_ENABLERECOLOR_ON)] _EnableRecolor("Enable Recolor", Float) = 0
		_RecolorFade("Recolor: Fade", Range( 0 , 1)) = 1
		_RecolorTintAreas("Recolor: Tint Areas", 2D) = "white" {}
		[HDR]_RecolorRedTint("Recolor: Red Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorYellowTint("Recolor: Yellow Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorGreenTint("Recolor: Green Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorCyanTint("Recolor: Cyan Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorBlueTint("Recolor: Blue Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorPurpleTint("Recolor: Purple Tint", Color) = (1,1,1,0.5019608)
		[Toggle(_ENABLEADJUSTCOLOR_ON)] _EnableAdjustColor("Enable Adjust Color", Float) = 0
		_AdjustColorFade("Adjust Color: Fade", Range( 0 , 1)) = 1
		_AdjustColorBrightness("Adjust Color: Brightness", Float) = 1
		_AdjustColorContrast("Adjust Color: Contrast", Float) = 1
		_AdjustColorSaturation("Adjust Color: Saturation", Float) = 1
		_AdjustColorHueShift("Adjust Color: Hue Shift", Range( 0 , 1)) = 0
		[Toggle(_ENABLEINNEROUTLINE_ON)] _EnableInnerOutline("Enable Inner Outline", Float) = 0
		_InnerOutlineFade("Inner Outline: Fade", Range( 0 , 1)) = 1
		[HDR]_InnerOutlineColor("Inner Outline: Color", Color) = (11.98431,1.254902,1.254902,1)
		_InnerOutlineWidth("Inner Outline: Width", Float) = 0.02
		[Toggle(_INNEROUTLINEDISTORTIONTOGGLE_ON)] _InnerOutlineDistortionToggle("Inner Outline: Distortion Toggle", Float) = 0
		_InnerOutlineDistortionIntensity("Inner Outline: Distortion Intensity", Vector) = (0.01,0.01,0,0)
		_InnerOutlineNoiseScale("Inner Outline: Noise Scale", Vector) = (4,4,0,0)
		_InnerOutlineNoiseSpeed("Inner Outline: Noise Speed", Vector) = (0,0.1,0,0)
		[Toggle(_ENABLEOUTEROUTLINE_ON)] _EnableOuterOutline("Enable Outer Outline", Float) = 0
		_OuterOutlineFade("Outer Outline: Fade", Range( 0 , 1)) = 1
		[HDR]_OuterOutlineColor("Outer Outline: Color", Color) = (0,0,0,1)
		_OuterOutlineWidth("Outer Outline: Width", Float) = 0.04
		[Toggle(_OUTEROUTLINEDISTORTIONTOGGLE_ON)] _OuterOutlineDistortionToggle("Outer Outline: Distortion Toggle", Float) = 0
		_OuterOutlineDistortionIntensity("Outer Outline: Distortion Intensity", Vector) = (0.01,0.01,0,0)
		_OuterOutlineNoiseScale("Outer Outline: Noise Scale", Vector) = (4,4,0,0)
		_OuterOutlineNoiseSpeed("Outer Outline: Noise Speed", Vector) = (0,0.1,0,0)
		[Toggle(_ENABLEADDHUE_ON)] _EnableAddHue("Enable Add Hue", Float) = 0
		_AddHueFade("Add Hue: Fade", Range( 0 , 1)) = 1
		_AddHueShaderMask("Add Hue: Shader Mask", 2D) = "white" {}
		_AddHueBrightness("Add Hue: Brightness", Float) = 2
		_AddHueContrast("Add Hue: Contrast", Float) = 1
		_AddHueSaturation("Add Hue: Saturation", Range( 0 , 1)) = 1
		_AddHueSpeed("Add Hue: Speed", Float) = 1
		[Toggle(_ENABLESHIFTHUE_ON)] _EnableShiftHue("Enable Shift Hue", Float) = 0
		_ShiftHueFade("Shift Hue: Fade", Range( 0 , 1)) = 1
		_ShiftHueShaderMask("Shift Hue: Shader Mask", 2D) = "white" {}
		_ShiftHueSpeed("Shift Hue: Speed", Float) = 0.5
		[Toggle(_ENABLEINKSPREAD_ON)] _EnableInkSpread("Enable Ink Spread", Float) = 0
		_InkSpreadFade("Ink Spread: Fade", Range( 0 , 1)) = 1
		_InkSpreadSpace("Ink Spread: Space", Int) = 0
		[HDR]_InkSpreadColor("Ink Spread: Color", Color) = (8.47419,5.013525,0.08873497,0)
		_InkSpreadContrast("Ink Spread: Contrast", Float) = 2
		_InkSpreadPosition("Ink Spread: Position", Vector) = (0.5,-1,0,0)
		_InkSpreadDistance("Ink Spread: Distance", Float) = 3
		_InkSpreadWidth("Ink Spread: Width", Float) = 0.2
		_InkSpreadNoiseScale("Ink Spread: Noise Scale", Vector) = (0.4,0.4,0,0)
		_InkSpreadNoiseFactor("Ink Spread: Noise Factor", Float) = 0.5
		[Toggle(_ENABLEBLACKTINT_ON)] _EnableBlackTint("Enable Black Tint", Float) = 0
		_BlackTintFade("Black Tint: Fade", Range( 0 , 1)) = 1
		[HDR]_BlackTintColor("Black Tint: Color", Color) = (1,0,0,0)
		_BlackTintPower("Black Tint: Power", Float) = 2
		[Toggle(_ENABLESINEGLOW_ON)] _EnableSineGlow("Enable Sine Glow", Float) = 0
		_SineGlowFade("Sine Glow: Fade", Range( 0 , 1)) = 1
		_SineGlowShaderMask("Sine Glow: Shader Mask", 2D) = "white" {}
		[HDR]_SineGlowColor("Sine Glow: Color", Color) = (0,2.007843,2.996078,0)
		_SineGlowContrast("Sine Glow: Contrast", Float) = 1
		_SineGlowFrequency("Sine Glow: Frequency", Float) = 4
		_SineGlowMin("Sine Glow: Min", Float) = 0
		_SineGlowMax("Sine Glow: Max", Float) = 1
		[Toggle(_ENABLESPLITTONING_ON)] _EnableSplitToning("Enable Split Toning", Float) = 0
		_SplitToningFade("Split Toning: Fade", Range( 0 , 1)) = 1
		[HDR]_SplitToningHighlightsColor("Split Toning: Highlights Color", Color) = (1,0.1,0.1,0)
		[HDR]_SplitToningShadowsColor("Split Toning: Shadows Color", Color) = (0.1,0.4000002,1,0)
		_SplitToningContrast("Split Toning: Contrast", Float) = 1
		_SplitToningBalance("Split Toning: Balance", Float) = 1
		_SplitToningShift("Split Toning: Shift", Range( -1 , 1)) = 0
		[Toggle(_ENABLECOLORREPLACE_ON)] _EnableColorReplace("Enable Color Replace", Float) = 0
		_ColorReplaceFade("Color Replace: Fade", Range( 0 , 1)) = 1
		_ColorReplaceTargetColor("Color Replace: Target Color", Color) = (0,0,0,0)
		_ColorReplaceBias("Color Replace: Bias", Float) = 1
		[HDR]_ColorReplaceColor("Color Replace: Color", Color) = (1,0,0,0)
		_ColorReplaceContrast("Color Replace: Contrast", Float) = 1
		_ColorReplaceHueTolerance("Color Replace: Hue Tolerance", Float) = 1
		_ColorReplaceSaturationTolerance("Color Replace: Saturation Tolerance", Float) = 1
		_ColorReplaceBrightnessTolerance("Color Replace: Brightness Tolerance", Float) = 1
		[Toggle(_ENABLEHOLOGRAM_ON)] _EnableHologram("Enable Hologram", Float) = 0
		_HologramFade("Hologram: Fade", Range( 0 , 1)) = 1
		[HDR]_HologramTint("Hologram: Tint", Color) = (0.3137255,1.662745,2.996078,1)
		_HologramContrast("Hologram: Contrast", Float) = 1
		_HologramLineFrequency("Hologram: Line Frequency", Float) = 500
		_HologramLineGap("Hologram: Line Gap", Range( 0 , 5)) = 3
		_HologramLineSpeed("Hologram: Line Speed", Float) = 0.01
		_HologramMinAlpha("Hologram: Min Alpha", Range( 0 , 1)) = 0.2
		_HologramDistortionOffset("Hologram: Distortion Offset", Float) = 0.5
		_HologramDistortionSpeed("Hologram: Distortion Speed", Float) = 2
		_HologramDistortionDensity("Hologram: Distortion Density", Float) = 0.5
		_HologramDistortionScale("Hologram: Distortion Scale", Float) = 10
		[Toggle(_ENABLEGLITCH_ON)] _EnableGlitch("Enable Glitch", Float) = 0
		_GlitchFade("Glitch: Fade", Range( 0 , 1)) = 1
		_GlitchSpace("Glitch: Space", Int) = 0
		_GlitchMaskMin("Glitch: Mask Min", Range( 0 , 1)) = 0.4
		_GlitchMaskScale("Glitch: Mask Scale", Vector) = (0,0.2,0,0)
		_GlitchMaskSpeed("Glitch: Mask Speed", Vector) = (0,4,0,0)
		_GlitchHueSpeed("Glitch: Hue Speed", Float) = 1
		_GlitchBrightness("Glitch: Brightness", Float) = 4
		_GlitchNoiseScale("Glitch: Noise Scale", Vector) = (0,3,0,0)
		_GlitchNoiseSpeed("Glitch: Noise Speed", Vector) = (0,1,0,0)
		_GlitchDistortion("Glitch: Distortion", Vector) = (0.1,0,0,0)
		_GlitchDistortionScale("Glitch: Distortion Scale", Vector) = (0,3,0,0)
		_GlitchDistortionSpeed("Glitch: Distortion Speed", Vector) = (0,1,0,0)
		[Toggle(_ENABLEFROZEN_ON)] _EnableFrozen("Enable Frozen", Float) = 0
		_FrozenFade("Frozen: Fade", Range( 0 , 1)) = 1
		_FrozenSpace("Frozen: Space", Int) = 0
		[HDR]_FrozenTint("Frozen: Tint", Color) = (1.819608,4.611765,5.992157,0)
		_FrozenContrast("Frozen: Contrast", Float) = 2
		[HDR]_FrozenSnowColor("Frozen: Snow Color", Color) = (1.123529,1.373203,1.498039,0)
		_FrozenSnowContrast("Frozen: Snow Contrast", Float) = 1
		_FrozenSnowDensity("Frozen: Snow Density", Range( 0 , 1)) = 0.25
		_FrozenSnowScale("Frozen: Snow Scale", Vector) = (0.1,0.1,0,0)
		[HDR]_FrozenHighlightColor("Frozen: Highlight Color", Color) = (1.797647,4.604501,5.992157,1)
		_FrozenHighlightContrast("Frozen: Highlight Contrast", Float) = 2
		_FrozenHighlightDensity("Frozen: Highlight Density", Range( 0 , 1)) = 1
		_FrozenHighlightSpeed("Frozen: Highlight Speed", Vector) = (0.1,0.1,0,0)
		_FrozenHighlightScale("Frozen: Highlight Scale", Vector) = (0.2,0.2,0,0)
		_FrozenHighlightDistortion("Frozen: Highlight Distortion", Vector) = (0.5,0.5,0,0)
		_FrozenHighlightDistortionSpeed("Frozen: Highlight Distortion Speed", Vector) = (-0.05,-0.05,0,0)
		_FrozenHighlightDistortionScale("Frozen: Highlight Distortion Scale", Vector) = (0.2,0.2,0,0)
		[Toggle(_ENABLERAINBOW_ON)] _EnableRainbow("Enable Rainbow", Float) = 0
		_RainbowFade("Rainbow: Fade", Range( 0 , 1)) = 1
		_RainbowMask("Rainbow: Shader Mask", 2D) = "white" {}
		_RainbowSpace("Rainbow: Space", Float) = 0
		_RainbowBrightness("Rainbow: Brightness", Float) = 2
		_RainbowSaturation("Rainbow: Saturation", Range( 0 , 1)) = 1
		_RainbowContrast("Rainbow: Contrast", Float) = 1
		_RainbowSpeed("Rainbow: Speed", Float) = 1
		_RainbowDensity("Rainbow: Density", Float) = 0.5
		_RainbowCenter("Rainbow: Center", Vector) = (0,0,0,0)
		_RainbowNoiseScale("Rainbow: Noise Scale", Vector) = (0.2,0.2,0,0)
		_RainbowNoiseFactor("Rainbow: Noise Factor", Float) = 0.2
		[Toggle(_ENABLECAMOUFLAGE_ON)] _EnableCamouflage("Enable Camouflage", Float) = 0
		_CamouflageFade("Camouflage: Fade", Range( 0 , 1)) = 1
		[NoScaleOffset]_CamouflageShaderMask("Camouflage: Shader Mask", 2D) = "white" {}
		_CamouflageSpace("Camouflage: Space", Int) = 0
		_CamouflageBaseColor("Camouflage: Base Color", Color) = (0.7450981,0.7254902,0.5686275,0)
		_CamouflageContrast("Camouflage: Contrast", Float) = 1
		_CamouflageColorA("Camouflage: Color A", Color) = (0.627451,0.5882353,0.4313726,0)
		_CamouflageDensityA("Camouflage: Density A", Range( 0 , 1)) = 0.4
		_CamouflageSmoothnessA("Camouflage: Smoothness A", Range( 0 , 1)) = 0.2
		_CamouflageNoiseScaleA("Camouflage: Noise Scale A", Vector) = (0.25,0.25,0,0)
		_CamouflageColorB("Camouflage: Color B", Color) = (0.4705882,0.4313726,0.3137255,0)
		_CamouflageDensityB("Camouflage: Density B", Range( 0 , 1)) = 0.4
		_CamouflageSmoothnessB("Camouflage: Smoothness B", Range( 0 , 1)) = 0.2
		_CamouflageNoiseScaleB("Camouflage: Noise Scale B", Vector) = (0.25,0.25,0,0)
		[Toggle]_CamouflageAnimated("Camouflage: Animated", Float) = 0
		_CamouflageAnimationSpeed("Camouflage: Animation Speed", Vector) = (0.1,0.1,0,0)
		_CamouflageDistortionIntensity("Camouflage: Distortion Intensity", Vector) = (0.1,0.1,0,0)
		_CamouflageDistortionScale("Camouflage: Distortion Scale", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEMETAL_ON)] _EnableMetal("Enable Metal", Float) = 0
		_MetalFade("Metal: Fade", Range( 0 , 1)) = 1
		[NoScaleOffset]_MetalShaderMask("Metal: Shader Mask", 2D) = "white" {}
		_MetalSpace("Metal: Space", Int) = 0
		[HDR]_MetalColor("Metal: Color", Color) = (5.992157,3.639216,0.3137255,1)
		_MetalContrast("Metal: Contrast", Float) = 2
		[HDR]_MetalHighlightColor("Metal: Highlight Color", Color) = (5.992157,3.796078,0.6588235,1)
		_MetalHighlightDensity("Metal: Highlight Density", Range( 0 , 1)) = 1
		_MetalHighlightContrast("Metal: Highlight Contrast", Float) = 2
		_MetalNoiseScale("Metal: Noise Scale", Vector) = (0.25,0.25,0,0)
		_MetalNoiseSpeed("Metal: Noise Speed", Vector) = (0.05,0.05,0,0)
		_MetalNoiseDistortionScale("Metal: Noise Distortion Scale", Vector) = (0.2,0.2,0,0)
		_MetalNoiseDistortionSpeed("Metal: Noise Distortion Speed", Vector) = (-0.05,-0.05,0,0)
		_MetalNoiseDistortion("Metal: Noise Distortion", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLESHINE_ON)] _EnableShine("Enable Shine", Float) = 0
		_ShineFade("Shine: Fade", Range( 0 , 1)) = 1
		[NoScaleOffset]_ShineShaderMask("Shine: Shader Mask", 2D) = "white" {}
		_ShineSpace("Shine: Space", Int) = 0
		[HDR]_ShineColor("Shine: Color", Color) = (11.98431,11.98431,11.98431,0)
		_ShineContrast("Shine: Contrast", Float) = 2
		_ShineSmoothness("Shine: Smoothness", Float) = 1
		_ShineSpeed("Shine: Speed", Float) = 0.1
		_ShineScale("Shine: Scale", Float) = 0.05
		_ShineDensity("Shine: Density", Range( -1 , 1)) = -0.95
		_ShineRotation("Shine: Rotation", Range( 0 , 360)) = 0
		[Toggle(_ENABLEBURN_ON)] _EnableBurn("Enable Burn", Float) = 0
		_BurnFade("Burn: Fade", Range( 0 , 1)) = 1
		_BurnSpace("Burn: Space", Float) = 1
		_BurnPosition("Burn: Position", Vector) = (0,5,0,0)
		_BurnRadius("Burn: Radius", Float) = 5
		[HDR]_BurnEdgeColor("Burn: Edge Color", Color) = (11.98431,1.129412,0.1254902,0)
		_BurnWidth("Burn: Width", Float) = 0.1
		_BurnEdgeNoiseScale("Burn: Edge Noise Scale", Vector) = (0.3,0.3,0,0)
		_BurnEdgeNoiseFactor("Burn: Edge Noise Factor", Float) = 0.5
		[HDR]_BurnInsideColor("Burn: Inside Color", Color) = (0.75,0.5625,0.525,0)
		_BurnInsideContrast("Burn: Inside Contrast", Float) = 2
		[HDR]_BurnInsideNoiseColor("Burn: Inside Noise Color", Color) = (3084.047,257.0039,0,0)
		_BurnInsideNoiseFactor("Burn: Inside Noise Factor", Float) = 0.05
		_BurnInsideNoiseScale("Burn: Inside Noise Scale", Vector) = (0.5,0.5,0,0)
		_BurnSwirlFactor("Burn: Swirl Factor", Float) = 1
		_BurnSwirlNoiseScale("Burn: Swirl Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLEPOISON_ON)] _EnablePoison("Enable Poison", Float) = 0
		_PoisonFade("Poison: Fade", Range( 0 , 1)) = 1
		_PoisonSpace("Poison: Space", Float) = 0
		[HDR]_PoisonColor("Poison: Color", Color) = (0.3137255,2.996078,0.3137255,0)
		_PoisonDensity("Poison: Density", Float) = 3
		_PoisonRecolorFactor("Poison: Recolor Factor", Range( 0 , 1)) = 0.5
		_PoisonShiftSpeed("Poison: Shift Speed", Float) = 0.2
		_PoisonNoiseBrightness("Poison: Noise Brightness", Float) = 1
		_PoisonNoiseScale("Poison: Noise Scale", Vector) = (0.2,0.2,0,0)
		_PoisonNoiseSpeed("Poison: Noise Speed", Vector) = (0,-0.2,0,0)
		[Toggle(_ENABLEFULLALPHADISSOLVE_ON)] _EnableFullAlphaDissolve("Enable Full Alpha Dissolve", Float) = 0
		_FullAlphaDissolveFade("Full Alpha Dissolve: Fade", Range( 0 , 1)) = 0.5
		_FullAlphaDissolveSpace("Full Alpha Dissolve: Space", Int) = 0
		_FullAlphaDissolveWidth("Full Alpha Dissolve: Width", Float) = 0.5
		_FullAlphaDissolveNoiseScale("Full Alpha Dissolve: Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLEFULLGLOWDISSOLVE_ON)] _EnableFullGlowDissolve("Enable Full Glow Dissolve", Float) = 0
		_FullGlowDissolveFade("Full Glow Dissolve: Fade", Range( 0 , 1)) = 0.5
		_FullGlowDissolveSpace("Full Glow Dissolve: Space", Int) = 0
		_FullGlowDissolveWidth("Full Glow Dissolve: Width", Float) = 0.5
		[HDR]_FullGlowDissolveEdgeColor("Full Glow Dissolve: Edge Color", Color) = (11.98431,0.627451,0.627451,0)
		_FullGlowDissolveNoiseScale("Full Glow Dissolve: Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLESOURCEALPHADISSOLVE_ON)] _EnableSourceAlphaDissolve("Enable Source Alpha Dissolve", Float) = 0
		_SourceAlphaDissolveFade("Source Alpha Dissolve: Fade", Float) = 1
		_SourceAlphaDissolveSpace("Source Alpha Dissolve: Space", Int) = 1
		_SourceAlphaDissolvePosition("Source Alpha Dissolve: Position", Vector) = (0,0,0,0)
		_SourceAlphaDissolveWidth("Source Alpha Dissolve: Width", Float) = 0.2
		_SourceAlphaDissolveNoiseScale("Source Alpha Dissolve: Noise Scale", Vector) = (0.3,0.3,0,0)
		_SourceAlphaDissolveNoiseFactor("Source Alpha Dissolve: Noise Factor", Float) = 0.2
		[Toggle]_SourceAlphaDissolveInvert("Source Alpha Dissolve: Invert", Float) = 0
		[Toggle(_ENABLESOURCEGLOWDISSOLVE_ON)] _EnableSourceGlowDissolve("Enable Source Glow Dissolve", Float) = 0
		_SourceGlowDissolveFade("Source Glow Dissolve: Fade", Float) = 1
		_SourceGlowDissolveSpace("Source Glow Dissolve: Space", Int) = 1
		_SourceGlowDissolvePosition("Source Glow Dissolve: Position", Vector) = (0,0,0,0)
		_SourceGlowDissolveWidth("Source Glow Dissolve: Width", Float) = 0.1
		[HDR]_SourceGlowDissolveEdgeColor("Source Glow Dissolve: Edge Color", Color) = (11.98431,0.627451,0.627451,0)
		_SourceGlowDissolveNoiseScale("Source Glow Dissolve: Noise Scale", Vector) = (0.3,0.3,0,0)
		_SourceGlowDissolveNoiseFactor("Source Glow Dissolve: Noise Factor", Float) = 0.2
		[Toggle]_SourceGlowDissolveInvert("Source Glow Dissolve: Invert", Float) = 0
		[Toggle(_ENABLEHALFTONE_ON)] _EnableHalftone("Enable Halftone", Float) = 0
		_HalftoneFade("Halftone: Fade", Float) = 1
		_HalftoneSpace("Halftone: Space", Int) = 1
		_HalftonePosition("Halftone: Position", Vector) = (0,0,0,0)
		_HalftoneTiling("Halftone: Tiling", Float) = 4
		_HalftoneFadeWidth("Halftone: Width", Float) = 1.5
		[Toggle]_HalftoneInvert("Halftone: Invert", Float) = 0
		[Toggle(_ENABLEDIRECTIONALALPHAFADE_ON)] _EnableDirectionalAlphaFade("Enable Directional Alpha Fade", Float) = 0
		_DirectionalAlphaFadeFade("Directional Alpha Fade: Fade", Float) = 0
		_DirectionalAlphaFadeSpace("Directional Alpha Fade: Space", Int) = 1
		_DirectionalAlphaFadeRotation("Directional Alpha Fade: Rotation", Range( 0 , 360)) = 0
		_DirectionalAlphaFadeWidth("Directional Alpha Fade: Width", Float) = 0.2
		_DirectionalAlphaFadeNoiseScale("Directional Alpha Fade: Noise Scale", Vector) = (0.3,0.3,0,0)
		_DirectionalAlphaFadeNoiseFactor("Directional Alpha Fade: Noise Factor", Float) = 0.2
		[Toggle]_DirectionalAlphaFadeInvert("Directional Alpha Fade: Invert", Float) = 0
		[Toggle(_ENABLEDIRECTIONALGLOWFADE_ON)] _EnableDirectionalGlowFade("Enable Directional Glow Fade", Float) = 0
		_DirectionalGlowFadeFade("Directional Glow Fade: Fade", Float) = 0
		_DirectionalGlowFadeSpace("Directional Glow Fade: Space", Int) = 1
		_DirectionalGlowFadeRotation("Directional Glow Fade: Rotation", Range( 0 , 360)) = 0
		[HDR]_DirectionalGlowFadeEdgeColor("Directional Glow Fade: Edge Color", Color) = (11.98431,0.6901961,0.6901961,0)
		_DirectionalGlowFadeWidth("Directional Glow Fade: Width", Float) = 0.1
		_DirectionalGlowFadeNoiseScale("Directional Glow Fade: Noise Scale", Vector) = (0.4,0.4,0,0)
		_DirectionalGlowFadeNoiseFactor("Directional Glow Fade: Noise Factor", Float) = 0.2
		[Toggle]_DirectionalGlowFadeInvert("Directional Glow Fade: Invert", Float) = 0
		[Toggle(_ENABLEDIRECTIONALDISTORTION_ON)] _EnableDirectionalDistortion("Enable Directional Distortion", Float) = 0
		_DirectionalDistortionFade("Directional Distortion: Fade", Float) = 0
		_DirectionalDistortionSpace("Directional Distortion: Space", Int) = 1
		_DirectionalDistortionRotation("Directional Distortion: Rotation", Range( 0 , 360)) = 0
		_DirectionalDistortionWidth("Directional Distortion: Width", Float) = 0.5
		_DirectionalDistortionNoiseScale("Directional Distortion: Noise Scale", Vector) = (0.4,0.4,0,0)
		_DirectionalDistortionNoiseFactor("Directional Distortion: Noise Factor", Float) = 0.2
		_DirectionalDistortionDistortion("Directional Distortion: Distortion", Vector) = (0,0.1,0,0)
		_DirectionalDistortionRandomDirection("Directional Distortion: Random Direction", Range( 0 , 1)) = 0.1
		_DirectionalDistortionDistortionScale("Directional Distortion: Distortion Scale", Vector) = (1,1,0,0)
		[Toggle]_DirectionalDistortionInvert("Directional Distortion: Invert", Float) = 0
		[Toggle(_ENABLEFULLDISTORTION_ON)] _EnableFullDistortion("Enable Full Distortion", Float) = 0
		_FullDistortionFade("Full Distortion: Fade", Range( 0 , 1)) = 1
		_FullDistortionSpace("Full Distortion: Space", Int) = 0
		_FullDistortionDistortion("Full Distortion: Distortion", Vector) = (0.2,0.2,0,0)
		_FullDistortionNoiseScale("Full Distortion: Noise Scale", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEPIXELATE_ON)] _EnablePixelate("Enable Pixelate", Float) = 0
		_PixelateFade("Pixelate: Fade", Range( 0 , 1)) = 1
		_PixelatePixelDensity("Pixelate: Pixel Density", Float) = 16
		[Toggle(_ENABLESQUEEZE_ON)] _EnableSqueeze("Enable Squeeze", Float) = 0
		_SqueezeFade("Squeeze: Fade", Range( 0 , 1)) = 1
		_SqueezeScale("Squeeze: Scale", Vector) = (2,0,0,0)
		_SqueezePower("Squeeze: Power", Float) = 1
		_SqueezeCenter("Squeeze: Center", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEUVDISTORT_ON)] _EnableUVDistort("Enable UV Distort", Float) = 0
		_UVDistortFade("UV Distort: Fade", Range( 0 , 1)) = 1
		[NoScaleOffset]_UVDistortShaderMask("UV Distort: Shader Mask", 2D) = "white" {}
		_UVDistortSpace("UV Distort: Space", Int) = 0
		_UVDistortFrom("UV Distort: From", Vector) = (-0.02,-0.02,0,0)
		_UVDistortTo("UV Distort: To", Vector) = (0.02,0.02,0,0)
		_UVDistortSpeed("UV Distort: Speed", Vector) = (2,2,0,0)
		_UVDistortNoiseScale("UV Distort: Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLEUVSCROLL_ON)] _EnableUVScroll("Enable UV Scroll", Float) = 0
		_UVScrollSpeed("UV Scroll: Speed", Vector) = (0.2,0,0,0)
		[Toggle(_ENABLEUVROTATE_ON)] _EnableUVRotate("Enable UV Rotate", Float) = 0
		_UVRotateSpeed("UV Rotate: Speed", Float) = 1
		_UVRotatePivot("UV Rotate: Pivot", Vector) = (0.5,0.5,0,0)
		_UVRotateScale("UV Rotate: Scale", Float) = 1
		[Toggle(_ENABLESINEROTATE_ON)] _EnableSineRotate("Enable Sine Rotate", Float) = 0
		_SineRotateFade("Sine Rotate: Fade", Range( 0 , 1)) = 1
		_SineRotateAngle("Sine Rotate: Angle", Float) = 15
		_SineRotateFrequency("Sine Rotate: Frequency", Float) = 1
		_SineRotatePivot("Sine Rotate: Pivot", Vector) = (0.5,0.5,0,0)
		_SineRotateScale("Sine Rotate: Scale", Float) = 1
		[Toggle(_ENABLESINEMOVE_ON)] _EnableSineMove("Enable Sine Move", Float) = 0
		_SineMoveFade("Sine Move: Fade", Range( 0 , 1)) = 1
		_SineMoveOffset("Sine Move: Offset", Vector) = (0,0.5,0,0)
		_SineMoveFrequency("Sine Move: Frequency", Vector) = (1,1,0,0)
		[Toggle(_ENABLEVIBRATE_ON)] _EnableVibrate("Enable Vibrate", Float) = 0
		_VibrateFade("Vibrate: Fade", Range( 0 , 1)) = 1
		_VibrateOffset("Vibrate: Offset", Float) = 0.04
		_VibrateFrequency("Vibrate: Frequency", Float) = 100
		_VibrateRotation("Vibrate: Rotation", Float) = 4
		[Toggle(_ENABLEWIND_ON)] _EnableWind("Enable Wind", Float) = 0
		_WindRotation("Wind: Rotation", Float) = 0
		_WindMaxRotation("Wind: Max Rotation", Float) = 2
		_WindRotationWindFactor("Wind: Rotation Wind Factor", Float) = 1
		_WindSquishFactor("Wind: Squish Factor", Float) = 0.3
		_WindSquishWindFactor("Wind: Squish Wind Factor", Range( 0 , 1)) = 0
		_WindDistortionSpeed("Wind: Distortion Speed", Vector) = (0,0.3,0,0)
		_WindFromDistortion("Wind: From Distortion", Vector) = (0,0,0,0)
		_WindToDistortion("Wind: To Distortion", Vector) = (0.1,0,0,0)
		_WindDistortionScale("Wind: Distortion Scale", Vector) = (0.25,0.25,0,0)
		_WindDistortionMask("Wind: Distortion Mask", 2D) = "white" {}
		_WindDistortionWindFactor("Wind: Distortion Wind Factor", Range( 0 , 1)) = 0.5
		_WindFlip("Wind: Flip", Float) = 0
		[Toggle(_ENABLESQUISH_ON)] _EnableSquish("Enable Squish", Float) = 0
		_SquishFade("Squish: Fade", Range( 0 , 1)) = 1
		_SquishStretch("Squish: Stretch", Float) = 0.1
		_SquishSquish("Squish: Squish", Float) = 0.1
		_SquishFlip("Squish: Flip", Float) = 0
		[Toggle(_ENABLECHECKERBOARD_ON)] _EnableCheckerboard("Enable Checkerboard", Float) = 0
		_CheckerboardDarken("Checkerboard: Darken", Range( 0 , 1)) = 0.5
		_CheckerboardTiling("Checkerboard: Tiling", Float) = 1
		[Toggle(_ENABLEFLAME_ON)] _EnableFlame("Enable Flame", Float) = 0
		_FlameBrightness("Flame: Brightness", Float) = 10
		_FlameSmooth("Flame: Smooth", Float) = 2
		_FlameRadius("Flame: Radius", Float) = 0.2
		_FlameSpeed("Flame: Speed", Vector) = (0,-0.5,0,0)
		_FlameNoiseFactor("Flame: Noise Factor", Float) = 2.5
		_FlameNoiseHeightFactor("Flame: Noise Height Factor", Float) = 1.5
		_FlameNoiseScale("Flame: Noise Scale", Vector) = (1.2,0.8,0,0)
		[Toggle(_ENABLESMOKE_ON)] _EnableSmoke("Enable Smoke", Float) = 0
		_SmokeAlpha("Smoke: Alpha", Range( 0 , 1)) = 1
		_SmokeSmoothness("Smoke: Smoothness", Float) = 1
		_SmokeNoiseScale("Smoke: Noise Scale", Float) = 0.5
		_SmokeNoiseFactor("Smoke: Noise Factor", Range( 0 , 1)) = 0.4
		_SmokeDarkEdge("Smoke: Dark Edge", Range( 0 , 1.5)) = 1
		[Toggle]_SmokeVertexSeed("Smoke: Vertex Seed", Float) = 0
		[Toggle(_ENABLECUSTOMFADE_ON)] _EnableCustomFade("Enable Custom Fade", Float) = 0
		_CustomFadeFadeMask("Custom Fade: Fade Mask", 2D) = "white" {}
		_CustomFadeSmoothness("Custom Fade: Smoothness", Float) = 2
		_CustomFadeNoiseScale("Custom Fade: Noise Scale", Vector) = (1,1,0,0)
		_CustomFadeNoiseFactor("Custom Fade: Noise Factor", Range( 0 , 0.5)) = 0
		[ASEEnd]_CustomFadeAlpha("Custom Fade: Alpha", Range( 0 , 1)) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Transparent" "Queue"="Transparent" }
		Cull Off
		AlphaToMask Off
		HLSLINCLUDE
		#pragma target 2.0

		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }
			
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70403

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
			#pragma multi_compile _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile _ _SHADOWS_SOFT
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_FORWARD

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			
			#if ASE_SRP_VERSION <= 70108
			#define REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR
			#endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
			    #define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _ENABLEVIBRATE_ON
			#pragma shader_feature_local _ENABLESINEMOVE_ON
			#pragma shader_feature_local _ENABLESQUISH_ON
			#pragma shader_feature_local _ENABLEGLITCH_ON
			#pragma shader_feature_local _ENABLEHOLOGRAM_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALDISTORTION_ON
			#pragma shader_feature_local _ENABLEFULLDISTORTION_ON
			#pragma shader_feature_local _ENABLEUVSCROLL_ON
			#pragma shader_feature_local _ENABLEUVROTATE_ON
			#pragma shader_feature_local _ENABLESINEROTATE_ON
			#pragma shader_feature_local _ENABLESQUEEZE_ON
			#pragma shader_feature_local _ENABLEUVDISTORT_ON
			#pragma shader_feature_local _ENABLEPIXELATE_ON
			#pragma shader_feature_local _ENABLEWIND_ON
			#pragma shader_feature_local _ENABLESTRONGTINT_ON
			#pragma shader_feature_local _ENABLEALPHATINT_ON
			#pragma shader_feature_local _ENABLEADDCOLOR_ON
			#pragma shader_feature_local _ENABLEHALFTONE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALGLOWFADE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALALPHAFADE_ON
			#pragma shader_feature_local _ENABLESOURCEGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLESOURCEALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEPOISON_ON
			#pragma shader_feature_local _ENABLESHINE_ON
			#pragma shader_feature_local _ENABLERAINBOW_ON
			#pragma shader_feature_local _ENABLEBURN_ON
			#pragma shader_feature_local _ENABLEFROZEN_ON
			#pragma shader_feature_local _ENABLEMETAL_ON
			#pragma shader_feature_local _ENABLECAMOUFLAGE_ON
			#pragma shader_feature_local _ENABLEOUTEROUTLINE_ON
			#pragma shader_feature_local _ENABLEINNEROUTLINE_ON
			#pragma shader_feature_local _ENABLESINEGLOW_ON
			#pragma shader_feature_local _ENABLEADDHUE_ON
			#pragma shader_feature_local _ENABLESHIFTHUE_ON
			#pragma shader_feature_local _ENABLEINKSPREAD_ON
			#pragma shader_feature_local _ENABLEADJUSTCOLOR_ON
			#pragma shader_feature_local _ENABLERECOLOR_ON
			#pragma shader_feature_local _ENABLEBLACKTINT_ON
			#pragma shader_feature_local _ENABLESPLITTONING_ON
			#pragma shader_feature_local _ENABLECOLORREPLACE_ON
			#pragma shader_feature_local _ENABLEFLAME_ON
			#pragma shader_feature_local _ENABLECHECKERBOARD_ON
			#pragma shader_feature_local _ENABLECUSTOMFADE_ON
			#pragma shader_feature_local _ENABLESMOKE_ON
			#pragma shader_feature_local _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma shader_feature_local _OUTEROUTLINEDISTORTIONTOGGLE_ON


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 lightmapUVOrVertexSH : TEXCOORD0;
				half4 fogFactorAndVertexLight : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _HologramTint;
			float4 _ShineColor;
			float4 _RecolorRedTint;
			float4 _RecolorYellowTint;
			float4 _RecolorGreenTint;
			float4 _RecolorCyanTint;
			float4 _RecolorBlueTint;
			float4 _RecolorPurpleTint;
			float4 _RainbowMask_ST;
			float4 _RecolorTintAreas_ST;
			float4 _ShineShaderMask_ST;
			float4 _SplitToningHighlightsColor;
			float4 _SplitToningShadowsColor;
			float4 _ColorReplaceTargetColor;
			float4 _ColorReplaceColor;
			float4 _PoisonColor;
			float4 _FullGlowDissolveEdgeColor;
			float4 _BlackTintColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _InkSpreadColor;
			float4 _BurnEdgeColor;
			float4 _MetalShaderMask_ST;
			float4 _MetalHighlightColor;
			float4 _FrozenTint;
			float4 _CamouflageShaderMask_ST;
			float4 _FrozenSnowColor;
			float4 _CamouflageColorB;
			float4 _CamouflageColorA;
			float4 _ShiftHueShaderMask_ST;
			float4 _CamouflageBaseColor;
			float4 _BurnInsideNoiseColor;
			float4 _OuterOutlineColor;
			float4 _InnerOutlineColor;
			float4 _BurnInsideColor;
			float4 _SineGlowColor;
			float4 _SineGlowShaderMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _FrozenHighlightColor;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _MetalColor;
			float4 _WindDistortionMask_ST;
			float4 _NormalMap_ST;
			float4 _MainTex_TexelSize;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _AlphaTintColor;
			float4 _AddColorColor;
			float4 _SmoothnessMap_ST;
			float2 _OuterOutlineDistortionIntensity;
			float2 _UVDistortSpeed;
			float2 _UVDistortNoiseScale;
			float2 _FlameNoiseScale;
			float2 _PoisonNoiseSpeed;
			float2 _BurnEdgeNoiseScale;
			float2 _FrozenHighlightScale;
			float2 _GlitchNoiseSpeed;
			float2 _UVDistortTo;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _SqueezeCenter;
			float2 _GlitchNoiseScale;
			float2 _FrozenHighlightDistortion;
			float2 _FrozenHighlightSpeed;
			float2 _UVDistortFrom;
			float2 _PoisonNoiseScale;
			float2 _OuterOutlineNoiseSpeed;
			float2 _HalftonePosition;
			float2 _BurnPosition;
			float2 _WindFromDistortion;
			float2 _RainbowCenter;
			float2 _RainbowNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _InkSpreadPosition;
			float2 _OuterOutlineNoiseScale;
			float2 _BurnInsideNoiseScale;
			float2 _WindToDistortion;
			float2 _InnerOutlineNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _WindDistortionSpeed;
			float2 _BurnSwirlNoiseScale;
			float2 _WindDistortionScale;
			float2 _FlameSpeed;
			float2 _InnerOutlineNoiseSpeed;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _FrozenHighlightDistortionScale;
			float2 _CamouflageAnimationSpeed;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _FullDistortionNoiseScale;
			float2 _CamouflageNoiseScaleB;
			float2 _SourceGlowDissolvePosition;
			float2 _SqueezeScale;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _MetalNoiseDistortionScale;
			float2 _SineMoveOffset;
			float2 _MetalNoiseDistortion;
			float2 _SineMoveFrequency;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _DirectionalDistortionDistortionScale;
			float2 _DirectionalDistortionNoiseScale;
			float2 _MetalNoiseDistortionSpeed;
			float2 _FullDistortionDistortion;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortion;
			float2 _SineRotatePivot;
			float2 _FullGlowDissolveNoiseScale;
			float2 _CustomFadeNoiseScale;
			float2 _CamouflageDistortionScale;
			float2 _CamouflageDistortionIntensity;
			float2 _CamouflageNoiseScaleA;
			float2 _FrozenSnowScale;
			float2 _MetalNoiseSpeed;
			float2 _SourceAlphaDissolvePosition;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _MetalNoiseScale;
			float2 _GlitchMaskScale;
			float2 _GlitchMaskSpeed;
			float2 _UVScrollSpeed;
			float2 _UVRotatePivot;
			float2 _DirectionalDistortionDistortion;
			float _NormalIntensity;
			float _AddColorFade;
			float _BurnRadius;
			float _AddColorContrast;
			float _FrozenSnowDensity;
			float _BurnSwirlFactor;
			float _AlphaTintPower;
			float _FrozenSnowContrast;
			float _BurnSpace;
			float _BurnInsideNoiseFactor;
			float _AlphaTintFade;
			float _BurnInsideContrast;
			float _FrozenFade;
			float _FrozenHighlightContrast;
			float _AlphaTintMinAlpha;
			int _FrozenSpace;
			float _StrongTintFade;
			float _StrongTintContrast;
			float _FrozenHighlightDensity;
			float _FrozenContrast;
			float _HalftoneFadeWidth;
			float _ShineRotation;
			float _BurnWidth;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			int _FullAlphaDissolveSpace;
			int _FullGlowDissolveSpace;
			float _FullGlowDissolveFade;
			float _FullGlowDissolveWidth;
			float _SourceAlphaDissolveInvert;
			float _SourceAlphaDissolveFade;
			int _SourceAlphaDissolveSpace;
			float _SourceAlphaDissolveNoiseFactor;
			float _SourceAlphaDissolveWidth;
			int _SourceGlowDissolveSpace;
			float _SourceGlowDissolveNoiseFactor;
			float _SourceGlowDissolveFade;
			float _SourceGlowDissolveWidth;
			float _SourceGlowDissolveInvert;
			float _DirectionalAlphaFadeInvert;
			float _DirectionalAlphaFadeRotation;
			int _DirectionalAlphaFadeSpace;
			float _DirectionalAlphaFadeFade;
			float _DirectionalAlphaFadeNoiseFactor;
			float _DirectionalAlphaFadeWidth;
			float _DirectionalGlowFadeFade;
			float _DirectionalGlowFadeInvert;
			float _PoisonNoiseBrightness;
			float _BurnEdgeNoiseFactor;
			float _PoisonFade;
			float _PoisonDensity;
			float _BurnFade;
			float _RainbowSpace;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineContrast;
			int _DirectionalGlowFadeSpace;
			float _ShineSpeed;
			float _HalftoneFade;
			float _HalftoneTiling;
			int _HalftoneSpace;
			float _ShineScale;
			int _ShineSpace;
			float _HalftoneInvert;
			float _ShineDensity;
			float _ShineSmoothness;
			float _ShineFade;
			float _DirectionalGlowFadeWidth;
			float _PoisonSpace;
			float _MetalFade;
			float _PoisonShiftSpeed;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeRotation;
			float _SquishStretch;
			float _MetalHighlightContrast;
			float _DirectionalDistortionRandomDirection;
			float _DirectionalDistortionInvert;
			float _DirectionalDistortionRotation;
			float _DirectionalDistortionFade;
			float _DirectionalDistortionNoiseFactor;
			float _DirectionalDistortionWidth;
			float _HologramDistortionSpeed;
			float _HologramDistortionDensity;
			float _HologramDistortionScale;
			float _HologramDistortionOffset;
			float _HologramFade;
			int _GlitchSpace;
			int _DirectionalDistortionSpace;
			float _GlitchMaskMin;
			float _SmokeVertexSeed;
			float _SmokeNoiseScale;
			float _SmokeNoiseFactor;
			float _SmokeSmoothness;
			float _SmokeDarkEdge;
			float _SmokeAlpha;
			float _CustomFadeNoiseFactor;
			float _CustomFadeSmoothness;
			float _CustomFadeAlpha;
			float _CheckerboardDarken;
			float _CheckerboardTiling;
			float _FlameNoiseHeightFactor;
			float _GlitchFade;
			int _FullDistortionSpace;
			float _FullDistortionFade;
			float _UVRotateScale;
			float _SquishFade;
			float _SquishFlip;
			float _SquishSquish;
			float _SineMoveFade;
			float _VibrateFrequency;
			float _VibrateOffset;
			float _VibrateFade;
			float _VibrateRotation;
			float _FullFade;
			float _WindRotationWindFactor;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _WindSquishWindFactor;
			float _WindDistortionWindFactor;
			float _PixelatePixelDensity;
			float _PixelateFade;
			int _UVDistortSpace;
			float _UVDistortFade;
			float _SqueezePower;
			float _SqueezeFade;
			float _SineRotateFrequency;
			float _SineRotateAngle;
			float _SineRotateFade;
			float _SineRotateScale;
			float _UVRotateSpeed;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _FlameBrightness;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _InnerOutlineWidth;
			float _InnerOutlineFade;
			float _OuterOutlineWidth;
			float _OuterOutlineFade;
			float _Metallic;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _HologramLineFrequency;
			float _HologramLineGap;
			float _HologramMinAlpha;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
			float _CamouflageDensityA;
			float _CamouflageAnimated;
			int _CamouflageSpace;
			float _CamouflageSmoothnessA;
			float _CamouflageDensityB;
			float _CamouflageSmoothnessB;
			float _CamouflageContrast;
			float _CamouflageFade;
			float _MetalHighlightDensity;
			int _MetalSpace;
			float _AddHueFade;
			float _MetalContrast;
			float _AddHueContrast;
			float _AddHueSaturation;
			float _ColorReplaceContrast;
			float _ColorReplaceHueTolerance;
			float _ColorReplaceSaturationTolerance;
			float _ColorReplaceBrightnessTolerance;
			float _ColorReplaceBias;
			float _ColorReplaceFade;
			float _SplitToningShift;
			float _SplitToningBalance;
			float _SplitToningContrast;
			float _SplitToningFade;
			float _BlackTintPower;
			float _BlackTintFade;
			float _RecolorFade;
			float _AdjustColorHueShift;
			float _AdjustColorSaturation;
			float _AdjustColorContrast;
			float _AdjustColorBrightness;
			float _AdjustColorFade;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			int _InkSpreadSpace;
			float _InkSpreadNoiseFactor;
			float _InkSpreadWidth;
			float _ShiftHueSpeed;
			float _ShiftHueFade;
			float _AddHueSpeed;
			float _AddHueBrightness;
			float _Smoothness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			float WindMinIntensity;
			float WindMaxIntensity;
			float2 WindNoiseSpeed;
			float2 WindNoiseScale;
			sampler2D _UberNoiseTexture;
			sampler2D _WindDistortionMask;
			sampler2D _UVDistortShaderMask;
			sampler2D _CustomFadeFadeMask;
			sampler2D _RecolorTintAreas;
			sampler2D _ShiftHueShaderMask;
			sampler2D _AddHueShaderMask;
			sampler2D _SineGlowShaderMask;
			sampler2D _CamouflageShaderMask;
			sampler2D _MetalShaderMask;
			sampler2D _RainbowMask;
			sampler2D _ShineShaderMask;
			sampler2D _NormalMap;
			sampler2D _SmoothnessMap;


			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			//https://www.shadertoy.com/view/XdXGW8
			float2 GradientNoiseDir( float2 x )
			{
				const float2 k = float2( 0.3183099, 0.3678794 );
				x = x * k + k.yx;
				return -1.0 + 2.0 * frac( 16.0 * k * frac( x.x * x.y * ( x.x + x.y ) ) );
			}
			
			float GradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 i = floor( p );
				float2 f = frac( p );
				float2 u = f * f * ( 3.0 - 2.0 * f );
				return lerp( lerp( dot( GradientNoiseDir( i + float2( 0.0, 0.0 ) ), f - float2( 0.0, 0.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 0.0 ) ), f - float2( 1.0, 0.0 ) ), u.x ),
						lerp( dot( GradientNoiseDir( i + float2( 0.0, 1.0 ) ), f - float2( 0.0, 1.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 1.0 ) ), f - float2( 1.0, 1.0 ) ), u.x ), u.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord39 = v.texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g2705 = texCoord39;
				float2 appendResult72_g2705 = (float2(( _SquishStretch * ( break77_g2705.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g2705.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH_ON
				float2 staticSwitch96 = ( appendResult72_g2705 + float2( 0,0 ) );
				#else
				float2 staticSwitch96 = float2( 0,0 );
				#endif
				float2 temp_output_2_0_g2706 = staticSwitch96;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g2706 = ( ( sin( ( _TimeParameters.x * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g2706 );
				#else
				float2 staticSwitch4_g2706 = temp_output_2_0_g2706;
				#endif
				float mulTime27_g2708 = _TimeParameters.x * _VibrateFrequency;
				float3 rotatedValue21_g2708 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( _VibrateRotation * _TimeParameters.x ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g2706 = ( ( sin( mulTime27_g2708 ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g2708).xy ) + staticSwitch4_g2706 );
				#else
				float2 staticSwitch6_g2706 = staticSwitch4_g2706;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult121 = lerp( float2( 0,0 ) , staticSwitch6_g2706 , fullFade123);
				
				o.ase_texcoord7.xy = v.texcoord.xy;
				o.ase_texcoord8 = v.vertex;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord7.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = float3( lerpResult121 ,  0.0 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord;
					o.lightmapUVOrVertexSH.xy = v.texcoord * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );
				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( positionCS.z );
				#else
					half fogFactor = 0;
				#endif
				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
				
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				
				o.clipPos = positionCS;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				o.screenPos = ComputeScreenPos(positionCS);
				#endif
				return o;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag ( VertexOutput IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif
				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif
	
				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 texCoord131 = IN.ase_texcoord7.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord39 = IN.ase_texcoord7.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g2502 = texCoord39;
				float4 transform62_g2503 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g2503 = GradientNoise(( ( (transform62_g2503).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g2503 = gradientNoise95_g2503*0.5 + 0.5;
				float lerpResult86_g2503 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g2503);
				float clampResult29_g2503 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g2503 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g2503 = temp_output_3_0_g2502;
				float temp_output_39_0_g2503 = ( temp_output_1_0_g2503.y + _WindFlip );
				float3 appendResult43_g2503 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g2503 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g2503 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g2503 )));
				float2 appendResult2_g2505 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2504 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g2504 = (WorldPosition).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g2504 = (IN.ase_texcoord8.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g2504 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2505 ) );
				float lerpResult78_g2503 = lerp( 1.0 , lerpResult86_g2503 , _WindDistortionWindFactor);
				float2 lerpResult75_g2503 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2504 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g2503 ));
				float2 uv_WindDistortionMask = IN.ase_texcoord7.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g2507 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g2503 = RotateAroundAxis( appendResult43_g2503, float3( ( appendResult27_g2503 + ( ( lerpResult75_g2503 * ( 1.0 * ( tex2DNode3_g2507.r * tex2DNode3_g2507.a ) ) ) + temp_output_1_0_g2503 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g2503 * temp_output_39_0_g2503 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g2502 = (rotatedValue19_g2503).xy;
				#else
				float2 staticSwitch4_g2502 = temp_output_3_0_g2502;
				#endif
				float2 temp_output_1_0_g2508 = staticSwitch4_g2502;
				float2 appendResult2_g2520 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_22_0_g2519 = ( float2( 1,1 ) / ( 100.0 / appendResult2_g2520 ) );
				float temp_output_25_0_g2519 = ( 1.0 / max( _PixelateFade , 0.0001 ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g2508 = ( ( ( round( ( temp_output_1_0_g2508 * _PixelatePixelDensity * temp_output_22_0_g2519 * temp_output_25_0_g2519 ) ) / _PixelatePixelDensity ) / temp_output_22_0_g2519 ) / temp_output_25_0_g2519 );
				#else
				float2 staticSwitch4_g2508 = temp_output_1_0_g2508;
				#endif
				float2 appendResult2_g2511 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2510 = 0;
				if( _UVDistortSpace > 1.0 )
				ifLocalVar2_g2510 = (WorldPosition).xy;
				else if( _UVDistortSpace == 1.0 )
				ifLocalVar2_g2510 = (IN.ase_texcoord8.xyz).xy;
				else if( _UVDistortSpace < 1.0 )
				ifLocalVar2_g2510 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2511 ) );
				float2 lerpResult21_g2509 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2510 + ( _UVDistortSpeed * _TimeParameters.x ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g2513 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.ase_texcoord7.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g2512 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g2508 = ( staticSwitch4_g2508 + ( lerpResult21_g2509 * ( 100.0 / appendResult2_g2513 ) * ( _UVDistortFade * ( tex2DNode3_g2512.r * tex2DNode3_g2512.a ) ) ) );
				#else
				float2 staticSwitch5_g2508 = staticSwitch4_g2508;
				#endif
				float2 temp_output_1_0_g2515 = staticSwitch5_g2508;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g2508 = ( temp_output_1_0_g2515 + ( ( temp_output_1_0_g2515 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g2515 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g2508 = staticSwitch5_g2508;
				#endif
				float mulTime43_g2516 = _TimeParameters.x * _SineRotateFrequency;
				float3 rotatedValue36_g2516 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g2508 ,  0.0 ), float3( 0,0,1 ), ( sin( mulTime43_g2516 ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g2508 = ( ( ( (rotatedValue36_g2516).xy - float2( 0.5,0.5 ) ) / max( _SineRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch9_g2508 = staticSwitch7_g2508;
				#endif
				float mulTime6_g2517 = _TimeParameters.x * _UVRotateSpeed;
				float3 rotatedValue8_g2517 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g2508 ,  0.0 ), float3( 0,0,1 ), ( mulTime6_g2517 * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g2508 = ( ( ( (rotatedValue8_g2517).xy - float2( 0.5,0.5 ) ) / max( _UVRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch16_g2508 = staticSwitch9_g2508;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g2508 = ( ( ( _UVScrollSpeed * _TimeParameters.x ) + staticSwitch16_g2508 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g2508 = staticSwitch16_g2508;
				#endif
				float2 appendResult2_g2525 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2524 = 0;
				if( _FullDistortionSpace > 1.0 )
				ifLocalVar2_g2524 = (WorldPosition).xy;
				else if( _FullDistortionSpace == 1.0 )
				ifLocalVar2_g2524 = (IN.ase_texcoord8.xyz).xy;
				else if( _FullDistortionSpace < 1.0 )
				ifLocalVar2_g2524 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2525 ) );
				float2 temp_output_7_0_g2521 = ifLocalVar2_g2524;
				float2 appendResult189_g2521 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2521 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_7_0_g2521 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch14_g2508 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g2521 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch14_g2508;
				#endif
				float2 appendResult2_g2533 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2532 = 0;
				if( _DirectionalDistortionSpace > 1.0 )
				ifLocalVar2_g2532 = (WorldPosition).xy;
				else if( _DirectionalDistortionSpace == 1.0 )
				ifLocalVar2_g2532 = (IN.ase_texcoord8.xyz).xy;
				else if( _DirectionalDistortionSpace < 1.0 )
				ifLocalVar2_g2532 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2533 ) );
				float2 temp_output_7_0_g2530 = ifLocalVar2_g2532;
				float3 rotatedValue168_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2530 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2530 = rotatedValue136_g2530;
				float clampResult154_g2530 = clamp( ( ( break130_g2530.x + break130_g2530.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g2530).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float temp_output_8_0_g2536 = ( ( ( _TimeParameters.x * _HologramDistortionSpeed ) + WorldPosition.y ) / unity_OrthoParams.y );
				float2 temp_cast_7 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_8 = (_HologramDistortionDensity).xx;
				float clampResult75_g2536 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_7 * temp_cast_8 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_9 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_10 = (_HologramDistortionScale).xx;
				float2 appendResult2_g2537 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 appendResult44_g2536 = (float2(( ( ( clampResult75_g2536 * ( tex2D( _UberNoiseTexture, ( temp_cast_9 * temp_cast_10 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g2537 ).x ) * _HologramFade ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g2536 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 appendResult2_g2544 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2543 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g2543 = (WorldPosition).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g2543 = (IN.ase_texcoord8.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g2543 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2544 ) );
				float2 temp_output_3_0_g2542 = ifLocalVar2_g2543;
				float2 temp_output_102_0 = temp_output_3_0_g2542;
				float temp_output_102_15 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_3_0_g2542 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_102_15 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult130 = lerp( texCoord131 , staticSwitch62 , fullFade123);
				float4 tex2DNode31 = tex2D( _MainTex, lerpResult130 );
				float4 temp_output_1_0_g2548 = tex2DNode31;
				float4 temp_output_1_0_g2551 = temp_output_1_0_g2548;
				float2 temp_output_7_0_g2548 = lerpResult130;
				float2 temp_output_43_0_g2551 = temp_output_7_0_g2548;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g2551 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.ase_color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g2551 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.ase_color.a / 2.5 ) - distance( temp_output_43_0_g2551 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g2551 = lerp( ( (temp_output_1_0_g2551).rgb * (IN.ase_color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g2551 ) * _SmokeDarkEdge ));
				float4 appendResult31_g2551 = (float4(lerpResult34_g2551 , ( clampResult28_g2551 * _SmokeAlpha * temp_output_1_0_g2551.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g2548 = appendResult31_g2551;
				#else
				float4 staticSwitch2_g2548 = temp_output_1_0_g2548;
				#endif
				float4 temp_output_1_0_g2549 = staticSwitch2_g2548;
				float2 temp_output_57_0_g2549 = temp_output_7_0_g2548;
				float4 tex2DNode3_g2549 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g2549 );
				float clampResult37_g2549 = clamp( ( ( ( IN.ase_color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g2549.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g2549 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g2549 = (float4(( float4( (IN.ase_color).rgb , 0.0 ) * temp_output_1_0_g2549 ).rgb , ( temp_output_1_0_g2549.a * pow( clampResult37_g2549 , ( _CustomFadeSmoothness / max( tex2DNode3_g2549.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g2548 = appendResult13_g2549;
				#else
				float4 staticSwitch3_g2548 = staticSwitch2_g2548;
				#endif
				float4 temp_output_1_0_g2553 = staticSwitch3_g2548;
				float4 temp_output_1_0_g2554 = temp_output_1_0_g2553;
				float2 appendResult4_g2554 = (float2(WorldPosition.x , WorldPosition.y));
				float2 temp_output_44_0_g2554 = ( appendResult4_g2554 * _CheckerboardTiling * 0.5 );
				float2 break12_g2554 = step( ( ceil( temp_output_44_0_g2554 ) - temp_output_44_0_g2554 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g2554.x + break12_g2554.y ) ) )).xxx;
				float4 appendResult42_g2554 = (float4(( (temp_output_1_0_g2554).rgb - temp_cast_16 ) , temp_output_1_0_g2554.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g2553 = appendResult42_g2554;
				#else
				float4 staticSwitch2_g2553 = temp_output_1_0_g2553;
				#endif
				float2 temp_output_75_0_g2555 = lerpResult130;
				float saferPower57_g2555 = max( max( ( temp_output_75_0_g2555.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g2555 = max( _FlameRadius , 0.01 );
				float clampResult70_g2555 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FlameSpeed ) + temp_output_75_0_g2555 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g2555 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g2555 - distance( temp_output_75_0_g2555 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g2555 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g2555 = ( clampResult70_g2555 * _FlameBrightness );
				float4 appendResult31_g2555 = (float4(temp_output_63_0_g2555 , temp_output_63_0_g2555 , temp_output_63_0_g2555 , clampResult70_g2555));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g2553 = ( appendResult31_g2555 * staticSwitch2_g2553 );
				#else
				float4 staticSwitch6_g2553 = staticSwitch2_g2553;
				#endif
				float4 temp_output_3_0_g2557 = staticSwitch6_g2553;
				float4 temp_output_1_0_g2558 = temp_output_3_0_g2557;
				float3 temp_output_2_0_g2558 = (temp_output_1_0_g2558).rgb;
				float4 break2_g2559 = float4( temp_output_2_0_g2558 , 0.0 );
				float temp_output_9_0_g2560 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g2560 = max( ( ( ( break2_g2559.x + break2_g2559.y + break2_g2559.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2560 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g2558 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g2558 = RGBToHSV( temp_output_2_0_g2558 );
				float clampResult35_g2558 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g2558.x , hsvTorgb5_g2558.x ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + 1.0 ) ) ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.y , hsvTorgb5_g2558.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.z , hsvTorgb5_g2558.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g2558 = max( ( clampResult35_g2558 * clampResult30_g2558 * clampResult40_g2558 ) , 0.0001 );
				float3 lerpResult23_g2558 = lerp( temp_output_2_0_g2558 , ( pow( saferPower7_g2560 , temp_output_9_0_g2560 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g2558 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g2558 = (float4(lerpResult23_g2558 , temp_output_1_0_g2558.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g2557 = appendResult4_g2558;
				#else
				float4 staticSwitch29_g2557 = temp_output_3_0_g2557;
				#endif
				float4 temp_output_1_0_g2588 = staticSwitch29_g2557;
				float4 break2_g2589 = temp_output_1_0_g2588;
				float temp_output_3_0_g2588 = ( ( break2_g2589.x + break2_g2589.y + break2_g2589.z ) / 3.0 );
				float clampResult25_g2588 = clamp( ( ( ( ( temp_output_3_0_g2588 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g2588 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g2588);
				float temp_output_9_0_g2590 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g2590 = max( ( temp_output_3_0_g2588 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2590 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g2588 = lerp( (temp_output_1_0_g2588).rgb , ( lerpResult6_g2588 * pow( saferPower7_g2590 , temp_output_9_0_g2590 ) ) , _SplitToningFade);
				float4 appendResult18_g2588 = (float4(lerpResult11_g2588 , temp_output_1_0_g2588.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g2557 = appendResult18_g2588;
				#else
				float4 staticSwitch30_g2557 = staticSwitch29_g2557;
				#endif
				float4 temp_output_1_0_g2561 = staticSwitch30_g2557;
				float3 temp_output_4_0_g2561 = (temp_output_1_0_g2561).rgb;
				float4 break12_g2561 = temp_output_1_0_g2561;
				float3 lerpResult7_g2561 = lerp( temp_output_4_0_g2561 , ( temp_output_4_0_g2561 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g2561.r , break12_g2561.g ) , break12_g2561.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g2561 = lerp( temp_output_4_0_g2561 , lerpResult7_g2561 , _BlackTintFade);
				float4 appendResult11_g2561 = (float4(lerpResult13_g2561 , break12_g2561.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g2557 = appendResult11_g2561;
				#else
				float4 staticSwitch20_g2557 = staticSwitch30_g2557;
				#endif
				float4 temp_output_1_0_g2583 = staticSwitch20_g2557;
				float2 uv_RecolorTintAreas = IN.ase_texcoord7.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g2583 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g2583 = ( ( hsvTorgb33_g2583.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.8333333 )
				ifLocalVar46_g2583 = _RecolorPurpleTint;
				else
				ifLocalVar46_g2583 = _RecolorBlueTint;
				float4 ifLocalVar44_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.6666667 )
				ifLocalVar44_g2583 = _RecolorCyanTint;
				else
				ifLocalVar44_g2583 = ifLocalVar46_g2583;
				float4 ifLocalVar47_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.3333333 )
				ifLocalVar47_g2583 = _RecolorYellowTint;
				else
				ifLocalVar47_g2583 = _RecolorGreenTint;
				float4 ifLocalVar45_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.1666667 )
				ifLocalVar45_g2583 = _RecolorRedTint;
				else
				ifLocalVar45_g2583 = ifLocalVar47_g2583;
				float4 ifLocalVar35_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.5 )
				ifLocalVar35_g2583 = ifLocalVar44_g2583;
				else
				ifLocalVar35_g2583 = ifLocalVar45_g2583;
				float4 break55_g2583 = ifLocalVar35_g2583;
				float3 appendResult56_g2583 = (float3(break55_g2583.r , break55_g2583.g , break55_g2583.b));
				float4 break2_g2584 = temp_output_1_0_g2583;
				float saferPower57_g2583 = max( ( ( break2_g2584.x + break2_g2584.y + break2_g2584.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g2583 = lerp( (temp_output_1_0_g2583).rgb , ( appendResult56_g2583 * pow( saferPower57_g2583 , max( ( break55_g2583.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g2583.z * _RecolorFade ));
				float4 appendResult30_g2583 = (float4(lerpResult26_g2583 , temp_output_1_0_g2583.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g2557 = appendResult30_g2583;
				#else
				float4 staticSwitch9_g2557 = staticSwitch20_g2557;
				#endif
				float4 break2_g2569 = staticSwitch9_g2557;
				float3 appendResult4_g2569 = (float3(break2_g2569.r , break2_g2569.g , break2_g2569.b));
				float3 hsvTorgb16_g2569 = RGBToHSV( appendResult4_g2569 );
				float clampResult18_g2569 = clamp( ( hsvTorgb16_g2569.y * _AdjustColorSaturation ) , 0.0 , 1.0 );
				float temp_output_9_0_g2570 = max( _AdjustColorContrast , 0.0 );
				float saferPower7_g2570 = max( ( hsvTorgb16_g2569.z + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2570 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb24_g2569 = HSVToRGB( float3(( hsvTorgb16_g2569.x + _AdjustColorHueShift ),clampResult18_g2569,( pow( saferPower7_g2570 , temp_output_9_0_g2570 ) * _AdjustColorBrightness )) );
				float3 lerpResult9_g2569 = lerp( appendResult4_g2569 , hsvTorgb24_g2569 , _AdjustColorFade);
				float4 appendResult3_g2569 = (float4(lerpResult9_g2569 , break2_g2569.a));
				#ifdef _ENABLEADJUSTCOLOR_ON
				float4 staticSwitch10_g2557 = appendResult3_g2569;
				#else
				float4 staticSwitch10_g2557 = staticSwitch9_g2557;
				#endif
				float4 temp_output_1_0_g2577 = staticSwitch10_g2557;
				float4 break2_g2579 = temp_output_1_0_g2577;
				float temp_output_9_0_g2580 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g2580 = max( ( ( ( break2_g2579.x + break2_g2579.y + break2_g2579.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2580 ) , 0.0 ) ) ) , 0.0001 );
				float2 appendResult2_g2582 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2581 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g2581 = (WorldPosition).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g2581 = (IN.ase_texcoord8.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g2581 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2582 ) );
				float2 temp_output_19_0_g2577 = ifLocalVar2_g2581;
				float clampResult53_g2577 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g2577 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_19_0_g2577 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g2577 = lerp( (temp_output_1_0_g2577).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g2580 , temp_output_9_0_g2580 ) ) , ( _InkSpreadFade * clampResult53_g2577 ));
				float4 appendResult9_g2577 = (float4(lerpResult7_g2577 , (temp_output_1_0_g2577).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g2557 = appendResult9_g2577;
				#else
				float4 staticSwitch17_g2557 = staticSwitch10_g2557;
				#endif
				float4 temp_output_1_0_g2575 = staticSwitch17_g2557;
				float3 temp_output_34_0_g2575 = (temp_output_1_0_g2575).rgb;
				float mulTime31_g2575 = _TimeParameters.x * _ShiftHueSpeed;
				float3 hsvTorgb15_g2575 = RGBToHSV( temp_output_34_0_g2575 );
				float3 hsvTorgb19_g2575 = HSVToRGB( float3(( mulTime31_g2575 + hsvTorgb15_g2575.x ),hsvTorgb15_g2575.y,hsvTorgb15_g2575.z) );
				float2 uv_ShiftHueShaderMask = IN.ase_texcoord7.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g2576 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g2575 = lerp( temp_output_34_0_g2575 , hsvTorgb19_g2575 , ( _ShiftHueFade * ( tex2DNode3_g2576.r * tex2DNode3_g2576.a ) ));
				float4 appendResult6_g2575 = (float4(lerpResult33_g2575 , temp_output_1_0_g2575.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g2557 = appendResult6_g2575;
				#else
				float4 staticSwitch19_g2557 = staticSwitch17_g2557;
				#endif
				float mulTime28_g2571 = _TimeParameters.x * _AddHueSpeed;
				float3 hsvTorgb3_g2572 = HSVToRGB( float3(mulTime28_g2571,1.0,1.0) );
				float3 hsvTorgb15_g2571 = RGBToHSV( hsvTorgb3_g2572 );
				float3 hsvTorgb19_g2571 = HSVToRGB( float3(hsvTorgb15_g2571.x,_AddHueSaturation,( hsvTorgb15_g2571.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g2571 = staticSwitch19_g2557;
				float4 break2_g2573 = temp_output_1_0_g2571;
				float saferPower27_g2571 = max( ( ( break2_g2573.x + break2_g2573.y + break2_g2573.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.ase_texcoord7.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g2574 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g2571 = (float4(( ( hsvTorgb19_g2571 * pow( saferPower27_g2571 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g2574.r * tex2DNode3_g2574.a ) ) ) + (temp_output_1_0_g2571).rgb ) , temp_output_1_0_g2571.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g2557 = appendResult6_g2571;
				#else
				float4 staticSwitch23_g2557 = staticSwitch19_g2557;
				#endif
				float4 temp_output_1_0_g2562 = staticSwitch23_g2557;
				float4 break2_g2565 = temp_output_1_0_g2562;
				float temp_output_9_0_g2564 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g2564 = max( ( ( ( break2_g2565.x + break2_g2565.y + break2_g2565.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2564 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.ase_texcoord7.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g2563 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float mulTime15_g2562 = _TimeParameters.x * _SineGlowFrequency;
				float4 appendResult21_g2562 = (float4(( (temp_output_1_0_g2562).rgb + ( pow( saferPower7_g2564 , temp_output_9_0_g2564 ) * ( _SineGlowFade * ( tex2DNode3_g2563.r * tex2DNode3_g2563.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( mulTime15_g2562 ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g2562.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g2557 = appendResult21_g2562;
				#else
				float4 staticSwitch28_g2557 = staticSwitch23_g2557;
				#endif
				float4 temp_output_15_0_g2566 = staticSwitch28_g2557;
				float2 temp_output_1_0_g2557 = lerpResult130;
				float2 temp_output_7_0_g2566 = temp_output_1_0_g2557;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g2566 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g2566 ) * _InnerOutlineNoiseScale ) ).r - 0.25 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g2566 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2566 = ( staticSwitch169_g2566 + temp_output_7_0_g2566 );
				float2 appendResult2_g2568 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2566 = ( 100.0 / appendResult2_g2568 );
				float temp_output_161_0_g2566 = (temp_output_15_0_g2566).a;
				float temp_output_151_0_g2566 = ( ( _InnerOutlineColor.a * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2566 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) ) * temp_output_161_0_g2566 ) * ( _InnerOutlineFade * min( ( _InnerOutlineWidth * 100.0 ) , 1.0 ) ) );
				float4 appendResult84_g2566 = (float4((_InnerOutlineColor).rgb , temp_output_151_0_g2566));
				float4 lerpResult43_g2566 = lerp( temp_output_15_0_g2566 , appendResult84_g2566 , temp_output_151_0_g2566);
				float4 appendResult162_g2566 = (float4((lerpResult43_g2566).xyz , temp_output_161_0_g2566));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g2557 = appendResult162_g2566;
				#else
				float4 staticSwitch12_g2557 = staticSwitch28_g2557;
				#endif
				float4 temp_output_15_0_g2585 = staticSwitch12_g2557;
				float temp_output_31_0_g2585 = (temp_output_15_0_g2585).a;
				float2 temp_output_7_0_g2585 = temp_output_1_0_g2557;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g2585 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g2585 ) * _OuterOutlineNoiseScale ) ).r - 0.25 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g2585 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2585 = ( staticSwitch157_g2585 + temp_output_7_0_g2585 );
				float2 appendResult2_g2587 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2585 = ( 100.0 / appendResult2_g2587 );
				float temp_output_83_0_g2585 = ( _OuterOutlineColor.a * min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2585 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) * 3.0 ) , 1.0 ) );
				float lerpResult152_g2585 = lerp( temp_output_31_0_g2585 , temp_output_83_0_g2585 , ( temp_output_83_0_g2585 * _OuterOutlineFade ));
				float4 appendResult84_g2585 = (float4((_OuterOutlineColor).rgb , lerpResult152_g2585));
				float4 lerpResult43_g2585 = lerp( appendResult84_g2585 , temp_output_15_0_g2585 , ( 1.0 - ( min( ( _OuterOutlineFade * 10.0 ) , 1.0 ) * ( 1.0 - temp_output_31_0_g2585 ) ) ));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g2557 = lerpResult43_g2585;
				#else
				float4 staticSwitch13_g2557 = staticSwitch12_g2557;
				#endif
				float4 temp_output_108_0 = staticSwitch13_g2557;
				float4 temp_output_1_0_g2591 = temp_output_108_0;
				float4 break2_g2592 = temp_output_1_0_g2591;
				float temp_output_9_0_g2593 = max( _HologramContrast , 0.0 );
				float saferPower7_g2593 = max( ( ( ( break2_g2592.x + break2_g2592.y + break2_g2592.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2593 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g2591 = (float4(( (_HologramTint).rgb * pow( saferPower7_g2593 , temp_output_9_0_g2593 ) ) , ( max( pow( abs( sin( ( ( ( ( _TimeParameters.x * _HologramLineSpeed ) + WorldPosition.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g2591.a )));
				float4 lerpResult37_g2591 = lerp( temp_output_1_0_g2591 , appendResult22_g2591 , _HologramFade);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g2591;
				#else
				float4 staticSwitch56 = temp_output_108_0;
				#endif
				float4 temp_output_1_0_g2594 = staticSwitch56;
				float4 break2_g2596 = temp_output_1_0_g2594;
				float mulTime14_g2594 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g2597 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g2594 ),1.0,1.0) );
				float3 lerpResult23_g2594 = lerp( (temp_output_1_0_g2594).rgb , ( ( ( break2_g2596.x + break2_g2596.y + break2_g2596.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g2597 ) , temp_output_102_15);
				float4 appendResult27_g2594 = (float4(lerpResult23_g2594 , temp_output_1_0_g2594.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g2594;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g2598 = staticSwitch57;
				float4 temp_output_1_0_g2634 = temp_output_3_0_g2598;
				float2 appendResult2_g2639 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2638 = 0;
				if( _CamouflageSpace > 1.0 )
				ifLocalVar2_g2638 = (WorldPosition).xy;
				else if( _CamouflageSpace == 1.0 )
				ifLocalVar2_g2638 = (IN.ase_texcoord8.xyz).xy;
				else if( _CamouflageSpace < 1.0 )
				ifLocalVar2_g2638 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2639 ) );
				float2 temp_output_42_0_g2634 = ifLocalVar2_g2638;
				float clampResult52_g2634 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g2634 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g2634 ) , clampResult52_g2634);
				float clampResult65_g2634 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g2634 = lerp( lerpResult55_g2634 , ( _CamouflageColorB * clampResult65_g2634 ) , clampResult65_g2634);
				float4 break2_g2635 = temp_output_1_0_g2634;
				float temp_output_9_0_g2642 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g2642 = max( ( ( ( break2_g2635.x + break2_g2635.y + break2_g2635.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2642 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.ase_texcoord7.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g2637 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g2634 = lerp( (temp_output_1_0_g2634).rgb , ( (lerpResult68_g2634).rgb * pow( saferPower7_g2642 , temp_output_9_0_g2642 ) ) , ( _CamouflageFade * ( tex2DNode3_g2637.r * tex2DNode3_g2637.a ) ));
				float4 appendResult7_g2634 = (float4(lerpResult4_g2634 , temp_output_1_0_g2634.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g2598 = appendResult7_g2634;
				#else
				float4 staticSwitch26_g2598 = temp_output_3_0_g2598;
				#endif
				float4 temp_output_1_0_g2626 = staticSwitch26_g2598;
				float2 appendResult2_g2633 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2632 = 0;
				if( _MetalSpace > 1.0 )
				ifLocalVar2_g2632 = (WorldPosition).xy;
				else if( _MetalSpace == 1.0 )
				ifLocalVar2_g2632 = (IN.ase_texcoord8.xyz).xy;
				else if( _MetalSpace < 1.0 )
				ifLocalVar2_g2632 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2633 ) );
				float2 temp_output_16_0_g2626 = ifLocalVar2_g2632;
				float4 break2_g2627 = temp_output_1_0_g2626;
				float temp_output_5_0_g2626 = ( ( break2_g2627.x + break2_g2627.y + break2_g2627.z ) / 3.0 );
				float temp_output_9_0_g2630 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g2630 = max( ( temp_output_5_0_g2626 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2630 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g2626 = max( temp_output_5_0_g2626 , 0.0001 );
				float2 uv_MetalShaderMask = IN.ase_texcoord7.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g2631 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g2626 = lerp( temp_output_1_0_g2626 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _MetalNoiseDistortionSpeed ) + temp_output_16_0_g2626 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( _TimeParameters.x * _MetalNoiseSpeed ) + temp_output_16_0_g2626 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g2630 , temp_output_9_0_g2630 ) ) + ( pow( saferPower2_g2626 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g2631.r * tex2DNode3_g2631.a ) ));
				float4 appendResult8_g2626 = (float4((lerpResult45_g2626).rgb , (temp_output_1_0_g2626).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g2598 = appendResult8_g2626;
				#else
				float4 staticSwitch28_g2598 = staticSwitch26_g2598;
				#endif
				float4 temp_output_1_0_g2618 = staticSwitch28_g2598;
				float4 break2_g2621 = temp_output_1_0_g2618;
				float temp_output_7_0_g2618 = ( ( break2_g2621.x + break2_g2621.y + break2_g2621.z ) / 3.0 );
				float temp_output_9_0_g2625 = max( _FrozenContrast , 0.0 );
				float saferPower7_g2625 = max( ( temp_output_7_0_g2618 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2625 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float2 appendResult2_g2624 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2623 = 0;
				if( _FrozenSpace > 1.0 )
				ifLocalVar2_g2623 = (WorldPosition).xy;
				else if( _FrozenSpace == 1.0 )
				ifLocalVar2_g2623 = (IN.ase_texcoord8.xyz).xy;
				else if( _FrozenSpace < 1.0 )
				ifLocalVar2_g2623 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2624 ) );
				float2 temp_output_3_0_g2618 = ifLocalVar2_g2623;
				float saferPower42_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float3 lerpResult57_g2618 = lerp( (temp_output_1_0_g2618).rgb , ( ( pow( saferPower7_g2625 , temp_output_9_0_g2625 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g2618 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_3_0_g2618 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FrozenHighlightDistortionSpeed ) + temp_output_3_0_g2618 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( _TimeParameters.x * _FrozenHighlightSpeed ) + temp_output_3_0_g2618 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g2618 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g2618 = (float4(lerpResult57_g2618 , temp_output_1_0_g2618.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g2598 = appendResult26_g2618;
				#else
				float4 staticSwitch29_g2598 = staticSwitch28_g2598;
				#endif
				float4 temp_output_1_0_g2611 = staticSwitch29_g2598;
				float3 temp_output_28_0_g2611 = (temp_output_1_0_g2611).rgb;
				float4 break2_g2612 = float4( temp_output_28_0_g2611 , 0.0 );
				float saferPower21_g2611 = max( ( ( break2_g2612.x + break2_g2612.y + break2_g2612.z ) / 3.0 ) , 0.0001 );
				float2 appendResult2_g2616 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2615 = 0;
				if( (int)_BurnSpace > 1.0 )
				ifLocalVar2_g2615 = (WorldPosition).xy;
				else if( (int)_BurnSpace == 1.0 )
				ifLocalVar2_g2615 = (IN.ase_texcoord8.xyz).xy;
				else if( (int)_BurnSpace < 1.0 )
				ifLocalVar2_g2615 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2616 ) );
				float2 temp_output_3_0_g2611 = ifLocalVar2_g2615;
				float clampResult68_g2611 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_3_0_g2611 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g2611 = ( ( ( _BurnRadius - distance( temp_output_3_0_g2611 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g2611 = clamp( temp_output_15_0_g2611 , 0.0 , 1.0 );
				float3 lerpResult29_g2611 = lerp( temp_output_28_0_g2611 , ( pow( saferPower21_g2611 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g2611 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g2611);
				float3 lerpResult40_g2611 = lerp( temp_output_28_0_g2611 , ( lerpResult29_g2611 + ( ( step( temp_output_15_0_g2611 , 1.0 ) * step( 0.0 , temp_output_15_0_g2611 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g2611 = (float4(lerpResult40_g2611 , temp_output_1_0_g2611.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g2598 = appendResult43_g2611;
				#else
				float4 staticSwitch32_g2598 = staticSwitch29_g2598;
				#endif
				float2 appendResult2_g2610 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2609 = 0;
				if( (int)_RainbowSpace > 1.0 )
				ifLocalVar2_g2609 = (WorldPosition).xy;
				else if( (int)_RainbowSpace == 1.0 )
				ifLocalVar2_g2609 = (IN.ase_texcoord8.xyz).xy;
				else if( (int)_RainbowSpace < 1.0 )
				ifLocalVar2_g2609 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2610 ) );
				float2 temp_output_3_0_g2604 = ifLocalVar2_g2609;
				float mulTime14_g2604 = _TimeParameters.x * _RainbowSpeed;
				float3 hsvTorgb3_g2607 = HSVToRGB( float3(( ( ( distance( temp_output_3_0_g2604 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2604 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + mulTime14_g2604 ),1.0,1.0) );
				float3 hsvTorgb36_g2604 = RGBToHSV( hsvTorgb3_g2607 );
				float3 hsvTorgb37_g2604 = HSVToRGB( float3(hsvTorgb36_g2604.x,_RainbowSaturation,( hsvTorgb36_g2604.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g2604 = staticSwitch32_g2598;
				float4 break2_g2606 = temp_output_1_0_g2604;
				float saferPower24_g2604 = max( ( ( break2_g2606.x + break2_g2606.y + break2_g2606.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.ase_texcoord7.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g2605 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g2604 = (float4(( ( hsvTorgb37_g2604 * pow( saferPower24_g2604 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g2605.r * tex2DNode3_g2605.a ) ) ) + (temp_output_1_0_g2604).rgb ) , temp_output_1_0_g2604.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g2598 = appendResult29_g2604;
				#else
				float4 staticSwitch34_g2598 = staticSwitch32_g2598;
				#endif
				float4 temp_output_1_0_g2599 = staticSwitch34_g2598;
				float4 break2_g2600 = temp_output_1_0_g2599;
				float saferPower83_g2599 = max( ( ( break2_g2600.x + break2_g2600.y + break2_g2600.z ) / 3.0 ) , 0.0001 );
				float mulTime86_g2599 = _TimeParameters.x * _ShineSpeed;
				float2 appendResult2_g2602 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2601 = 0;
				if( _ShineSpace > 1.0 )
				ifLocalVar2_g2601 = (WorldPosition).xy;
				else if( _ShineSpace == 1.0 )
				ifLocalVar2_g2601 = (IN.ase_texcoord8.xyz).xy;
				else if( _ShineSpace < 1.0 )
				ifLocalVar2_g2601 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2602 ) );
				float3 rotatedValue69_g2599 = RotateAroundAxis( float3( 0,0,0 ), float3( ( mulTime86_g2599 + ( _ShineScale * ifLocalVar2_g2601 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g2599 = rotatedValue69_g2599;
				float clampResult80_g2599 = clamp( ( ( ( sin( ( ( break67_g2599.x + break67_g2599.y ) * 10.0 ) ) + _ShineDensity ) * ( 2.0 - _ShineDensity ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.ase_texcoord7.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g2603 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g2599 = (float4(( (temp_output_1_0_g2599).rgb + ( ( pow( saferPower83_g2599 , max( _ShineContrast , 0.001 ) ) * (_ShineColor).rgb ) * clampResult80_g2599 * ( _ShineFade * ( tex2DNode3_g2603.r * tex2DNode3_g2603.a ) ) ) ) , (temp_output_1_0_g2599).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g2598 = appendResult8_g2599;
				#else
				float4 staticSwitch36_g2598 = staticSwitch34_g2598;
				#endif
				float2 appendResult2_g2646 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2645 = 0;
				if( (int)_PoisonSpace > 1.0 )
				ifLocalVar2_g2645 = (WorldPosition).xy;
				else if( (int)_PoisonSpace == 1.0 )
				ifLocalVar2_g2645 = (IN.ase_texcoord8.xyz).xy;
				else if( (int)_PoisonSpace < 1.0 )
				ifLocalVar2_g2645 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2646 ) );
				float mulTime15_g2643 = _TimeParameters.x * _PoisonShiftSpeed;
				float saferPower19_g2643 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _PoisonNoiseSpeed ) + ifLocalVar2_g2645 ) * _PoisonNoiseScale ) ).r + mulTime15_g2643 ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g2643 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g2643 = staticSwitch36_g2598;
				float3 temp_output_28_0_g2643 = (temp_output_1_0_g2643).rgb;
				float4 break2_g2647 = float4( temp_output_28_0_g2643 , 0.0 );
				float3 lerpResult32_g2643 = lerp( temp_output_28_0_g2643 , ( temp_output_24_0_g2643 * ( ( break2_g2647.x + break2_g2647.y + break2_g2647.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g2643 = (float4(( ( max( pow( saferPower19_g2643 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g2643 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g2643 ) , temp_output_1_0_g2643.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g2598 = appendResult27_g2643;
				#else
				float4 staticSwitch39_g2598 = staticSwitch36_g2598;
				#endif
				float4 temp_output_109_0 = staticSwitch39_g2598;
				float4 break4_g2648 = temp_output_109_0;
				float4 appendResult5_g2648 = (float4(break4_g2648.r , break4_g2648.g , break4_g2648.b , ( break4_g2648.a * _FullDistortionFade )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g2648;
				#else
				float4 staticSwitch77 = temp_output_109_0;
				#endif
				float4 break4_g2649 = staticSwitch77;
				float4 appendResult5_g2649 = (float4(break4_g2649.r , break4_g2649.g , break4_g2649.b , ( break4_g2649.a * (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g2649;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g2650 = staticSwitch75;
				float4 temp_output_1_0_g2651 = temp_output_1_0_g2650;
				float temp_output_53_0_g2651 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 appendResult2_g2654 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2653 = 0;
				if( _FullAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2653 = (WorldPosition).xy;
				else if( _FullAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2653 = (IN.ase_texcoord8.xyz).xy;
				else if( _FullAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2653 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2654 ) );
				float clampResult17_g2651 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g2651 ) ) - tex2D( _UberNoiseTexture, ( ifLocalVar2_g2653 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g2651 ) , 0.0 , 1.0 );
				float4 appendResult3_g2651 = (float4((temp_output_1_0_g2651).rgb , ( temp_output_1_0_g2651.a * clampResult17_g2651 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g2650 = appendResult3_g2651;
				#else
				float4 staticSwitch3_g2650 = temp_output_1_0_g2650;
				#endif
				float2 appendResult2_g2665 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2664 = 0;
				if( _FullGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2664 = (WorldPosition).xy;
				else if( _FullGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2664 = (IN.ase_texcoord8.xyz).xy;
				else if( _FullGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2664 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2665 ) );
				float temp_output_5_0_g2663 = tex2D( _UberNoiseTexture, ( ifLocalVar2_g2664 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g2663 = step( temp_output_5_0_g2663 , _FullGlowDissolveFade );
				float temp_output_53_0_g2663 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g2663 = staticSwitch3_g2650;
				float4 appendResult3_g2663 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g2663 - step( temp_output_5_0_g2663 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g2663 ) ) - temp_output_53_0_g2663 ) ) ) ) + (temp_output_1_0_g2663).rgb ) , ( temp_output_1_0_g2663.a * temp_output_61_0_g2663 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g2650 = appendResult3_g2663;
				#else
				float4 staticSwitch5_g2650 = staticSwitch3_g2650;
				#endif
				float4 temp_output_1_0_g2659 = staticSwitch5_g2650;
				float2 appendResult2_g2662 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2661 = 0;
				if( _SourceAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2661 = (WorldPosition).xy;
				else if( _SourceAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2661 = (IN.ase_texcoord8.xyz).xy;
				else if( _SourceAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2661 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2662 ) );
				float2 temp_output_7_0_g2659 = ifLocalVar2_g2661;
				float clampResult17_g2659 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_7_0_g2659 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2659 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2659 = (float4((temp_output_1_0_g2659).rgb , ( temp_output_1_0_g2659.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g2659 ) ):( clampResult17_g2659 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g2650 = appendResult3_g2659;
				#else
				float4 staticSwitch8_g2650 = staticSwitch5_g2650;
				#endif
				float2 appendResult2_g2669 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2668 = 0;
				if( _SourceGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2668 = (WorldPosition).xy;
				else if( _SourceGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2668 = (IN.ase_texcoord8.xyz).xy;
				else if( _SourceGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2668 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2669 ) );
				float2 temp_output_7_0_g2667 = ifLocalVar2_g2668;
				float temp_output_65_0_g2667 = ( distance( _SourceGlowDissolvePosition , temp_output_7_0_g2667 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2667 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g2667 = step( temp_output_65_0_g2667 , _SourceGlowDissolveFade );
				float temp_output_76_0_g2667 = step( temp_output_65_0_g2667 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g2667 = staticSwitch8_g2650;
				float4 appendResult3_g2667 = (float4(( ( max( ( temp_output_75_0_g2667 - temp_output_76_0_g2667 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g2667).rgb ) , ( temp_output_1_0_g2667.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g2667 ) ):( temp_output_75_0_g2667 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g2650 = appendResult3_g2667;
				#else
				float4 staticSwitch9_g2650 = staticSwitch8_g2650;
				#endif
				float4 temp_output_1_0_g2675 = staticSwitch9_g2650;
				float2 appendResult2_g2678 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2677 = 0;
				if( _DirectionalAlphaFadeSpace > 1.0 )
				ifLocalVar2_g2677 = (WorldPosition).xy;
				else if( _DirectionalAlphaFadeSpace == 1.0 )
				ifLocalVar2_g2677 = (IN.ase_texcoord8.xyz).xy;
				else if( _DirectionalAlphaFadeSpace < 1.0 )
				ifLocalVar2_g2677 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2678 ) );
				float2 temp_output_7_0_g2675 = ifLocalVar2_g2677;
				float3 rotatedValue136_g2675 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2675 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2675 = rotatedValue136_g2675;
				float clampResult154_g2675 = clamp( ( ( break130_g2675.x + break130_g2675.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2675 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2675 = (float4((temp_output_1_0_g2675).rgb , ( temp_output_1_0_g2675.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g2675 ) ):( clampResult154_g2675 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g2650 = appendResult3_g2675;
				#else
				float4 staticSwitch11_g2650 = staticSwitch9_g2650;
				#endif
				float2 appendResult2_g2674 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2673 = 0;
				if( _DirectionalGlowFadeSpace > 1.0 )
				ifLocalVar2_g2673 = (WorldPosition).xy;
				else if( _DirectionalGlowFadeSpace == 1.0 )
				ifLocalVar2_g2673 = (IN.ase_texcoord8.xyz).xy;
				else if( _DirectionalGlowFadeSpace < 1.0 )
				ifLocalVar2_g2673 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2674 ) );
				float2 temp_output_7_0_g2671 = ifLocalVar2_g2673;
				float3 rotatedValue136_g2671 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2671 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2671 = rotatedValue136_g2671;
				float temp_output_168_0_g2671 = max( ( ( break130_g2671.x + break130_g2671.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2671 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g2671 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) );
				float4 temp_output_1_0_g2671 = staticSwitch11_g2650;
				float clampResult154_g2671 = clamp( temp_output_161_0_g2671 , 0.0 , 1.0 );
				float4 appendResult3_g2671 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g2671 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) ) ) ) + (temp_output_1_0_g2671).rgb ) , ( temp_output_1_0_g2671.a * clampResult154_g2671 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g2650 = appendResult3_g2671;
				#else
				float4 staticSwitch15_g2650 = staticSwitch11_g2650;
				#endif
				float4 temp_output_1_0_g2655 = staticSwitch15_g2650;
				float2 appendResult2_g2658 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2657 = 0;
				if( _HalftoneSpace > 1.0 )
				ifLocalVar2_g2657 = (WorldPosition).xy;
				else if( _HalftoneSpace == 1.0 )
				ifLocalVar2_g2657 = (IN.ase_texcoord8.xyz).xy;
				else if( _HalftoneSpace < 1.0 )
				ifLocalVar2_g2657 = ( IN.ase_texcoord7.xy / ( 100.0 / appendResult2_g2658 ) );
				float2 temp_output_7_0_g2655 = ifLocalVar2_g2657;
				float temp_output_121_0_g2655 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_7_0_g2655 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g2656 = (float2(temp_output_121_0_g2655 , temp_output_121_0_g2655));
				float temp_output_17_0_g2656 = length( ( (( ( abs( temp_output_7_0_g2655 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g2656 ) );
				float clampResult17_g2655 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g2656 ) / fwidth( temp_output_17_0_g2656 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2655 = (float4((temp_output_1_0_g2655).rgb , ( temp_output_1_0_g2655.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g2655 ) ):( clampResult17_g2655 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g2650 = appendResult3_g2655;
				#else
				float4 staticSwitch13_g2650 = staticSwitch15_g2650;
				#endif
				float4 temp_output_1_0_g2698 = staticSwitch13_g2650;
				float4 break2_g2700 = temp_output_1_0_g2698;
				float temp_output_9_0_g2699 = max( _AddColorContrast , 0.0 );
				float saferPower7_g2699 = max( ( ( ( break2_g2700.x + break2_g2700.y + break2_g2700.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2699 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g2698 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g2699 , temp_output_9_0_g2699 ) * _AddColorFade ) + (temp_output_1_0_g2698).rgb ) , temp_output_1_0_g2698.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g2697 = appendResult6_g2698;
				#else
				float4 staticSwitch5_g2697 = staticSwitch13_g2650;
				#endif
				float4 temp_output_1_0_g2701 = staticSwitch5_g2697;
				float saferPower11_g2701 = max( ( 1.0 - temp_output_1_0_g2701.a ) , 0.0001 );
				float3 lerpResult4_g2701 = lerp( (temp_output_1_0_g2701).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g2701 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g2701.a ) ));
				float4 appendResult13_g2701 = (float4(lerpResult4_g2701 , temp_output_1_0_g2701.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g2697 = appendResult13_g2701;
				#else
				float4 staticSwitch11_g2697 = staticSwitch5_g2697;
				#endif
				float4 temp_output_1_0_g2702 = staticSwitch11_g2697;
				float4 break2_g2703 = temp_output_1_0_g2702;
				float temp_output_9_0_g2704 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g2704 = max( ( ( ( break2_g2703.x + break2_g2703.y + break2_g2703.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2704 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g2702 = lerp( (temp_output_1_0_g2702).rgb , ( pow( saferPower7_g2704 , temp_output_9_0_g2704 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g2702 = (float4(lerpResult7_g2702 , (temp_output_1_0_g2702).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g2697 = appendResult9_g2702;
				#else
				float4 staticSwitch7_g2697 = staticSwitch11_g2697;
				#endif
				float4 lerpResult125 = lerp( tex2DNode31 , staticSwitch7_g2697 , fullFade123);
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g2548 = _White;
				#else
				float4 staticSwitch8_g2548 = IN.ase_color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g2548 = _White;
				#else
				float4 staticSwitch9_g2548 = staticSwitch8_g2548;
				#endif
				float4 lerpResult126 = lerp( IN.ase_color , staticSwitch9_g2548 , fullFade123);
				float4 temp_output_119_0 = ( lerpResult125 * lerpResult126 );
				
				float2 uv_NormalMap = IN.ase_texcoord7.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
				float3 unpack3_g2710 = UnpackNormalScale( tex2D( _NormalMap, uv_NormalMap ), _NormalIntensity );
				unpack3_g2710.z = lerp( 1, unpack3_g2710.z, saturate(_NormalIntensity) );
				
				float2 uv_SmoothnessMap = IN.ase_texcoord7.xy * _SmoothnessMap_ST.xy + _SmoothnessMap_ST.zw;
				float4 tex2DNode7_g2710 = tex2D( _SmoothnessMap, uv_SmoothnessMap );
				
				float3 Albedo = temp_output_119_0.rgb;
				float3 Normal = unpack3_g2710;
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = ( tex2DNode7_g2710.r * _Metallic );
				float Smoothness = ( _Smoothness * tex2DNode7_g2710.r );
				float Occlusion = 1;
				float Alpha = temp_output_119_0.a;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
					inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
					inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
					inputData.normalWS = Normal;
					#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;
				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
				#ifdef _ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif
				half4 color = UniversalFragmentPBR(
					inputData, 
					Albedo, 
					Metallic, 
					Specular, 
					Smoothness, 
					Occlusion, 
					Emission, 
					Alpha);

				#ifdef _TRANSMISSION_ASE
				{
					float shadow = _TransmissionShadow;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );
					half3 mainTransmission = max(0 , -dot(inputData.normalWS, mainLight.direction)) * mainAtten * Transmission;
					color.rgb += Albedo * mainTransmission;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 transmission = max(0 , -dot(inputData.normalWS, light.direction)) * atten * Transmission;
							color.rgb += Albedo * transmission;
						}
					#endif
				}
				#endif

				#ifdef _TRANSLUCENCY_ASE
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );

					half3 mainLightDir = mainLight.direction + inputData.normalWS * normal;
					half mainVdotL = pow( saturate( dot( inputData.viewDirectionWS, -mainLightDir ) ), scattering );
					half3 mainTranslucency = mainAtten * ( mainVdotL * direct + inputData.bakedGI * ambient ) * Translucency;
					color.rgb += Albedo * mainTranslucency * strength;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 lightDir = light.direction + inputData.normalWS * normal;
							half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );
							half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;
							color.rgb += Albedo * translucency * strength;
						}
					#endif
				}
				#endif

				#ifdef _REFRACTION_ASE
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, WorldNormal ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif
				
				return color;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70403

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_SHADOWCASTER

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _ENABLEVIBRATE_ON
			#pragma shader_feature_local _ENABLESINEMOVE_ON
			#pragma shader_feature_local _ENABLESQUISH_ON
			#pragma shader_feature_local _ENABLEGLITCH_ON
			#pragma shader_feature_local _ENABLEHOLOGRAM_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALDISTORTION_ON
			#pragma shader_feature_local _ENABLEFULLDISTORTION_ON
			#pragma shader_feature_local _ENABLEUVSCROLL_ON
			#pragma shader_feature_local _ENABLEUVROTATE_ON
			#pragma shader_feature_local _ENABLESINEROTATE_ON
			#pragma shader_feature_local _ENABLESQUEEZE_ON
			#pragma shader_feature_local _ENABLEUVDISTORT_ON
			#pragma shader_feature_local _ENABLEPIXELATE_ON
			#pragma shader_feature_local _ENABLEWIND_ON
			#pragma shader_feature_local _ENABLESTRONGTINT_ON
			#pragma shader_feature_local _ENABLEALPHATINT_ON
			#pragma shader_feature_local _ENABLEADDCOLOR_ON
			#pragma shader_feature_local _ENABLEHALFTONE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALGLOWFADE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALALPHAFADE_ON
			#pragma shader_feature_local _ENABLESOURCEGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLESOURCEALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEPOISON_ON
			#pragma shader_feature_local _ENABLESHINE_ON
			#pragma shader_feature_local _ENABLERAINBOW_ON
			#pragma shader_feature_local _ENABLEBURN_ON
			#pragma shader_feature_local _ENABLEFROZEN_ON
			#pragma shader_feature_local _ENABLEMETAL_ON
			#pragma shader_feature_local _ENABLECAMOUFLAGE_ON
			#pragma shader_feature_local _ENABLEOUTEROUTLINE_ON
			#pragma shader_feature_local _ENABLEINNEROUTLINE_ON
			#pragma shader_feature_local _ENABLESINEGLOW_ON
			#pragma shader_feature_local _ENABLEADDHUE_ON
			#pragma shader_feature_local _ENABLESHIFTHUE_ON
			#pragma shader_feature_local _ENABLEINKSPREAD_ON
			#pragma shader_feature_local _ENABLEADJUSTCOLOR_ON
			#pragma shader_feature_local _ENABLERECOLOR_ON
			#pragma shader_feature_local _ENABLEBLACKTINT_ON
			#pragma shader_feature_local _ENABLESPLITTONING_ON
			#pragma shader_feature_local _ENABLECOLORREPLACE_ON
			#pragma shader_feature_local _ENABLEFLAME_ON
			#pragma shader_feature_local _ENABLECHECKERBOARD_ON
			#pragma shader_feature_local _ENABLECUSTOMFADE_ON
			#pragma shader_feature_local _ENABLESMOKE_ON
			#pragma shader_feature_local _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma shader_feature_local _OUTEROUTLINEDISTORTIONTOGGLE_ON


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _HologramTint;
			float4 _ShineColor;
			float4 _RecolorRedTint;
			float4 _RecolorYellowTint;
			float4 _RecolorGreenTint;
			float4 _RecolorCyanTint;
			float4 _RecolorBlueTint;
			float4 _RecolorPurpleTint;
			float4 _RainbowMask_ST;
			float4 _RecolorTintAreas_ST;
			float4 _ShineShaderMask_ST;
			float4 _SplitToningHighlightsColor;
			float4 _SplitToningShadowsColor;
			float4 _ColorReplaceTargetColor;
			float4 _ColorReplaceColor;
			float4 _PoisonColor;
			float4 _FullGlowDissolveEdgeColor;
			float4 _BlackTintColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _InkSpreadColor;
			float4 _BurnEdgeColor;
			float4 _MetalShaderMask_ST;
			float4 _MetalHighlightColor;
			float4 _FrozenTint;
			float4 _CamouflageShaderMask_ST;
			float4 _FrozenSnowColor;
			float4 _CamouflageColorB;
			float4 _CamouflageColorA;
			float4 _ShiftHueShaderMask_ST;
			float4 _CamouflageBaseColor;
			float4 _BurnInsideNoiseColor;
			float4 _OuterOutlineColor;
			float4 _InnerOutlineColor;
			float4 _BurnInsideColor;
			float4 _SineGlowColor;
			float4 _SineGlowShaderMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _FrozenHighlightColor;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _MetalColor;
			float4 _WindDistortionMask_ST;
			float4 _NormalMap_ST;
			float4 _MainTex_TexelSize;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _AlphaTintColor;
			float4 _AddColorColor;
			float4 _SmoothnessMap_ST;
			float2 _OuterOutlineDistortionIntensity;
			float2 _UVDistortSpeed;
			float2 _UVDistortNoiseScale;
			float2 _FlameNoiseScale;
			float2 _PoisonNoiseSpeed;
			float2 _BurnEdgeNoiseScale;
			float2 _FrozenHighlightScale;
			float2 _GlitchNoiseSpeed;
			float2 _UVDistortTo;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _SqueezeCenter;
			float2 _GlitchNoiseScale;
			float2 _FrozenHighlightDistortion;
			float2 _FrozenHighlightSpeed;
			float2 _UVDistortFrom;
			float2 _PoisonNoiseScale;
			float2 _OuterOutlineNoiseSpeed;
			float2 _HalftonePosition;
			float2 _BurnPosition;
			float2 _WindFromDistortion;
			float2 _RainbowCenter;
			float2 _RainbowNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _InkSpreadPosition;
			float2 _OuterOutlineNoiseScale;
			float2 _BurnInsideNoiseScale;
			float2 _WindToDistortion;
			float2 _InnerOutlineNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _WindDistortionSpeed;
			float2 _BurnSwirlNoiseScale;
			float2 _WindDistortionScale;
			float2 _FlameSpeed;
			float2 _InnerOutlineNoiseSpeed;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _FrozenHighlightDistortionScale;
			float2 _CamouflageAnimationSpeed;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _FullDistortionNoiseScale;
			float2 _CamouflageNoiseScaleB;
			float2 _SourceGlowDissolvePosition;
			float2 _SqueezeScale;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _MetalNoiseDistortionScale;
			float2 _SineMoveOffset;
			float2 _MetalNoiseDistortion;
			float2 _SineMoveFrequency;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _DirectionalDistortionDistortionScale;
			float2 _DirectionalDistortionNoiseScale;
			float2 _MetalNoiseDistortionSpeed;
			float2 _FullDistortionDistortion;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortion;
			float2 _SineRotatePivot;
			float2 _FullGlowDissolveNoiseScale;
			float2 _CustomFadeNoiseScale;
			float2 _CamouflageDistortionScale;
			float2 _CamouflageDistortionIntensity;
			float2 _CamouflageNoiseScaleA;
			float2 _FrozenSnowScale;
			float2 _MetalNoiseSpeed;
			float2 _SourceAlphaDissolvePosition;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _MetalNoiseScale;
			float2 _GlitchMaskScale;
			float2 _GlitchMaskSpeed;
			float2 _UVScrollSpeed;
			float2 _UVRotatePivot;
			float2 _DirectionalDistortionDistortion;
			float _NormalIntensity;
			float _AddColorFade;
			float _BurnRadius;
			float _AddColorContrast;
			float _FrozenSnowDensity;
			float _BurnSwirlFactor;
			float _AlphaTintPower;
			float _FrozenSnowContrast;
			float _BurnSpace;
			float _BurnInsideNoiseFactor;
			float _AlphaTintFade;
			float _BurnInsideContrast;
			float _FrozenFade;
			float _FrozenHighlightContrast;
			float _AlphaTintMinAlpha;
			int _FrozenSpace;
			float _StrongTintFade;
			float _StrongTintContrast;
			float _FrozenHighlightDensity;
			float _FrozenContrast;
			float _HalftoneFadeWidth;
			float _ShineRotation;
			float _BurnWidth;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			int _FullAlphaDissolveSpace;
			int _FullGlowDissolveSpace;
			float _FullGlowDissolveFade;
			float _FullGlowDissolveWidth;
			float _SourceAlphaDissolveInvert;
			float _SourceAlphaDissolveFade;
			int _SourceAlphaDissolveSpace;
			float _SourceAlphaDissolveNoiseFactor;
			float _SourceAlphaDissolveWidth;
			int _SourceGlowDissolveSpace;
			float _SourceGlowDissolveNoiseFactor;
			float _SourceGlowDissolveFade;
			float _SourceGlowDissolveWidth;
			float _SourceGlowDissolveInvert;
			float _DirectionalAlphaFadeInvert;
			float _DirectionalAlphaFadeRotation;
			int _DirectionalAlphaFadeSpace;
			float _DirectionalAlphaFadeFade;
			float _DirectionalAlphaFadeNoiseFactor;
			float _DirectionalAlphaFadeWidth;
			float _DirectionalGlowFadeFade;
			float _DirectionalGlowFadeInvert;
			float _PoisonNoiseBrightness;
			float _BurnEdgeNoiseFactor;
			float _PoisonFade;
			float _PoisonDensity;
			float _BurnFade;
			float _RainbowSpace;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineContrast;
			int _DirectionalGlowFadeSpace;
			float _ShineSpeed;
			float _HalftoneFade;
			float _HalftoneTiling;
			int _HalftoneSpace;
			float _ShineScale;
			int _ShineSpace;
			float _HalftoneInvert;
			float _ShineDensity;
			float _ShineSmoothness;
			float _ShineFade;
			float _DirectionalGlowFadeWidth;
			float _PoisonSpace;
			float _MetalFade;
			float _PoisonShiftSpeed;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeRotation;
			float _SquishStretch;
			float _MetalHighlightContrast;
			float _DirectionalDistortionRandomDirection;
			float _DirectionalDistortionInvert;
			float _DirectionalDistortionRotation;
			float _DirectionalDistortionFade;
			float _DirectionalDistortionNoiseFactor;
			float _DirectionalDistortionWidth;
			float _HologramDistortionSpeed;
			float _HologramDistortionDensity;
			float _HologramDistortionScale;
			float _HologramDistortionOffset;
			float _HologramFade;
			int _GlitchSpace;
			int _DirectionalDistortionSpace;
			float _GlitchMaskMin;
			float _SmokeVertexSeed;
			float _SmokeNoiseScale;
			float _SmokeNoiseFactor;
			float _SmokeSmoothness;
			float _SmokeDarkEdge;
			float _SmokeAlpha;
			float _CustomFadeNoiseFactor;
			float _CustomFadeSmoothness;
			float _CustomFadeAlpha;
			float _CheckerboardDarken;
			float _CheckerboardTiling;
			float _FlameNoiseHeightFactor;
			float _GlitchFade;
			int _FullDistortionSpace;
			float _FullDistortionFade;
			float _UVRotateScale;
			float _SquishFade;
			float _SquishFlip;
			float _SquishSquish;
			float _SineMoveFade;
			float _VibrateFrequency;
			float _VibrateOffset;
			float _VibrateFade;
			float _VibrateRotation;
			float _FullFade;
			float _WindRotationWindFactor;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _WindSquishWindFactor;
			float _WindDistortionWindFactor;
			float _PixelatePixelDensity;
			float _PixelateFade;
			int _UVDistortSpace;
			float _UVDistortFade;
			float _SqueezePower;
			float _SqueezeFade;
			float _SineRotateFrequency;
			float _SineRotateAngle;
			float _SineRotateFade;
			float _SineRotateScale;
			float _UVRotateSpeed;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _FlameBrightness;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _InnerOutlineWidth;
			float _InnerOutlineFade;
			float _OuterOutlineWidth;
			float _OuterOutlineFade;
			float _Metallic;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _HologramLineFrequency;
			float _HologramLineGap;
			float _HologramMinAlpha;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
			float _CamouflageDensityA;
			float _CamouflageAnimated;
			int _CamouflageSpace;
			float _CamouflageSmoothnessA;
			float _CamouflageDensityB;
			float _CamouflageSmoothnessB;
			float _CamouflageContrast;
			float _CamouflageFade;
			float _MetalHighlightDensity;
			int _MetalSpace;
			float _AddHueFade;
			float _MetalContrast;
			float _AddHueContrast;
			float _AddHueSaturation;
			float _ColorReplaceContrast;
			float _ColorReplaceHueTolerance;
			float _ColorReplaceSaturationTolerance;
			float _ColorReplaceBrightnessTolerance;
			float _ColorReplaceBias;
			float _ColorReplaceFade;
			float _SplitToningShift;
			float _SplitToningBalance;
			float _SplitToningContrast;
			float _SplitToningFade;
			float _BlackTintPower;
			float _BlackTintFade;
			float _RecolorFade;
			float _AdjustColorHueShift;
			float _AdjustColorSaturation;
			float _AdjustColorContrast;
			float _AdjustColorBrightness;
			float _AdjustColorFade;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			int _InkSpreadSpace;
			float _InkSpreadNoiseFactor;
			float _InkSpreadWidth;
			float _ShiftHueSpeed;
			float _ShiftHueFade;
			float _AddHueSpeed;
			float _AddHueBrightness;
			float _Smoothness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			float WindMinIntensity;
			float WindMaxIntensity;
			float2 WindNoiseSpeed;
			float2 WindNoiseScale;
			sampler2D _UberNoiseTexture;
			sampler2D _WindDistortionMask;
			sampler2D _UVDistortShaderMask;
			sampler2D _CustomFadeFadeMask;
			sampler2D _RecolorTintAreas;
			sampler2D _ShiftHueShaderMask;
			sampler2D _AddHueShaderMask;
			sampler2D _SineGlowShaderMask;
			sampler2D _CamouflageShaderMask;
			sampler2D _MetalShaderMask;
			sampler2D _RainbowMask;
			sampler2D _ShineShaderMask;


			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			//https://www.shadertoy.com/view/XdXGW8
			float2 GradientNoiseDir( float2 x )
			{
				const float2 k = float2( 0.3183099, 0.3678794 );
				x = x * k + k.yx;
				return -1.0 + 2.0 * frac( 16.0 * k * frac( x.x * x.y * ( x.x + x.y ) ) );
			}
			
			float GradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 i = floor( p );
				float2 f = frac( p );
				float2 u = f * f * ( 3.0 - 2.0 * f );
				return lerp( lerp( dot( GradientNoiseDir( i + float2( 0.0, 0.0 ) ), f - float2( 0.0, 0.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 0.0 ) ), f - float2( 1.0, 0.0 ) ), u.x ),
						lerp( dot( GradientNoiseDir( i + float2( 0.0, 1.0 ) ), f - float2( 0.0, 1.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 1.0 ) ), f - float2( 1.0, 1.0 ) ), u.x ), u.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			float3 _LightDirection;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 texCoord39 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g2705 = texCoord39;
				float2 appendResult72_g2705 = (float2(( _SquishStretch * ( break77_g2705.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g2705.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH_ON
				float2 staticSwitch96 = ( appendResult72_g2705 + float2( 0,0 ) );
				#else
				float2 staticSwitch96 = float2( 0,0 );
				#endif
				float2 temp_output_2_0_g2706 = staticSwitch96;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g2706 = ( ( sin( ( _TimeParameters.x * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g2706 );
				#else
				float2 staticSwitch4_g2706 = temp_output_2_0_g2706;
				#endif
				float mulTime27_g2708 = _TimeParameters.x * _VibrateFrequency;
				float3 rotatedValue21_g2708 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( _VibrateRotation * _TimeParameters.x ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g2706 = ( ( sin( mulTime27_g2708 ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g2708).xy ) + staticSwitch4_g2706 );
				#else
				float2 staticSwitch6_g2706 = staticSwitch4_g2706;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult121 = lerp( float2( 0,0 ) , staticSwitch6_g2706 , fullFade123);
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				o.ase_texcoord3 = v.vertex;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = float3( lerpResult121 ,  0.0 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif
				float3 normalWS = TransformObjectToWorldDir(v.ase_normal);

				float4 clipPos = TransformWorldToHClip( ApplyShadowBias( positionWS, normalWS, _LightDirection ) );

				#if UNITY_REVERSED_Z
					clipPos.z = min(clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE);
				#else
					clipPos.z = max(clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE);
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = clipPos;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );
				
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 texCoord131 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord39 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g2502 = texCoord39;
				float4 transform62_g2503 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g2503 = GradientNoise(( ( (transform62_g2503).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g2503 = gradientNoise95_g2503*0.5 + 0.5;
				float lerpResult86_g2503 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g2503);
				float clampResult29_g2503 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g2503 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g2503 = temp_output_3_0_g2502;
				float temp_output_39_0_g2503 = ( temp_output_1_0_g2503.y + _WindFlip );
				float3 appendResult43_g2503 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g2503 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g2503 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g2503 )));
				float2 appendResult2_g2505 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2504 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g2504 = (WorldPosition).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g2504 = (IN.ase_texcoord3.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g2504 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2505 ) );
				float lerpResult78_g2503 = lerp( 1.0 , lerpResult86_g2503 , _WindDistortionWindFactor);
				float2 lerpResult75_g2503 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2504 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g2503 ));
				float2 uv_WindDistortionMask = IN.ase_texcoord2.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g2507 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g2503 = RotateAroundAxis( appendResult43_g2503, float3( ( appendResult27_g2503 + ( ( lerpResult75_g2503 * ( 1.0 * ( tex2DNode3_g2507.r * tex2DNode3_g2507.a ) ) ) + temp_output_1_0_g2503 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g2503 * temp_output_39_0_g2503 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g2502 = (rotatedValue19_g2503).xy;
				#else
				float2 staticSwitch4_g2502 = temp_output_3_0_g2502;
				#endif
				float2 temp_output_1_0_g2508 = staticSwitch4_g2502;
				float2 appendResult2_g2520 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_22_0_g2519 = ( float2( 1,1 ) / ( 100.0 / appendResult2_g2520 ) );
				float temp_output_25_0_g2519 = ( 1.0 / max( _PixelateFade , 0.0001 ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g2508 = ( ( ( round( ( temp_output_1_0_g2508 * _PixelatePixelDensity * temp_output_22_0_g2519 * temp_output_25_0_g2519 ) ) / _PixelatePixelDensity ) / temp_output_22_0_g2519 ) / temp_output_25_0_g2519 );
				#else
				float2 staticSwitch4_g2508 = temp_output_1_0_g2508;
				#endif
				float2 appendResult2_g2511 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2510 = 0;
				if( _UVDistortSpace > 1.0 )
				ifLocalVar2_g2510 = (WorldPosition).xy;
				else if( _UVDistortSpace == 1.0 )
				ifLocalVar2_g2510 = (IN.ase_texcoord3.xyz).xy;
				else if( _UVDistortSpace < 1.0 )
				ifLocalVar2_g2510 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2511 ) );
				float2 lerpResult21_g2509 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2510 + ( _UVDistortSpeed * _TimeParameters.x ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g2513 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.ase_texcoord2.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g2512 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g2508 = ( staticSwitch4_g2508 + ( lerpResult21_g2509 * ( 100.0 / appendResult2_g2513 ) * ( _UVDistortFade * ( tex2DNode3_g2512.r * tex2DNode3_g2512.a ) ) ) );
				#else
				float2 staticSwitch5_g2508 = staticSwitch4_g2508;
				#endif
				float2 temp_output_1_0_g2515 = staticSwitch5_g2508;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g2508 = ( temp_output_1_0_g2515 + ( ( temp_output_1_0_g2515 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g2515 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g2508 = staticSwitch5_g2508;
				#endif
				float mulTime43_g2516 = _TimeParameters.x * _SineRotateFrequency;
				float3 rotatedValue36_g2516 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g2508 ,  0.0 ), float3( 0,0,1 ), ( sin( mulTime43_g2516 ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g2508 = ( ( ( (rotatedValue36_g2516).xy - float2( 0.5,0.5 ) ) / max( _SineRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch9_g2508 = staticSwitch7_g2508;
				#endif
				float mulTime6_g2517 = _TimeParameters.x * _UVRotateSpeed;
				float3 rotatedValue8_g2517 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g2508 ,  0.0 ), float3( 0,0,1 ), ( mulTime6_g2517 * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g2508 = ( ( ( (rotatedValue8_g2517).xy - float2( 0.5,0.5 ) ) / max( _UVRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch16_g2508 = staticSwitch9_g2508;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g2508 = ( ( ( _UVScrollSpeed * _TimeParameters.x ) + staticSwitch16_g2508 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g2508 = staticSwitch16_g2508;
				#endif
				float2 appendResult2_g2525 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2524 = 0;
				if( _FullDistortionSpace > 1.0 )
				ifLocalVar2_g2524 = (WorldPosition).xy;
				else if( _FullDistortionSpace == 1.0 )
				ifLocalVar2_g2524 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullDistortionSpace < 1.0 )
				ifLocalVar2_g2524 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2525 ) );
				float2 temp_output_7_0_g2521 = ifLocalVar2_g2524;
				float2 appendResult189_g2521 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2521 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_7_0_g2521 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch14_g2508 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g2521 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch14_g2508;
				#endif
				float2 appendResult2_g2533 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2532 = 0;
				if( _DirectionalDistortionSpace > 1.0 )
				ifLocalVar2_g2532 = (WorldPosition).xy;
				else if( _DirectionalDistortionSpace == 1.0 )
				ifLocalVar2_g2532 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalDistortionSpace < 1.0 )
				ifLocalVar2_g2532 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2533 ) );
				float2 temp_output_7_0_g2530 = ifLocalVar2_g2532;
				float3 rotatedValue168_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2530 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2530 = rotatedValue136_g2530;
				float clampResult154_g2530 = clamp( ( ( break130_g2530.x + break130_g2530.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g2530).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float temp_output_8_0_g2536 = ( ( ( _TimeParameters.x * _HologramDistortionSpeed ) + WorldPosition.y ) / unity_OrthoParams.y );
				float2 temp_cast_7 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_8 = (_HologramDistortionDensity).xx;
				float clampResult75_g2536 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_7 * temp_cast_8 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_9 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_10 = (_HologramDistortionScale).xx;
				float2 appendResult2_g2537 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 appendResult44_g2536 = (float2(( ( ( clampResult75_g2536 * ( tex2D( _UberNoiseTexture, ( temp_cast_9 * temp_cast_10 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g2537 ).x ) * _HologramFade ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g2536 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 appendResult2_g2544 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2543 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g2543 = (WorldPosition).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g2543 = (IN.ase_texcoord3.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g2543 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2544 ) );
				float2 temp_output_3_0_g2542 = ifLocalVar2_g2543;
				float2 temp_output_102_0 = temp_output_3_0_g2542;
				float temp_output_102_15 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_3_0_g2542 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_102_15 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult130 = lerp( texCoord131 , staticSwitch62 , fullFade123);
				float4 tex2DNode31 = tex2D( _MainTex, lerpResult130 );
				float4 temp_output_1_0_g2548 = tex2DNode31;
				float4 temp_output_1_0_g2551 = temp_output_1_0_g2548;
				float2 temp_output_7_0_g2548 = lerpResult130;
				float2 temp_output_43_0_g2551 = temp_output_7_0_g2548;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g2551 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.ase_color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g2551 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.ase_color.a / 2.5 ) - distance( temp_output_43_0_g2551 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g2551 = lerp( ( (temp_output_1_0_g2551).rgb * (IN.ase_color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g2551 ) * _SmokeDarkEdge ));
				float4 appendResult31_g2551 = (float4(lerpResult34_g2551 , ( clampResult28_g2551 * _SmokeAlpha * temp_output_1_0_g2551.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g2548 = appendResult31_g2551;
				#else
				float4 staticSwitch2_g2548 = temp_output_1_0_g2548;
				#endif
				float4 temp_output_1_0_g2549 = staticSwitch2_g2548;
				float2 temp_output_57_0_g2549 = temp_output_7_0_g2548;
				float4 tex2DNode3_g2549 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g2549 );
				float clampResult37_g2549 = clamp( ( ( ( IN.ase_color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g2549.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g2549 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g2549 = (float4(( float4( (IN.ase_color).rgb , 0.0 ) * temp_output_1_0_g2549 ).rgb , ( temp_output_1_0_g2549.a * pow( clampResult37_g2549 , ( _CustomFadeSmoothness / max( tex2DNode3_g2549.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g2548 = appendResult13_g2549;
				#else
				float4 staticSwitch3_g2548 = staticSwitch2_g2548;
				#endif
				float4 temp_output_1_0_g2553 = staticSwitch3_g2548;
				float4 temp_output_1_0_g2554 = temp_output_1_0_g2553;
				float2 appendResult4_g2554 = (float2(WorldPosition.x , WorldPosition.y));
				float2 temp_output_44_0_g2554 = ( appendResult4_g2554 * _CheckerboardTiling * 0.5 );
				float2 break12_g2554 = step( ( ceil( temp_output_44_0_g2554 ) - temp_output_44_0_g2554 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g2554.x + break12_g2554.y ) ) )).xxx;
				float4 appendResult42_g2554 = (float4(( (temp_output_1_0_g2554).rgb - temp_cast_16 ) , temp_output_1_0_g2554.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g2553 = appendResult42_g2554;
				#else
				float4 staticSwitch2_g2553 = temp_output_1_0_g2553;
				#endif
				float2 temp_output_75_0_g2555 = lerpResult130;
				float saferPower57_g2555 = max( max( ( temp_output_75_0_g2555.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g2555 = max( _FlameRadius , 0.01 );
				float clampResult70_g2555 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FlameSpeed ) + temp_output_75_0_g2555 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g2555 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g2555 - distance( temp_output_75_0_g2555 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g2555 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g2555 = ( clampResult70_g2555 * _FlameBrightness );
				float4 appendResult31_g2555 = (float4(temp_output_63_0_g2555 , temp_output_63_0_g2555 , temp_output_63_0_g2555 , clampResult70_g2555));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g2553 = ( appendResult31_g2555 * staticSwitch2_g2553 );
				#else
				float4 staticSwitch6_g2553 = staticSwitch2_g2553;
				#endif
				float4 temp_output_3_0_g2557 = staticSwitch6_g2553;
				float4 temp_output_1_0_g2558 = temp_output_3_0_g2557;
				float3 temp_output_2_0_g2558 = (temp_output_1_0_g2558).rgb;
				float4 break2_g2559 = float4( temp_output_2_0_g2558 , 0.0 );
				float temp_output_9_0_g2560 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g2560 = max( ( ( ( break2_g2559.x + break2_g2559.y + break2_g2559.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2560 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g2558 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g2558 = RGBToHSV( temp_output_2_0_g2558 );
				float clampResult35_g2558 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g2558.x , hsvTorgb5_g2558.x ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + 1.0 ) ) ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.y , hsvTorgb5_g2558.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.z , hsvTorgb5_g2558.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g2558 = max( ( clampResult35_g2558 * clampResult30_g2558 * clampResult40_g2558 ) , 0.0001 );
				float3 lerpResult23_g2558 = lerp( temp_output_2_0_g2558 , ( pow( saferPower7_g2560 , temp_output_9_0_g2560 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g2558 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g2558 = (float4(lerpResult23_g2558 , temp_output_1_0_g2558.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g2557 = appendResult4_g2558;
				#else
				float4 staticSwitch29_g2557 = temp_output_3_0_g2557;
				#endif
				float4 temp_output_1_0_g2588 = staticSwitch29_g2557;
				float4 break2_g2589 = temp_output_1_0_g2588;
				float temp_output_3_0_g2588 = ( ( break2_g2589.x + break2_g2589.y + break2_g2589.z ) / 3.0 );
				float clampResult25_g2588 = clamp( ( ( ( ( temp_output_3_0_g2588 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g2588 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g2588);
				float temp_output_9_0_g2590 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g2590 = max( ( temp_output_3_0_g2588 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2590 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g2588 = lerp( (temp_output_1_0_g2588).rgb , ( lerpResult6_g2588 * pow( saferPower7_g2590 , temp_output_9_0_g2590 ) ) , _SplitToningFade);
				float4 appendResult18_g2588 = (float4(lerpResult11_g2588 , temp_output_1_0_g2588.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g2557 = appendResult18_g2588;
				#else
				float4 staticSwitch30_g2557 = staticSwitch29_g2557;
				#endif
				float4 temp_output_1_0_g2561 = staticSwitch30_g2557;
				float3 temp_output_4_0_g2561 = (temp_output_1_0_g2561).rgb;
				float4 break12_g2561 = temp_output_1_0_g2561;
				float3 lerpResult7_g2561 = lerp( temp_output_4_0_g2561 , ( temp_output_4_0_g2561 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g2561.r , break12_g2561.g ) , break12_g2561.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g2561 = lerp( temp_output_4_0_g2561 , lerpResult7_g2561 , _BlackTintFade);
				float4 appendResult11_g2561 = (float4(lerpResult13_g2561 , break12_g2561.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g2557 = appendResult11_g2561;
				#else
				float4 staticSwitch20_g2557 = staticSwitch30_g2557;
				#endif
				float4 temp_output_1_0_g2583 = staticSwitch20_g2557;
				float2 uv_RecolorTintAreas = IN.ase_texcoord2.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g2583 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g2583 = ( ( hsvTorgb33_g2583.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.8333333 )
				ifLocalVar46_g2583 = _RecolorPurpleTint;
				else
				ifLocalVar46_g2583 = _RecolorBlueTint;
				float4 ifLocalVar44_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.6666667 )
				ifLocalVar44_g2583 = _RecolorCyanTint;
				else
				ifLocalVar44_g2583 = ifLocalVar46_g2583;
				float4 ifLocalVar47_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.3333333 )
				ifLocalVar47_g2583 = _RecolorYellowTint;
				else
				ifLocalVar47_g2583 = _RecolorGreenTint;
				float4 ifLocalVar45_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.1666667 )
				ifLocalVar45_g2583 = _RecolorRedTint;
				else
				ifLocalVar45_g2583 = ifLocalVar47_g2583;
				float4 ifLocalVar35_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.5 )
				ifLocalVar35_g2583 = ifLocalVar44_g2583;
				else
				ifLocalVar35_g2583 = ifLocalVar45_g2583;
				float4 break55_g2583 = ifLocalVar35_g2583;
				float3 appendResult56_g2583 = (float3(break55_g2583.r , break55_g2583.g , break55_g2583.b));
				float4 break2_g2584 = temp_output_1_0_g2583;
				float saferPower57_g2583 = max( ( ( break2_g2584.x + break2_g2584.y + break2_g2584.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g2583 = lerp( (temp_output_1_0_g2583).rgb , ( appendResult56_g2583 * pow( saferPower57_g2583 , max( ( break55_g2583.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g2583.z * _RecolorFade ));
				float4 appendResult30_g2583 = (float4(lerpResult26_g2583 , temp_output_1_0_g2583.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g2557 = appendResult30_g2583;
				#else
				float4 staticSwitch9_g2557 = staticSwitch20_g2557;
				#endif
				float4 break2_g2569 = staticSwitch9_g2557;
				float3 appendResult4_g2569 = (float3(break2_g2569.r , break2_g2569.g , break2_g2569.b));
				float3 hsvTorgb16_g2569 = RGBToHSV( appendResult4_g2569 );
				float clampResult18_g2569 = clamp( ( hsvTorgb16_g2569.y * _AdjustColorSaturation ) , 0.0 , 1.0 );
				float temp_output_9_0_g2570 = max( _AdjustColorContrast , 0.0 );
				float saferPower7_g2570 = max( ( hsvTorgb16_g2569.z + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2570 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb24_g2569 = HSVToRGB( float3(( hsvTorgb16_g2569.x + _AdjustColorHueShift ),clampResult18_g2569,( pow( saferPower7_g2570 , temp_output_9_0_g2570 ) * _AdjustColorBrightness )) );
				float3 lerpResult9_g2569 = lerp( appendResult4_g2569 , hsvTorgb24_g2569 , _AdjustColorFade);
				float4 appendResult3_g2569 = (float4(lerpResult9_g2569 , break2_g2569.a));
				#ifdef _ENABLEADJUSTCOLOR_ON
				float4 staticSwitch10_g2557 = appendResult3_g2569;
				#else
				float4 staticSwitch10_g2557 = staticSwitch9_g2557;
				#endif
				float4 temp_output_1_0_g2577 = staticSwitch10_g2557;
				float4 break2_g2579 = temp_output_1_0_g2577;
				float temp_output_9_0_g2580 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g2580 = max( ( ( ( break2_g2579.x + break2_g2579.y + break2_g2579.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2580 ) , 0.0 ) ) ) , 0.0001 );
				float2 appendResult2_g2582 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2581 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g2581 = (WorldPosition).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g2581 = (IN.ase_texcoord3.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g2581 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2582 ) );
				float2 temp_output_19_0_g2577 = ifLocalVar2_g2581;
				float clampResult53_g2577 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g2577 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_19_0_g2577 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g2577 = lerp( (temp_output_1_0_g2577).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g2580 , temp_output_9_0_g2580 ) ) , ( _InkSpreadFade * clampResult53_g2577 ));
				float4 appendResult9_g2577 = (float4(lerpResult7_g2577 , (temp_output_1_0_g2577).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g2557 = appendResult9_g2577;
				#else
				float4 staticSwitch17_g2557 = staticSwitch10_g2557;
				#endif
				float4 temp_output_1_0_g2575 = staticSwitch17_g2557;
				float3 temp_output_34_0_g2575 = (temp_output_1_0_g2575).rgb;
				float mulTime31_g2575 = _TimeParameters.x * _ShiftHueSpeed;
				float3 hsvTorgb15_g2575 = RGBToHSV( temp_output_34_0_g2575 );
				float3 hsvTorgb19_g2575 = HSVToRGB( float3(( mulTime31_g2575 + hsvTorgb15_g2575.x ),hsvTorgb15_g2575.y,hsvTorgb15_g2575.z) );
				float2 uv_ShiftHueShaderMask = IN.ase_texcoord2.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g2576 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g2575 = lerp( temp_output_34_0_g2575 , hsvTorgb19_g2575 , ( _ShiftHueFade * ( tex2DNode3_g2576.r * tex2DNode3_g2576.a ) ));
				float4 appendResult6_g2575 = (float4(lerpResult33_g2575 , temp_output_1_0_g2575.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g2557 = appendResult6_g2575;
				#else
				float4 staticSwitch19_g2557 = staticSwitch17_g2557;
				#endif
				float mulTime28_g2571 = _TimeParameters.x * _AddHueSpeed;
				float3 hsvTorgb3_g2572 = HSVToRGB( float3(mulTime28_g2571,1.0,1.0) );
				float3 hsvTorgb15_g2571 = RGBToHSV( hsvTorgb3_g2572 );
				float3 hsvTorgb19_g2571 = HSVToRGB( float3(hsvTorgb15_g2571.x,_AddHueSaturation,( hsvTorgb15_g2571.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g2571 = staticSwitch19_g2557;
				float4 break2_g2573 = temp_output_1_0_g2571;
				float saferPower27_g2571 = max( ( ( break2_g2573.x + break2_g2573.y + break2_g2573.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.ase_texcoord2.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g2574 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g2571 = (float4(( ( hsvTorgb19_g2571 * pow( saferPower27_g2571 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g2574.r * tex2DNode3_g2574.a ) ) ) + (temp_output_1_0_g2571).rgb ) , temp_output_1_0_g2571.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g2557 = appendResult6_g2571;
				#else
				float4 staticSwitch23_g2557 = staticSwitch19_g2557;
				#endif
				float4 temp_output_1_0_g2562 = staticSwitch23_g2557;
				float4 break2_g2565 = temp_output_1_0_g2562;
				float temp_output_9_0_g2564 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g2564 = max( ( ( ( break2_g2565.x + break2_g2565.y + break2_g2565.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2564 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.ase_texcoord2.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g2563 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float mulTime15_g2562 = _TimeParameters.x * _SineGlowFrequency;
				float4 appendResult21_g2562 = (float4(( (temp_output_1_0_g2562).rgb + ( pow( saferPower7_g2564 , temp_output_9_0_g2564 ) * ( _SineGlowFade * ( tex2DNode3_g2563.r * tex2DNode3_g2563.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( mulTime15_g2562 ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g2562.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g2557 = appendResult21_g2562;
				#else
				float4 staticSwitch28_g2557 = staticSwitch23_g2557;
				#endif
				float4 temp_output_15_0_g2566 = staticSwitch28_g2557;
				float2 temp_output_1_0_g2557 = lerpResult130;
				float2 temp_output_7_0_g2566 = temp_output_1_0_g2557;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g2566 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g2566 ) * _InnerOutlineNoiseScale ) ).r - 0.25 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g2566 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2566 = ( staticSwitch169_g2566 + temp_output_7_0_g2566 );
				float2 appendResult2_g2568 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2566 = ( 100.0 / appendResult2_g2568 );
				float temp_output_161_0_g2566 = (temp_output_15_0_g2566).a;
				float temp_output_151_0_g2566 = ( ( _InnerOutlineColor.a * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2566 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) ) * temp_output_161_0_g2566 ) * ( _InnerOutlineFade * min( ( _InnerOutlineWidth * 100.0 ) , 1.0 ) ) );
				float4 appendResult84_g2566 = (float4((_InnerOutlineColor).rgb , temp_output_151_0_g2566));
				float4 lerpResult43_g2566 = lerp( temp_output_15_0_g2566 , appendResult84_g2566 , temp_output_151_0_g2566);
				float4 appendResult162_g2566 = (float4((lerpResult43_g2566).xyz , temp_output_161_0_g2566));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g2557 = appendResult162_g2566;
				#else
				float4 staticSwitch12_g2557 = staticSwitch28_g2557;
				#endif
				float4 temp_output_15_0_g2585 = staticSwitch12_g2557;
				float temp_output_31_0_g2585 = (temp_output_15_0_g2585).a;
				float2 temp_output_7_0_g2585 = temp_output_1_0_g2557;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g2585 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g2585 ) * _OuterOutlineNoiseScale ) ).r - 0.25 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g2585 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2585 = ( staticSwitch157_g2585 + temp_output_7_0_g2585 );
				float2 appendResult2_g2587 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2585 = ( 100.0 / appendResult2_g2587 );
				float temp_output_83_0_g2585 = ( _OuterOutlineColor.a * min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2585 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) * 3.0 ) , 1.0 ) );
				float lerpResult152_g2585 = lerp( temp_output_31_0_g2585 , temp_output_83_0_g2585 , ( temp_output_83_0_g2585 * _OuterOutlineFade ));
				float4 appendResult84_g2585 = (float4((_OuterOutlineColor).rgb , lerpResult152_g2585));
				float4 lerpResult43_g2585 = lerp( appendResult84_g2585 , temp_output_15_0_g2585 , ( 1.0 - ( min( ( _OuterOutlineFade * 10.0 ) , 1.0 ) * ( 1.0 - temp_output_31_0_g2585 ) ) ));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g2557 = lerpResult43_g2585;
				#else
				float4 staticSwitch13_g2557 = staticSwitch12_g2557;
				#endif
				float4 temp_output_108_0 = staticSwitch13_g2557;
				float4 temp_output_1_0_g2591 = temp_output_108_0;
				float4 break2_g2592 = temp_output_1_0_g2591;
				float temp_output_9_0_g2593 = max( _HologramContrast , 0.0 );
				float saferPower7_g2593 = max( ( ( ( break2_g2592.x + break2_g2592.y + break2_g2592.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2593 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g2591 = (float4(( (_HologramTint).rgb * pow( saferPower7_g2593 , temp_output_9_0_g2593 ) ) , ( max( pow( abs( sin( ( ( ( ( _TimeParameters.x * _HologramLineSpeed ) + WorldPosition.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g2591.a )));
				float4 lerpResult37_g2591 = lerp( temp_output_1_0_g2591 , appendResult22_g2591 , _HologramFade);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g2591;
				#else
				float4 staticSwitch56 = temp_output_108_0;
				#endif
				float4 temp_output_1_0_g2594 = staticSwitch56;
				float4 break2_g2596 = temp_output_1_0_g2594;
				float mulTime14_g2594 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g2597 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g2594 ),1.0,1.0) );
				float3 lerpResult23_g2594 = lerp( (temp_output_1_0_g2594).rgb , ( ( ( break2_g2596.x + break2_g2596.y + break2_g2596.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g2597 ) , temp_output_102_15);
				float4 appendResult27_g2594 = (float4(lerpResult23_g2594 , temp_output_1_0_g2594.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g2594;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g2598 = staticSwitch57;
				float4 temp_output_1_0_g2634 = temp_output_3_0_g2598;
				float2 appendResult2_g2639 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2638 = 0;
				if( _CamouflageSpace > 1.0 )
				ifLocalVar2_g2638 = (WorldPosition).xy;
				else if( _CamouflageSpace == 1.0 )
				ifLocalVar2_g2638 = (IN.ase_texcoord3.xyz).xy;
				else if( _CamouflageSpace < 1.0 )
				ifLocalVar2_g2638 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2639 ) );
				float2 temp_output_42_0_g2634 = ifLocalVar2_g2638;
				float clampResult52_g2634 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g2634 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g2634 ) , clampResult52_g2634);
				float clampResult65_g2634 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g2634 = lerp( lerpResult55_g2634 , ( _CamouflageColorB * clampResult65_g2634 ) , clampResult65_g2634);
				float4 break2_g2635 = temp_output_1_0_g2634;
				float temp_output_9_0_g2642 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g2642 = max( ( ( ( break2_g2635.x + break2_g2635.y + break2_g2635.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2642 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.ase_texcoord2.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g2637 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g2634 = lerp( (temp_output_1_0_g2634).rgb , ( (lerpResult68_g2634).rgb * pow( saferPower7_g2642 , temp_output_9_0_g2642 ) ) , ( _CamouflageFade * ( tex2DNode3_g2637.r * tex2DNode3_g2637.a ) ));
				float4 appendResult7_g2634 = (float4(lerpResult4_g2634 , temp_output_1_0_g2634.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g2598 = appendResult7_g2634;
				#else
				float4 staticSwitch26_g2598 = temp_output_3_0_g2598;
				#endif
				float4 temp_output_1_0_g2626 = staticSwitch26_g2598;
				float2 appendResult2_g2633 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2632 = 0;
				if( _MetalSpace > 1.0 )
				ifLocalVar2_g2632 = (WorldPosition).xy;
				else if( _MetalSpace == 1.0 )
				ifLocalVar2_g2632 = (IN.ase_texcoord3.xyz).xy;
				else if( _MetalSpace < 1.0 )
				ifLocalVar2_g2632 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2633 ) );
				float2 temp_output_16_0_g2626 = ifLocalVar2_g2632;
				float4 break2_g2627 = temp_output_1_0_g2626;
				float temp_output_5_0_g2626 = ( ( break2_g2627.x + break2_g2627.y + break2_g2627.z ) / 3.0 );
				float temp_output_9_0_g2630 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g2630 = max( ( temp_output_5_0_g2626 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2630 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g2626 = max( temp_output_5_0_g2626 , 0.0001 );
				float2 uv_MetalShaderMask = IN.ase_texcoord2.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g2631 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g2626 = lerp( temp_output_1_0_g2626 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _MetalNoiseDistortionSpeed ) + temp_output_16_0_g2626 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( _TimeParameters.x * _MetalNoiseSpeed ) + temp_output_16_0_g2626 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g2630 , temp_output_9_0_g2630 ) ) + ( pow( saferPower2_g2626 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g2631.r * tex2DNode3_g2631.a ) ));
				float4 appendResult8_g2626 = (float4((lerpResult45_g2626).rgb , (temp_output_1_0_g2626).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g2598 = appendResult8_g2626;
				#else
				float4 staticSwitch28_g2598 = staticSwitch26_g2598;
				#endif
				float4 temp_output_1_0_g2618 = staticSwitch28_g2598;
				float4 break2_g2621 = temp_output_1_0_g2618;
				float temp_output_7_0_g2618 = ( ( break2_g2621.x + break2_g2621.y + break2_g2621.z ) / 3.0 );
				float temp_output_9_0_g2625 = max( _FrozenContrast , 0.0 );
				float saferPower7_g2625 = max( ( temp_output_7_0_g2618 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2625 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float2 appendResult2_g2624 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2623 = 0;
				if( _FrozenSpace > 1.0 )
				ifLocalVar2_g2623 = (WorldPosition).xy;
				else if( _FrozenSpace == 1.0 )
				ifLocalVar2_g2623 = (IN.ase_texcoord3.xyz).xy;
				else if( _FrozenSpace < 1.0 )
				ifLocalVar2_g2623 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2624 ) );
				float2 temp_output_3_0_g2618 = ifLocalVar2_g2623;
				float saferPower42_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float3 lerpResult57_g2618 = lerp( (temp_output_1_0_g2618).rgb , ( ( pow( saferPower7_g2625 , temp_output_9_0_g2625 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g2618 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_3_0_g2618 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FrozenHighlightDistortionSpeed ) + temp_output_3_0_g2618 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( _TimeParameters.x * _FrozenHighlightSpeed ) + temp_output_3_0_g2618 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g2618 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g2618 = (float4(lerpResult57_g2618 , temp_output_1_0_g2618.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g2598 = appendResult26_g2618;
				#else
				float4 staticSwitch29_g2598 = staticSwitch28_g2598;
				#endif
				float4 temp_output_1_0_g2611 = staticSwitch29_g2598;
				float3 temp_output_28_0_g2611 = (temp_output_1_0_g2611).rgb;
				float4 break2_g2612 = float4( temp_output_28_0_g2611 , 0.0 );
				float saferPower21_g2611 = max( ( ( break2_g2612.x + break2_g2612.y + break2_g2612.z ) / 3.0 ) , 0.0001 );
				float2 appendResult2_g2616 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2615 = 0;
				if( (int)_BurnSpace > 1.0 )
				ifLocalVar2_g2615 = (WorldPosition).xy;
				else if( (int)_BurnSpace == 1.0 )
				ifLocalVar2_g2615 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_BurnSpace < 1.0 )
				ifLocalVar2_g2615 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2616 ) );
				float2 temp_output_3_0_g2611 = ifLocalVar2_g2615;
				float clampResult68_g2611 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_3_0_g2611 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g2611 = ( ( ( _BurnRadius - distance( temp_output_3_0_g2611 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g2611 = clamp( temp_output_15_0_g2611 , 0.0 , 1.0 );
				float3 lerpResult29_g2611 = lerp( temp_output_28_0_g2611 , ( pow( saferPower21_g2611 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g2611 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g2611);
				float3 lerpResult40_g2611 = lerp( temp_output_28_0_g2611 , ( lerpResult29_g2611 + ( ( step( temp_output_15_0_g2611 , 1.0 ) * step( 0.0 , temp_output_15_0_g2611 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g2611 = (float4(lerpResult40_g2611 , temp_output_1_0_g2611.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g2598 = appendResult43_g2611;
				#else
				float4 staticSwitch32_g2598 = staticSwitch29_g2598;
				#endif
				float2 appendResult2_g2610 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2609 = 0;
				if( (int)_RainbowSpace > 1.0 )
				ifLocalVar2_g2609 = (WorldPosition).xy;
				else if( (int)_RainbowSpace == 1.0 )
				ifLocalVar2_g2609 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_RainbowSpace < 1.0 )
				ifLocalVar2_g2609 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2610 ) );
				float2 temp_output_3_0_g2604 = ifLocalVar2_g2609;
				float mulTime14_g2604 = _TimeParameters.x * _RainbowSpeed;
				float3 hsvTorgb3_g2607 = HSVToRGB( float3(( ( ( distance( temp_output_3_0_g2604 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2604 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + mulTime14_g2604 ),1.0,1.0) );
				float3 hsvTorgb36_g2604 = RGBToHSV( hsvTorgb3_g2607 );
				float3 hsvTorgb37_g2604 = HSVToRGB( float3(hsvTorgb36_g2604.x,_RainbowSaturation,( hsvTorgb36_g2604.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g2604 = staticSwitch32_g2598;
				float4 break2_g2606 = temp_output_1_0_g2604;
				float saferPower24_g2604 = max( ( ( break2_g2606.x + break2_g2606.y + break2_g2606.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.ase_texcoord2.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g2605 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g2604 = (float4(( ( hsvTorgb37_g2604 * pow( saferPower24_g2604 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g2605.r * tex2DNode3_g2605.a ) ) ) + (temp_output_1_0_g2604).rgb ) , temp_output_1_0_g2604.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g2598 = appendResult29_g2604;
				#else
				float4 staticSwitch34_g2598 = staticSwitch32_g2598;
				#endif
				float4 temp_output_1_0_g2599 = staticSwitch34_g2598;
				float4 break2_g2600 = temp_output_1_0_g2599;
				float saferPower83_g2599 = max( ( ( break2_g2600.x + break2_g2600.y + break2_g2600.z ) / 3.0 ) , 0.0001 );
				float mulTime86_g2599 = _TimeParameters.x * _ShineSpeed;
				float2 appendResult2_g2602 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2601 = 0;
				if( _ShineSpace > 1.0 )
				ifLocalVar2_g2601 = (WorldPosition).xy;
				else if( _ShineSpace == 1.0 )
				ifLocalVar2_g2601 = (IN.ase_texcoord3.xyz).xy;
				else if( _ShineSpace < 1.0 )
				ifLocalVar2_g2601 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2602 ) );
				float3 rotatedValue69_g2599 = RotateAroundAxis( float3( 0,0,0 ), float3( ( mulTime86_g2599 + ( _ShineScale * ifLocalVar2_g2601 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g2599 = rotatedValue69_g2599;
				float clampResult80_g2599 = clamp( ( ( ( sin( ( ( break67_g2599.x + break67_g2599.y ) * 10.0 ) ) + _ShineDensity ) * ( 2.0 - _ShineDensity ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.ase_texcoord2.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g2603 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g2599 = (float4(( (temp_output_1_0_g2599).rgb + ( ( pow( saferPower83_g2599 , max( _ShineContrast , 0.001 ) ) * (_ShineColor).rgb ) * clampResult80_g2599 * ( _ShineFade * ( tex2DNode3_g2603.r * tex2DNode3_g2603.a ) ) ) ) , (temp_output_1_0_g2599).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g2598 = appendResult8_g2599;
				#else
				float4 staticSwitch36_g2598 = staticSwitch34_g2598;
				#endif
				float2 appendResult2_g2646 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2645 = 0;
				if( (int)_PoisonSpace > 1.0 )
				ifLocalVar2_g2645 = (WorldPosition).xy;
				else if( (int)_PoisonSpace == 1.0 )
				ifLocalVar2_g2645 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_PoisonSpace < 1.0 )
				ifLocalVar2_g2645 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2646 ) );
				float mulTime15_g2643 = _TimeParameters.x * _PoisonShiftSpeed;
				float saferPower19_g2643 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _PoisonNoiseSpeed ) + ifLocalVar2_g2645 ) * _PoisonNoiseScale ) ).r + mulTime15_g2643 ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g2643 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g2643 = staticSwitch36_g2598;
				float3 temp_output_28_0_g2643 = (temp_output_1_0_g2643).rgb;
				float4 break2_g2647 = float4( temp_output_28_0_g2643 , 0.0 );
				float3 lerpResult32_g2643 = lerp( temp_output_28_0_g2643 , ( temp_output_24_0_g2643 * ( ( break2_g2647.x + break2_g2647.y + break2_g2647.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g2643 = (float4(( ( max( pow( saferPower19_g2643 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g2643 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g2643 ) , temp_output_1_0_g2643.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g2598 = appendResult27_g2643;
				#else
				float4 staticSwitch39_g2598 = staticSwitch36_g2598;
				#endif
				float4 temp_output_109_0 = staticSwitch39_g2598;
				float4 break4_g2648 = temp_output_109_0;
				float4 appendResult5_g2648 = (float4(break4_g2648.r , break4_g2648.g , break4_g2648.b , ( break4_g2648.a * _FullDistortionFade )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g2648;
				#else
				float4 staticSwitch77 = temp_output_109_0;
				#endif
				float4 break4_g2649 = staticSwitch77;
				float4 appendResult5_g2649 = (float4(break4_g2649.r , break4_g2649.g , break4_g2649.b , ( break4_g2649.a * (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g2649;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g2650 = staticSwitch75;
				float4 temp_output_1_0_g2651 = temp_output_1_0_g2650;
				float temp_output_53_0_g2651 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 appendResult2_g2654 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2653 = 0;
				if( _FullAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2653 = (WorldPosition).xy;
				else if( _FullAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2653 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2653 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2654 ) );
				float clampResult17_g2651 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g2651 ) ) - tex2D( _UberNoiseTexture, ( ifLocalVar2_g2653 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g2651 ) , 0.0 , 1.0 );
				float4 appendResult3_g2651 = (float4((temp_output_1_0_g2651).rgb , ( temp_output_1_0_g2651.a * clampResult17_g2651 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g2650 = appendResult3_g2651;
				#else
				float4 staticSwitch3_g2650 = temp_output_1_0_g2650;
				#endif
				float2 appendResult2_g2665 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2664 = 0;
				if( _FullGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2664 = (WorldPosition).xy;
				else if( _FullGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2664 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2664 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2665 ) );
				float temp_output_5_0_g2663 = tex2D( _UberNoiseTexture, ( ifLocalVar2_g2664 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g2663 = step( temp_output_5_0_g2663 , _FullGlowDissolveFade );
				float temp_output_53_0_g2663 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g2663 = staticSwitch3_g2650;
				float4 appendResult3_g2663 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g2663 - step( temp_output_5_0_g2663 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g2663 ) ) - temp_output_53_0_g2663 ) ) ) ) + (temp_output_1_0_g2663).rgb ) , ( temp_output_1_0_g2663.a * temp_output_61_0_g2663 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g2650 = appendResult3_g2663;
				#else
				float4 staticSwitch5_g2650 = staticSwitch3_g2650;
				#endif
				float4 temp_output_1_0_g2659 = staticSwitch5_g2650;
				float2 appendResult2_g2662 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2661 = 0;
				if( _SourceAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2661 = (WorldPosition).xy;
				else if( _SourceAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2661 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2661 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2662 ) );
				float2 temp_output_7_0_g2659 = ifLocalVar2_g2661;
				float clampResult17_g2659 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_7_0_g2659 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2659 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2659 = (float4((temp_output_1_0_g2659).rgb , ( temp_output_1_0_g2659.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g2659 ) ):( clampResult17_g2659 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g2650 = appendResult3_g2659;
				#else
				float4 staticSwitch8_g2650 = staticSwitch5_g2650;
				#endif
				float2 appendResult2_g2669 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2668 = 0;
				if( _SourceGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2668 = (WorldPosition).xy;
				else if( _SourceGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2668 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2668 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2669 ) );
				float2 temp_output_7_0_g2667 = ifLocalVar2_g2668;
				float temp_output_65_0_g2667 = ( distance( _SourceGlowDissolvePosition , temp_output_7_0_g2667 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2667 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g2667 = step( temp_output_65_0_g2667 , _SourceGlowDissolveFade );
				float temp_output_76_0_g2667 = step( temp_output_65_0_g2667 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g2667 = staticSwitch8_g2650;
				float4 appendResult3_g2667 = (float4(( ( max( ( temp_output_75_0_g2667 - temp_output_76_0_g2667 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g2667).rgb ) , ( temp_output_1_0_g2667.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g2667 ) ):( temp_output_75_0_g2667 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g2650 = appendResult3_g2667;
				#else
				float4 staticSwitch9_g2650 = staticSwitch8_g2650;
				#endif
				float4 temp_output_1_0_g2675 = staticSwitch9_g2650;
				float2 appendResult2_g2678 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2677 = 0;
				if( _DirectionalAlphaFadeSpace > 1.0 )
				ifLocalVar2_g2677 = (WorldPosition).xy;
				else if( _DirectionalAlphaFadeSpace == 1.0 )
				ifLocalVar2_g2677 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalAlphaFadeSpace < 1.0 )
				ifLocalVar2_g2677 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2678 ) );
				float2 temp_output_7_0_g2675 = ifLocalVar2_g2677;
				float3 rotatedValue136_g2675 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2675 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2675 = rotatedValue136_g2675;
				float clampResult154_g2675 = clamp( ( ( break130_g2675.x + break130_g2675.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2675 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2675 = (float4((temp_output_1_0_g2675).rgb , ( temp_output_1_0_g2675.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g2675 ) ):( clampResult154_g2675 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g2650 = appendResult3_g2675;
				#else
				float4 staticSwitch11_g2650 = staticSwitch9_g2650;
				#endif
				float2 appendResult2_g2674 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2673 = 0;
				if( _DirectionalGlowFadeSpace > 1.0 )
				ifLocalVar2_g2673 = (WorldPosition).xy;
				else if( _DirectionalGlowFadeSpace == 1.0 )
				ifLocalVar2_g2673 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalGlowFadeSpace < 1.0 )
				ifLocalVar2_g2673 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2674 ) );
				float2 temp_output_7_0_g2671 = ifLocalVar2_g2673;
				float3 rotatedValue136_g2671 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2671 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2671 = rotatedValue136_g2671;
				float temp_output_168_0_g2671 = max( ( ( break130_g2671.x + break130_g2671.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2671 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g2671 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) );
				float4 temp_output_1_0_g2671 = staticSwitch11_g2650;
				float clampResult154_g2671 = clamp( temp_output_161_0_g2671 , 0.0 , 1.0 );
				float4 appendResult3_g2671 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g2671 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) ) ) ) + (temp_output_1_0_g2671).rgb ) , ( temp_output_1_0_g2671.a * clampResult154_g2671 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g2650 = appendResult3_g2671;
				#else
				float4 staticSwitch15_g2650 = staticSwitch11_g2650;
				#endif
				float4 temp_output_1_0_g2655 = staticSwitch15_g2650;
				float2 appendResult2_g2658 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2657 = 0;
				if( _HalftoneSpace > 1.0 )
				ifLocalVar2_g2657 = (WorldPosition).xy;
				else if( _HalftoneSpace == 1.0 )
				ifLocalVar2_g2657 = (IN.ase_texcoord3.xyz).xy;
				else if( _HalftoneSpace < 1.0 )
				ifLocalVar2_g2657 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2658 ) );
				float2 temp_output_7_0_g2655 = ifLocalVar2_g2657;
				float temp_output_121_0_g2655 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_7_0_g2655 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g2656 = (float2(temp_output_121_0_g2655 , temp_output_121_0_g2655));
				float temp_output_17_0_g2656 = length( ( (( ( abs( temp_output_7_0_g2655 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g2656 ) );
				float clampResult17_g2655 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g2656 ) / fwidth( temp_output_17_0_g2656 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2655 = (float4((temp_output_1_0_g2655).rgb , ( temp_output_1_0_g2655.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g2655 ) ):( clampResult17_g2655 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g2650 = appendResult3_g2655;
				#else
				float4 staticSwitch13_g2650 = staticSwitch15_g2650;
				#endif
				float4 temp_output_1_0_g2698 = staticSwitch13_g2650;
				float4 break2_g2700 = temp_output_1_0_g2698;
				float temp_output_9_0_g2699 = max( _AddColorContrast , 0.0 );
				float saferPower7_g2699 = max( ( ( ( break2_g2700.x + break2_g2700.y + break2_g2700.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2699 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g2698 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g2699 , temp_output_9_0_g2699 ) * _AddColorFade ) + (temp_output_1_0_g2698).rgb ) , temp_output_1_0_g2698.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g2697 = appendResult6_g2698;
				#else
				float4 staticSwitch5_g2697 = staticSwitch13_g2650;
				#endif
				float4 temp_output_1_0_g2701 = staticSwitch5_g2697;
				float saferPower11_g2701 = max( ( 1.0 - temp_output_1_0_g2701.a ) , 0.0001 );
				float3 lerpResult4_g2701 = lerp( (temp_output_1_0_g2701).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g2701 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g2701.a ) ));
				float4 appendResult13_g2701 = (float4(lerpResult4_g2701 , temp_output_1_0_g2701.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g2697 = appendResult13_g2701;
				#else
				float4 staticSwitch11_g2697 = staticSwitch5_g2697;
				#endif
				float4 temp_output_1_0_g2702 = staticSwitch11_g2697;
				float4 break2_g2703 = temp_output_1_0_g2702;
				float temp_output_9_0_g2704 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g2704 = max( ( ( ( break2_g2703.x + break2_g2703.y + break2_g2703.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2704 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g2702 = lerp( (temp_output_1_0_g2702).rgb , ( pow( saferPower7_g2704 , temp_output_9_0_g2704 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g2702 = (float4(lerpResult7_g2702 , (temp_output_1_0_g2702).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g2697 = appendResult9_g2702;
				#else
				float4 staticSwitch7_g2697 = staticSwitch11_g2697;
				#endif
				float4 lerpResult125 = lerp( tex2DNode31 , staticSwitch7_g2697 , fullFade123);
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g2548 = _White;
				#else
				float4 staticSwitch8_g2548 = IN.ase_color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g2548 = _White;
				#else
				float4 staticSwitch9_g2548 = staticSwitch8_g2548;
				#endif
				float4 lerpResult126 = lerp( IN.ase_color , staticSwitch9_g2548 , fullFade123);
				float4 temp_output_119_0 = ( lerpResult125 * lerpResult126 );
				
				float Alpha = temp_output_119_0.a;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				return 0;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70403

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _ENABLEVIBRATE_ON
			#pragma shader_feature_local _ENABLESINEMOVE_ON
			#pragma shader_feature_local _ENABLESQUISH_ON
			#pragma shader_feature_local _ENABLEGLITCH_ON
			#pragma shader_feature_local _ENABLEHOLOGRAM_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALDISTORTION_ON
			#pragma shader_feature_local _ENABLEFULLDISTORTION_ON
			#pragma shader_feature_local _ENABLEUVSCROLL_ON
			#pragma shader_feature_local _ENABLEUVROTATE_ON
			#pragma shader_feature_local _ENABLESINEROTATE_ON
			#pragma shader_feature_local _ENABLESQUEEZE_ON
			#pragma shader_feature_local _ENABLEUVDISTORT_ON
			#pragma shader_feature_local _ENABLEPIXELATE_ON
			#pragma shader_feature_local _ENABLEWIND_ON
			#pragma shader_feature_local _ENABLESTRONGTINT_ON
			#pragma shader_feature_local _ENABLEALPHATINT_ON
			#pragma shader_feature_local _ENABLEADDCOLOR_ON
			#pragma shader_feature_local _ENABLEHALFTONE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALGLOWFADE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALALPHAFADE_ON
			#pragma shader_feature_local _ENABLESOURCEGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLESOURCEALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEPOISON_ON
			#pragma shader_feature_local _ENABLESHINE_ON
			#pragma shader_feature_local _ENABLERAINBOW_ON
			#pragma shader_feature_local _ENABLEBURN_ON
			#pragma shader_feature_local _ENABLEFROZEN_ON
			#pragma shader_feature_local _ENABLEMETAL_ON
			#pragma shader_feature_local _ENABLECAMOUFLAGE_ON
			#pragma shader_feature_local _ENABLEOUTEROUTLINE_ON
			#pragma shader_feature_local _ENABLEINNEROUTLINE_ON
			#pragma shader_feature_local _ENABLESINEGLOW_ON
			#pragma shader_feature_local _ENABLEADDHUE_ON
			#pragma shader_feature_local _ENABLESHIFTHUE_ON
			#pragma shader_feature_local _ENABLEINKSPREAD_ON
			#pragma shader_feature_local _ENABLEADJUSTCOLOR_ON
			#pragma shader_feature_local _ENABLERECOLOR_ON
			#pragma shader_feature_local _ENABLEBLACKTINT_ON
			#pragma shader_feature_local _ENABLESPLITTONING_ON
			#pragma shader_feature_local _ENABLECOLORREPLACE_ON
			#pragma shader_feature_local _ENABLEFLAME_ON
			#pragma shader_feature_local _ENABLECHECKERBOARD_ON
			#pragma shader_feature_local _ENABLECUSTOMFADE_ON
			#pragma shader_feature_local _ENABLESMOKE_ON
			#pragma shader_feature_local _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma shader_feature_local _OUTEROUTLINEDISTORTIONTOGGLE_ON


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _HologramTint;
			float4 _ShineColor;
			float4 _RecolorRedTint;
			float4 _RecolorYellowTint;
			float4 _RecolorGreenTint;
			float4 _RecolorCyanTint;
			float4 _RecolorBlueTint;
			float4 _RecolorPurpleTint;
			float4 _RainbowMask_ST;
			float4 _RecolorTintAreas_ST;
			float4 _ShineShaderMask_ST;
			float4 _SplitToningHighlightsColor;
			float4 _SplitToningShadowsColor;
			float4 _ColorReplaceTargetColor;
			float4 _ColorReplaceColor;
			float4 _PoisonColor;
			float4 _FullGlowDissolveEdgeColor;
			float4 _BlackTintColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _InkSpreadColor;
			float4 _BurnEdgeColor;
			float4 _MetalShaderMask_ST;
			float4 _MetalHighlightColor;
			float4 _FrozenTint;
			float4 _CamouflageShaderMask_ST;
			float4 _FrozenSnowColor;
			float4 _CamouflageColorB;
			float4 _CamouflageColorA;
			float4 _ShiftHueShaderMask_ST;
			float4 _CamouflageBaseColor;
			float4 _BurnInsideNoiseColor;
			float4 _OuterOutlineColor;
			float4 _InnerOutlineColor;
			float4 _BurnInsideColor;
			float4 _SineGlowColor;
			float4 _SineGlowShaderMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _FrozenHighlightColor;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _MetalColor;
			float4 _WindDistortionMask_ST;
			float4 _NormalMap_ST;
			float4 _MainTex_TexelSize;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _AlphaTintColor;
			float4 _AddColorColor;
			float4 _SmoothnessMap_ST;
			float2 _OuterOutlineDistortionIntensity;
			float2 _UVDistortSpeed;
			float2 _UVDistortNoiseScale;
			float2 _FlameNoiseScale;
			float2 _PoisonNoiseSpeed;
			float2 _BurnEdgeNoiseScale;
			float2 _FrozenHighlightScale;
			float2 _GlitchNoiseSpeed;
			float2 _UVDistortTo;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _SqueezeCenter;
			float2 _GlitchNoiseScale;
			float2 _FrozenHighlightDistortion;
			float2 _FrozenHighlightSpeed;
			float2 _UVDistortFrom;
			float2 _PoisonNoiseScale;
			float2 _OuterOutlineNoiseSpeed;
			float2 _HalftonePosition;
			float2 _BurnPosition;
			float2 _WindFromDistortion;
			float2 _RainbowCenter;
			float2 _RainbowNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _InkSpreadPosition;
			float2 _OuterOutlineNoiseScale;
			float2 _BurnInsideNoiseScale;
			float2 _WindToDistortion;
			float2 _InnerOutlineNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _WindDistortionSpeed;
			float2 _BurnSwirlNoiseScale;
			float2 _WindDistortionScale;
			float2 _FlameSpeed;
			float2 _InnerOutlineNoiseSpeed;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _FrozenHighlightDistortionScale;
			float2 _CamouflageAnimationSpeed;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _FullDistortionNoiseScale;
			float2 _CamouflageNoiseScaleB;
			float2 _SourceGlowDissolvePosition;
			float2 _SqueezeScale;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _MetalNoiseDistortionScale;
			float2 _SineMoveOffset;
			float2 _MetalNoiseDistortion;
			float2 _SineMoveFrequency;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _DirectionalDistortionDistortionScale;
			float2 _DirectionalDistortionNoiseScale;
			float2 _MetalNoiseDistortionSpeed;
			float2 _FullDistortionDistortion;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortion;
			float2 _SineRotatePivot;
			float2 _FullGlowDissolveNoiseScale;
			float2 _CustomFadeNoiseScale;
			float2 _CamouflageDistortionScale;
			float2 _CamouflageDistortionIntensity;
			float2 _CamouflageNoiseScaleA;
			float2 _FrozenSnowScale;
			float2 _MetalNoiseSpeed;
			float2 _SourceAlphaDissolvePosition;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _MetalNoiseScale;
			float2 _GlitchMaskScale;
			float2 _GlitchMaskSpeed;
			float2 _UVScrollSpeed;
			float2 _UVRotatePivot;
			float2 _DirectionalDistortionDistortion;
			float _NormalIntensity;
			float _AddColorFade;
			float _BurnRadius;
			float _AddColorContrast;
			float _FrozenSnowDensity;
			float _BurnSwirlFactor;
			float _AlphaTintPower;
			float _FrozenSnowContrast;
			float _BurnSpace;
			float _BurnInsideNoiseFactor;
			float _AlphaTintFade;
			float _BurnInsideContrast;
			float _FrozenFade;
			float _FrozenHighlightContrast;
			float _AlphaTintMinAlpha;
			int _FrozenSpace;
			float _StrongTintFade;
			float _StrongTintContrast;
			float _FrozenHighlightDensity;
			float _FrozenContrast;
			float _HalftoneFadeWidth;
			float _ShineRotation;
			float _BurnWidth;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			int _FullAlphaDissolveSpace;
			int _FullGlowDissolveSpace;
			float _FullGlowDissolveFade;
			float _FullGlowDissolveWidth;
			float _SourceAlphaDissolveInvert;
			float _SourceAlphaDissolveFade;
			int _SourceAlphaDissolveSpace;
			float _SourceAlphaDissolveNoiseFactor;
			float _SourceAlphaDissolveWidth;
			int _SourceGlowDissolveSpace;
			float _SourceGlowDissolveNoiseFactor;
			float _SourceGlowDissolveFade;
			float _SourceGlowDissolveWidth;
			float _SourceGlowDissolveInvert;
			float _DirectionalAlphaFadeInvert;
			float _DirectionalAlphaFadeRotation;
			int _DirectionalAlphaFadeSpace;
			float _DirectionalAlphaFadeFade;
			float _DirectionalAlphaFadeNoiseFactor;
			float _DirectionalAlphaFadeWidth;
			float _DirectionalGlowFadeFade;
			float _DirectionalGlowFadeInvert;
			float _PoisonNoiseBrightness;
			float _BurnEdgeNoiseFactor;
			float _PoisonFade;
			float _PoisonDensity;
			float _BurnFade;
			float _RainbowSpace;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineContrast;
			int _DirectionalGlowFadeSpace;
			float _ShineSpeed;
			float _HalftoneFade;
			float _HalftoneTiling;
			int _HalftoneSpace;
			float _ShineScale;
			int _ShineSpace;
			float _HalftoneInvert;
			float _ShineDensity;
			float _ShineSmoothness;
			float _ShineFade;
			float _DirectionalGlowFadeWidth;
			float _PoisonSpace;
			float _MetalFade;
			float _PoisonShiftSpeed;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeRotation;
			float _SquishStretch;
			float _MetalHighlightContrast;
			float _DirectionalDistortionRandomDirection;
			float _DirectionalDistortionInvert;
			float _DirectionalDistortionRotation;
			float _DirectionalDistortionFade;
			float _DirectionalDistortionNoiseFactor;
			float _DirectionalDistortionWidth;
			float _HologramDistortionSpeed;
			float _HologramDistortionDensity;
			float _HologramDistortionScale;
			float _HologramDistortionOffset;
			float _HologramFade;
			int _GlitchSpace;
			int _DirectionalDistortionSpace;
			float _GlitchMaskMin;
			float _SmokeVertexSeed;
			float _SmokeNoiseScale;
			float _SmokeNoiseFactor;
			float _SmokeSmoothness;
			float _SmokeDarkEdge;
			float _SmokeAlpha;
			float _CustomFadeNoiseFactor;
			float _CustomFadeSmoothness;
			float _CustomFadeAlpha;
			float _CheckerboardDarken;
			float _CheckerboardTiling;
			float _FlameNoiseHeightFactor;
			float _GlitchFade;
			int _FullDistortionSpace;
			float _FullDistortionFade;
			float _UVRotateScale;
			float _SquishFade;
			float _SquishFlip;
			float _SquishSquish;
			float _SineMoveFade;
			float _VibrateFrequency;
			float _VibrateOffset;
			float _VibrateFade;
			float _VibrateRotation;
			float _FullFade;
			float _WindRotationWindFactor;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _WindSquishWindFactor;
			float _WindDistortionWindFactor;
			float _PixelatePixelDensity;
			float _PixelateFade;
			int _UVDistortSpace;
			float _UVDistortFade;
			float _SqueezePower;
			float _SqueezeFade;
			float _SineRotateFrequency;
			float _SineRotateAngle;
			float _SineRotateFade;
			float _SineRotateScale;
			float _UVRotateSpeed;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _FlameBrightness;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _InnerOutlineWidth;
			float _InnerOutlineFade;
			float _OuterOutlineWidth;
			float _OuterOutlineFade;
			float _Metallic;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _HologramLineFrequency;
			float _HologramLineGap;
			float _HologramMinAlpha;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
			float _CamouflageDensityA;
			float _CamouflageAnimated;
			int _CamouflageSpace;
			float _CamouflageSmoothnessA;
			float _CamouflageDensityB;
			float _CamouflageSmoothnessB;
			float _CamouflageContrast;
			float _CamouflageFade;
			float _MetalHighlightDensity;
			int _MetalSpace;
			float _AddHueFade;
			float _MetalContrast;
			float _AddHueContrast;
			float _AddHueSaturation;
			float _ColorReplaceContrast;
			float _ColorReplaceHueTolerance;
			float _ColorReplaceSaturationTolerance;
			float _ColorReplaceBrightnessTolerance;
			float _ColorReplaceBias;
			float _ColorReplaceFade;
			float _SplitToningShift;
			float _SplitToningBalance;
			float _SplitToningContrast;
			float _SplitToningFade;
			float _BlackTintPower;
			float _BlackTintFade;
			float _RecolorFade;
			float _AdjustColorHueShift;
			float _AdjustColorSaturation;
			float _AdjustColorContrast;
			float _AdjustColorBrightness;
			float _AdjustColorFade;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			int _InkSpreadSpace;
			float _InkSpreadNoiseFactor;
			float _InkSpreadWidth;
			float _ShiftHueSpeed;
			float _ShiftHueFade;
			float _AddHueSpeed;
			float _AddHueBrightness;
			float _Smoothness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			float WindMinIntensity;
			float WindMaxIntensity;
			float2 WindNoiseSpeed;
			float2 WindNoiseScale;
			sampler2D _UberNoiseTexture;
			sampler2D _WindDistortionMask;
			sampler2D _UVDistortShaderMask;
			sampler2D _CustomFadeFadeMask;
			sampler2D _RecolorTintAreas;
			sampler2D _ShiftHueShaderMask;
			sampler2D _AddHueShaderMask;
			sampler2D _SineGlowShaderMask;
			sampler2D _CamouflageShaderMask;
			sampler2D _MetalShaderMask;
			sampler2D _RainbowMask;
			sampler2D _ShineShaderMask;


			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			//https://www.shadertoy.com/view/XdXGW8
			float2 GradientNoiseDir( float2 x )
			{
				const float2 k = float2( 0.3183099, 0.3678794 );
				x = x * k + k.yx;
				return -1.0 + 2.0 * frac( 16.0 * k * frac( x.x * x.y * ( x.x + x.y ) ) );
			}
			
			float GradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 i = floor( p );
				float2 f = frac( p );
				float2 u = f * f * ( 3.0 - 2.0 * f );
				return lerp( lerp( dot( GradientNoiseDir( i + float2( 0.0, 0.0 ) ), f - float2( 0.0, 0.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 0.0 ) ), f - float2( 1.0, 0.0 ) ), u.x ),
						lerp( dot( GradientNoiseDir( i + float2( 0.0, 1.0 ) ), f - float2( 0.0, 1.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 1.0 ) ), f - float2( 1.0, 1.0 ) ), u.x ), u.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord39 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g2705 = texCoord39;
				float2 appendResult72_g2705 = (float2(( _SquishStretch * ( break77_g2705.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g2705.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH_ON
				float2 staticSwitch96 = ( appendResult72_g2705 + float2( 0,0 ) );
				#else
				float2 staticSwitch96 = float2( 0,0 );
				#endif
				float2 temp_output_2_0_g2706 = staticSwitch96;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g2706 = ( ( sin( ( _TimeParameters.x * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g2706 );
				#else
				float2 staticSwitch4_g2706 = temp_output_2_0_g2706;
				#endif
				float mulTime27_g2708 = _TimeParameters.x * _VibrateFrequency;
				float3 rotatedValue21_g2708 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( _VibrateRotation * _TimeParameters.x ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g2706 = ( ( sin( mulTime27_g2708 ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g2708).xy ) + staticSwitch4_g2706 );
				#else
				float2 staticSwitch6_g2706 = staticSwitch4_g2706;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult121 = lerp( float2( 0,0 ) , staticSwitch6_g2706 , fullFade123);
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				o.ase_texcoord3 = v.vertex;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = float3( lerpResult121 ,  0.0 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 texCoord131 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord39 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g2502 = texCoord39;
				float4 transform62_g2503 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g2503 = GradientNoise(( ( (transform62_g2503).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g2503 = gradientNoise95_g2503*0.5 + 0.5;
				float lerpResult86_g2503 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g2503);
				float clampResult29_g2503 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g2503 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g2503 = temp_output_3_0_g2502;
				float temp_output_39_0_g2503 = ( temp_output_1_0_g2503.y + _WindFlip );
				float3 appendResult43_g2503 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g2503 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g2503 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g2503 )));
				float2 appendResult2_g2505 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2504 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g2504 = (WorldPosition).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g2504 = (IN.ase_texcoord3.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g2504 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2505 ) );
				float lerpResult78_g2503 = lerp( 1.0 , lerpResult86_g2503 , _WindDistortionWindFactor);
				float2 lerpResult75_g2503 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2504 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g2503 ));
				float2 uv_WindDistortionMask = IN.ase_texcoord2.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g2507 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g2503 = RotateAroundAxis( appendResult43_g2503, float3( ( appendResult27_g2503 + ( ( lerpResult75_g2503 * ( 1.0 * ( tex2DNode3_g2507.r * tex2DNode3_g2507.a ) ) ) + temp_output_1_0_g2503 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g2503 * temp_output_39_0_g2503 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g2502 = (rotatedValue19_g2503).xy;
				#else
				float2 staticSwitch4_g2502 = temp_output_3_0_g2502;
				#endif
				float2 temp_output_1_0_g2508 = staticSwitch4_g2502;
				float2 appendResult2_g2520 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_22_0_g2519 = ( float2( 1,1 ) / ( 100.0 / appendResult2_g2520 ) );
				float temp_output_25_0_g2519 = ( 1.0 / max( _PixelateFade , 0.0001 ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g2508 = ( ( ( round( ( temp_output_1_0_g2508 * _PixelatePixelDensity * temp_output_22_0_g2519 * temp_output_25_0_g2519 ) ) / _PixelatePixelDensity ) / temp_output_22_0_g2519 ) / temp_output_25_0_g2519 );
				#else
				float2 staticSwitch4_g2508 = temp_output_1_0_g2508;
				#endif
				float2 appendResult2_g2511 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2510 = 0;
				if( _UVDistortSpace > 1.0 )
				ifLocalVar2_g2510 = (WorldPosition).xy;
				else if( _UVDistortSpace == 1.0 )
				ifLocalVar2_g2510 = (IN.ase_texcoord3.xyz).xy;
				else if( _UVDistortSpace < 1.0 )
				ifLocalVar2_g2510 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2511 ) );
				float2 lerpResult21_g2509 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2510 + ( _UVDistortSpeed * _TimeParameters.x ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g2513 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.ase_texcoord2.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g2512 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g2508 = ( staticSwitch4_g2508 + ( lerpResult21_g2509 * ( 100.0 / appendResult2_g2513 ) * ( _UVDistortFade * ( tex2DNode3_g2512.r * tex2DNode3_g2512.a ) ) ) );
				#else
				float2 staticSwitch5_g2508 = staticSwitch4_g2508;
				#endif
				float2 temp_output_1_0_g2515 = staticSwitch5_g2508;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g2508 = ( temp_output_1_0_g2515 + ( ( temp_output_1_0_g2515 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g2515 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g2508 = staticSwitch5_g2508;
				#endif
				float mulTime43_g2516 = _TimeParameters.x * _SineRotateFrequency;
				float3 rotatedValue36_g2516 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g2508 ,  0.0 ), float3( 0,0,1 ), ( sin( mulTime43_g2516 ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g2508 = ( ( ( (rotatedValue36_g2516).xy - float2( 0.5,0.5 ) ) / max( _SineRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch9_g2508 = staticSwitch7_g2508;
				#endif
				float mulTime6_g2517 = _TimeParameters.x * _UVRotateSpeed;
				float3 rotatedValue8_g2517 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g2508 ,  0.0 ), float3( 0,0,1 ), ( mulTime6_g2517 * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g2508 = ( ( ( (rotatedValue8_g2517).xy - float2( 0.5,0.5 ) ) / max( _UVRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch16_g2508 = staticSwitch9_g2508;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g2508 = ( ( ( _UVScrollSpeed * _TimeParameters.x ) + staticSwitch16_g2508 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g2508 = staticSwitch16_g2508;
				#endif
				float2 appendResult2_g2525 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2524 = 0;
				if( _FullDistortionSpace > 1.0 )
				ifLocalVar2_g2524 = (WorldPosition).xy;
				else if( _FullDistortionSpace == 1.0 )
				ifLocalVar2_g2524 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullDistortionSpace < 1.0 )
				ifLocalVar2_g2524 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2525 ) );
				float2 temp_output_7_0_g2521 = ifLocalVar2_g2524;
				float2 appendResult189_g2521 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2521 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_7_0_g2521 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch14_g2508 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g2521 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch14_g2508;
				#endif
				float2 appendResult2_g2533 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2532 = 0;
				if( _DirectionalDistortionSpace > 1.0 )
				ifLocalVar2_g2532 = (WorldPosition).xy;
				else if( _DirectionalDistortionSpace == 1.0 )
				ifLocalVar2_g2532 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalDistortionSpace < 1.0 )
				ifLocalVar2_g2532 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2533 ) );
				float2 temp_output_7_0_g2530 = ifLocalVar2_g2532;
				float3 rotatedValue168_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2530 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2530 = rotatedValue136_g2530;
				float clampResult154_g2530 = clamp( ( ( break130_g2530.x + break130_g2530.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g2530).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float temp_output_8_0_g2536 = ( ( ( _TimeParameters.x * _HologramDistortionSpeed ) + WorldPosition.y ) / unity_OrthoParams.y );
				float2 temp_cast_7 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_8 = (_HologramDistortionDensity).xx;
				float clampResult75_g2536 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_7 * temp_cast_8 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_9 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_10 = (_HologramDistortionScale).xx;
				float2 appendResult2_g2537 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 appendResult44_g2536 = (float2(( ( ( clampResult75_g2536 * ( tex2D( _UberNoiseTexture, ( temp_cast_9 * temp_cast_10 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g2537 ).x ) * _HologramFade ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g2536 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 appendResult2_g2544 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2543 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g2543 = (WorldPosition).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g2543 = (IN.ase_texcoord3.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g2543 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2544 ) );
				float2 temp_output_3_0_g2542 = ifLocalVar2_g2543;
				float2 temp_output_102_0 = temp_output_3_0_g2542;
				float temp_output_102_15 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_3_0_g2542 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_102_15 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult130 = lerp( texCoord131 , staticSwitch62 , fullFade123);
				float4 tex2DNode31 = tex2D( _MainTex, lerpResult130 );
				float4 temp_output_1_0_g2548 = tex2DNode31;
				float4 temp_output_1_0_g2551 = temp_output_1_0_g2548;
				float2 temp_output_7_0_g2548 = lerpResult130;
				float2 temp_output_43_0_g2551 = temp_output_7_0_g2548;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g2551 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.ase_color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g2551 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.ase_color.a / 2.5 ) - distance( temp_output_43_0_g2551 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g2551 = lerp( ( (temp_output_1_0_g2551).rgb * (IN.ase_color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g2551 ) * _SmokeDarkEdge ));
				float4 appendResult31_g2551 = (float4(lerpResult34_g2551 , ( clampResult28_g2551 * _SmokeAlpha * temp_output_1_0_g2551.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g2548 = appendResult31_g2551;
				#else
				float4 staticSwitch2_g2548 = temp_output_1_0_g2548;
				#endif
				float4 temp_output_1_0_g2549 = staticSwitch2_g2548;
				float2 temp_output_57_0_g2549 = temp_output_7_0_g2548;
				float4 tex2DNode3_g2549 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g2549 );
				float clampResult37_g2549 = clamp( ( ( ( IN.ase_color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g2549.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g2549 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g2549 = (float4(( float4( (IN.ase_color).rgb , 0.0 ) * temp_output_1_0_g2549 ).rgb , ( temp_output_1_0_g2549.a * pow( clampResult37_g2549 , ( _CustomFadeSmoothness / max( tex2DNode3_g2549.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g2548 = appendResult13_g2549;
				#else
				float4 staticSwitch3_g2548 = staticSwitch2_g2548;
				#endif
				float4 temp_output_1_0_g2553 = staticSwitch3_g2548;
				float4 temp_output_1_0_g2554 = temp_output_1_0_g2553;
				float2 appendResult4_g2554 = (float2(WorldPosition.x , WorldPosition.y));
				float2 temp_output_44_0_g2554 = ( appendResult4_g2554 * _CheckerboardTiling * 0.5 );
				float2 break12_g2554 = step( ( ceil( temp_output_44_0_g2554 ) - temp_output_44_0_g2554 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g2554.x + break12_g2554.y ) ) )).xxx;
				float4 appendResult42_g2554 = (float4(( (temp_output_1_0_g2554).rgb - temp_cast_16 ) , temp_output_1_0_g2554.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g2553 = appendResult42_g2554;
				#else
				float4 staticSwitch2_g2553 = temp_output_1_0_g2553;
				#endif
				float2 temp_output_75_0_g2555 = lerpResult130;
				float saferPower57_g2555 = max( max( ( temp_output_75_0_g2555.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g2555 = max( _FlameRadius , 0.01 );
				float clampResult70_g2555 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FlameSpeed ) + temp_output_75_0_g2555 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g2555 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g2555 - distance( temp_output_75_0_g2555 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g2555 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g2555 = ( clampResult70_g2555 * _FlameBrightness );
				float4 appendResult31_g2555 = (float4(temp_output_63_0_g2555 , temp_output_63_0_g2555 , temp_output_63_0_g2555 , clampResult70_g2555));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g2553 = ( appendResult31_g2555 * staticSwitch2_g2553 );
				#else
				float4 staticSwitch6_g2553 = staticSwitch2_g2553;
				#endif
				float4 temp_output_3_0_g2557 = staticSwitch6_g2553;
				float4 temp_output_1_0_g2558 = temp_output_3_0_g2557;
				float3 temp_output_2_0_g2558 = (temp_output_1_0_g2558).rgb;
				float4 break2_g2559 = float4( temp_output_2_0_g2558 , 0.0 );
				float temp_output_9_0_g2560 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g2560 = max( ( ( ( break2_g2559.x + break2_g2559.y + break2_g2559.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2560 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g2558 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g2558 = RGBToHSV( temp_output_2_0_g2558 );
				float clampResult35_g2558 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g2558.x , hsvTorgb5_g2558.x ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + 1.0 ) ) ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.y , hsvTorgb5_g2558.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.z , hsvTorgb5_g2558.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g2558 = max( ( clampResult35_g2558 * clampResult30_g2558 * clampResult40_g2558 ) , 0.0001 );
				float3 lerpResult23_g2558 = lerp( temp_output_2_0_g2558 , ( pow( saferPower7_g2560 , temp_output_9_0_g2560 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g2558 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g2558 = (float4(lerpResult23_g2558 , temp_output_1_0_g2558.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g2557 = appendResult4_g2558;
				#else
				float4 staticSwitch29_g2557 = temp_output_3_0_g2557;
				#endif
				float4 temp_output_1_0_g2588 = staticSwitch29_g2557;
				float4 break2_g2589 = temp_output_1_0_g2588;
				float temp_output_3_0_g2588 = ( ( break2_g2589.x + break2_g2589.y + break2_g2589.z ) / 3.0 );
				float clampResult25_g2588 = clamp( ( ( ( ( temp_output_3_0_g2588 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g2588 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g2588);
				float temp_output_9_0_g2590 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g2590 = max( ( temp_output_3_0_g2588 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2590 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g2588 = lerp( (temp_output_1_0_g2588).rgb , ( lerpResult6_g2588 * pow( saferPower7_g2590 , temp_output_9_0_g2590 ) ) , _SplitToningFade);
				float4 appendResult18_g2588 = (float4(lerpResult11_g2588 , temp_output_1_0_g2588.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g2557 = appendResult18_g2588;
				#else
				float4 staticSwitch30_g2557 = staticSwitch29_g2557;
				#endif
				float4 temp_output_1_0_g2561 = staticSwitch30_g2557;
				float3 temp_output_4_0_g2561 = (temp_output_1_0_g2561).rgb;
				float4 break12_g2561 = temp_output_1_0_g2561;
				float3 lerpResult7_g2561 = lerp( temp_output_4_0_g2561 , ( temp_output_4_0_g2561 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g2561.r , break12_g2561.g ) , break12_g2561.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g2561 = lerp( temp_output_4_0_g2561 , lerpResult7_g2561 , _BlackTintFade);
				float4 appendResult11_g2561 = (float4(lerpResult13_g2561 , break12_g2561.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g2557 = appendResult11_g2561;
				#else
				float4 staticSwitch20_g2557 = staticSwitch30_g2557;
				#endif
				float4 temp_output_1_0_g2583 = staticSwitch20_g2557;
				float2 uv_RecolorTintAreas = IN.ase_texcoord2.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g2583 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g2583 = ( ( hsvTorgb33_g2583.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.8333333 )
				ifLocalVar46_g2583 = _RecolorPurpleTint;
				else
				ifLocalVar46_g2583 = _RecolorBlueTint;
				float4 ifLocalVar44_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.6666667 )
				ifLocalVar44_g2583 = _RecolorCyanTint;
				else
				ifLocalVar44_g2583 = ifLocalVar46_g2583;
				float4 ifLocalVar47_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.3333333 )
				ifLocalVar47_g2583 = _RecolorYellowTint;
				else
				ifLocalVar47_g2583 = _RecolorGreenTint;
				float4 ifLocalVar45_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.1666667 )
				ifLocalVar45_g2583 = _RecolorRedTint;
				else
				ifLocalVar45_g2583 = ifLocalVar47_g2583;
				float4 ifLocalVar35_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.5 )
				ifLocalVar35_g2583 = ifLocalVar44_g2583;
				else
				ifLocalVar35_g2583 = ifLocalVar45_g2583;
				float4 break55_g2583 = ifLocalVar35_g2583;
				float3 appendResult56_g2583 = (float3(break55_g2583.r , break55_g2583.g , break55_g2583.b));
				float4 break2_g2584 = temp_output_1_0_g2583;
				float saferPower57_g2583 = max( ( ( break2_g2584.x + break2_g2584.y + break2_g2584.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g2583 = lerp( (temp_output_1_0_g2583).rgb , ( appendResult56_g2583 * pow( saferPower57_g2583 , max( ( break55_g2583.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g2583.z * _RecolorFade ));
				float4 appendResult30_g2583 = (float4(lerpResult26_g2583 , temp_output_1_0_g2583.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g2557 = appendResult30_g2583;
				#else
				float4 staticSwitch9_g2557 = staticSwitch20_g2557;
				#endif
				float4 break2_g2569 = staticSwitch9_g2557;
				float3 appendResult4_g2569 = (float3(break2_g2569.r , break2_g2569.g , break2_g2569.b));
				float3 hsvTorgb16_g2569 = RGBToHSV( appendResult4_g2569 );
				float clampResult18_g2569 = clamp( ( hsvTorgb16_g2569.y * _AdjustColorSaturation ) , 0.0 , 1.0 );
				float temp_output_9_0_g2570 = max( _AdjustColorContrast , 0.0 );
				float saferPower7_g2570 = max( ( hsvTorgb16_g2569.z + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2570 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb24_g2569 = HSVToRGB( float3(( hsvTorgb16_g2569.x + _AdjustColorHueShift ),clampResult18_g2569,( pow( saferPower7_g2570 , temp_output_9_0_g2570 ) * _AdjustColorBrightness )) );
				float3 lerpResult9_g2569 = lerp( appendResult4_g2569 , hsvTorgb24_g2569 , _AdjustColorFade);
				float4 appendResult3_g2569 = (float4(lerpResult9_g2569 , break2_g2569.a));
				#ifdef _ENABLEADJUSTCOLOR_ON
				float4 staticSwitch10_g2557 = appendResult3_g2569;
				#else
				float4 staticSwitch10_g2557 = staticSwitch9_g2557;
				#endif
				float4 temp_output_1_0_g2577 = staticSwitch10_g2557;
				float4 break2_g2579 = temp_output_1_0_g2577;
				float temp_output_9_0_g2580 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g2580 = max( ( ( ( break2_g2579.x + break2_g2579.y + break2_g2579.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2580 ) , 0.0 ) ) ) , 0.0001 );
				float2 appendResult2_g2582 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2581 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g2581 = (WorldPosition).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g2581 = (IN.ase_texcoord3.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g2581 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2582 ) );
				float2 temp_output_19_0_g2577 = ifLocalVar2_g2581;
				float clampResult53_g2577 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g2577 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_19_0_g2577 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g2577 = lerp( (temp_output_1_0_g2577).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g2580 , temp_output_9_0_g2580 ) ) , ( _InkSpreadFade * clampResult53_g2577 ));
				float4 appendResult9_g2577 = (float4(lerpResult7_g2577 , (temp_output_1_0_g2577).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g2557 = appendResult9_g2577;
				#else
				float4 staticSwitch17_g2557 = staticSwitch10_g2557;
				#endif
				float4 temp_output_1_0_g2575 = staticSwitch17_g2557;
				float3 temp_output_34_0_g2575 = (temp_output_1_0_g2575).rgb;
				float mulTime31_g2575 = _TimeParameters.x * _ShiftHueSpeed;
				float3 hsvTorgb15_g2575 = RGBToHSV( temp_output_34_0_g2575 );
				float3 hsvTorgb19_g2575 = HSVToRGB( float3(( mulTime31_g2575 + hsvTorgb15_g2575.x ),hsvTorgb15_g2575.y,hsvTorgb15_g2575.z) );
				float2 uv_ShiftHueShaderMask = IN.ase_texcoord2.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g2576 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g2575 = lerp( temp_output_34_0_g2575 , hsvTorgb19_g2575 , ( _ShiftHueFade * ( tex2DNode3_g2576.r * tex2DNode3_g2576.a ) ));
				float4 appendResult6_g2575 = (float4(lerpResult33_g2575 , temp_output_1_0_g2575.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g2557 = appendResult6_g2575;
				#else
				float4 staticSwitch19_g2557 = staticSwitch17_g2557;
				#endif
				float mulTime28_g2571 = _TimeParameters.x * _AddHueSpeed;
				float3 hsvTorgb3_g2572 = HSVToRGB( float3(mulTime28_g2571,1.0,1.0) );
				float3 hsvTorgb15_g2571 = RGBToHSV( hsvTorgb3_g2572 );
				float3 hsvTorgb19_g2571 = HSVToRGB( float3(hsvTorgb15_g2571.x,_AddHueSaturation,( hsvTorgb15_g2571.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g2571 = staticSwitch19_g2557;
				float4 break2_g2573 = temp_output_1_0_g2571;
				float saferPower27_g2571 = max( ( ( break2_g2573.x + break2_g2573.y + break2_g2573.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.ase_texcoord2.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g2574 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g2571 = (float4(( ( hsvTorgb19_g2571 * pow( saferPower27_g2571 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g2574.r * tex2DNode3_g2574.a ) ) ) + (temp_output_1_0_g2571).rgb ) , temp_output_1_0_g2571.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g2557 = appendResult6_g2571;
				#else
				float4 staticSwitch23_g2557 = staticSwitch19_g2557;
				#endif
				float4 temp_output_1_0_g2562 = staticSwitch23_g2557;
				float4 break2_g2565 = temp_output_1_0_g2562;
				float temp_output_9_0_g2564 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g2564 = max( ( ( ( break2_g2565.x + break2_g2565.y + break2_g2565.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2564 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.ase_texcoord2.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g2563 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float mulTime15_g2562 = _TimeParameters.x * _SineGlowFrequency;
				float4 appendResult21_g2562 = (float4(( (temp_output_1_0_g2562).rgb + ( pow( saferPower7_g2564 , temp_output_9_0_g2564 ) * ( _SineGlowFade * ( tex2DNode3_g2563.r * tex2DNode3_g2563.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( mulTime15_g2562 ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g2562.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g2557 = appendResult21_g2562;
				#else
				float4 staticSwitch28_g2557 = staticSwitch23_g2557;
				#endif
				float4 temp_output_15_0_g2566 = staticSwitch28_g2557;
				float2 temp_output_1_0_g2557 = lerpResult130;
				float2 temp_output_7_0_g2566 = temp_output_1_0_g2557;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g2566 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g2566 ) * _InnerOutlineNoiseScale ) ).r - 0.25 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g2566 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2566 = ( staticSwitch169_g2566 + temp_output_7_0_g2566 );
				float2 appendResult2_g2568 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2566 = ( 100.0 / appendResult2_g2568 );
				float temp_output_161_0_g2566 = (temp_output_15_0_g2566).a;
				float temp_output_151_0_g2566 = ( ( _InnerOutlineColor.a * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2566 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) ) * temp_output_161_0_g2566 ) * ( _InnerOutlineFade * min( ( _InnerOutlineWidth * 100.0 ) , 1.0 ) ) );
				float4 appendResult84_g2566 = (float4((_InnerOutlineColor).rgb , temp_output_151_0_g2566));
				float4 lerpResult43_g2566 = lerp( temp_output_15_0_g2566 , appendResult84_g2566 , temp_output_151_0_g2566);
				float4 appendResult162_g2566 = (float4((lerpResult43_g2566).xyz , temp_output_161_0_g2566));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g2557 = appendResult162_g2566;
				#else
				float4 staticSwitch12_g2557 = staticSwitch28_g2557;
				#endif
				float4 temp_output_15_0_g2585 = staticSwitch12_g2557;
				float temp_output_31_0_g2585 = (temp_output_15_0_g2585).a;
				float2 temp_output_7_0_g2585 = temp_output_1_0_g2557;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g2585 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g2585 ) * _OuterOutlineNoiseScale ) ).r - 0.25 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g2585 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2585 = ( staticSwitch157_g2585 + temp_output_7_0_g2585 );
				float2 appendResult2_g2587 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2585 = ( 100.0 / appendResult2_g2587 );
				float temp_output_83_0_g2585 = ( _OuterOutlineColor.a * min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2585 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) * 3.0 ) , 1.0 ) );
				float lerpResult152_g2585 = lerp( temp_output_31_0_g2585 , temp_output_83_0_g2585 , ( temp_output_83_0_g2585 * _OuterOutlineFade ));
				float4 appendResult84_g2585 = (float4((_OuterOutlineColor).rgb , lerpResult152_g2585));
				float4 lerpResult43_g2585 = lerp( appendResult84_g2585 , temp_output_15_0_g2585 , ( 1.0 - ( min( ( _OuterOutlineFade * 10.0 ) , 1.0 ) * ( 1.0 - temp_output_31_0_g2585 ) ) ));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g2557 = lerpResult43_g2585;
				#else
				float4 staticSwitch13_g2557 = staticSwitch12_g2557;
				#endif
				float4 temp_output_108_0 = staticSwitch13_g2557;
				float4 temp_output_1_0_g2591 = temp_output_108_0;
				float4 break2_g2592 = temp_output_1_0_g2591;
				float temp_output_9_0_g2593 = max( _HologramContrast , 0.0 );
				float saferPower7_g2593 = max( ( ( ( break2_g2592.x + break2_g2592.y + break2_g2592.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2593 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g2591 = (float4(( (_HologramTint).rgb * pow( saferPower7_g2593 , temp_output_9_0_g2593 ) ) , ( max( pow( abs( sin( ( ( ( ( _TimeParameters.x * _HologramLineSpeed ) + WorldPosition.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g2591.a )));
				float4 lerpResult37_g2591 = lerp( temp_output_1_0_g2591 , appendResult22_g2591 , _HologramFade);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g2591;
				#else
				float4 staticSwitch56 = temp_output_108_0;
				#endif
				float4 temp_output_1_0_g2594 = staticSwitch56;
				float4 break2_g2596 = temp_output_1_0_g2594;
				float mulTime14_g2594 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g2597 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g2594 ),1.0,1.0) );
				float3 lerpResult23_g2594 = lerp( (temp_output_1_0_g2594).rgb , ( ( ( break2_g2596.x + break2_g2596.y + break2_g2596.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g2597 ) , temp_output_102_15);
				float4 appendResult27_g2594 = (float4(lerpResult23_g2594 , temp_output_1_0_g2594.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g2594;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g2598 = staticSwitch57;
				float4 temp_output_1_0_g2634 = temp_output_3_0_g2598;
				float2 appendResult2_g2639 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2638 = 0;
				if( _CamouflageSpace > 1.0 )
				ifLocalVar2_g2638 = (WorldPosition).xy;
				else if( _CamouflageSpace == 1.0 )
				ifLocalVar2_g2638 = (IN.ase_texcoord3.xyz).xy;
				else if( _CamouflageSpace < 1.0 )
				ifLocalVar2_g2638 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2639 ) );
				float2 temp_output_42_0_g2634 = ifLocalVar2_g2638;
				float clampResult52_g2634 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g2634 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g2634 ) , clampResult52_g2634);
				float clampResult65_g2634 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g2634 = lerp( lerpResult55_g2634 , ( _CamouflageColorB * clampResult65_g2634 ) , clampResult65_g2634);
				float4 break2_g2635 = temp_output_1_0_g2634;
				float temp_output_9_0_g2642 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g2642 = max( ( ( ( break2_g2635.x + break2_g2635.y + break2_g2635.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2642 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.ase_texcoord2.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g2637 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g2634 = lerp( (temp_output_1_0_g2634).rgb , ( (lerpResult68_g2634).rgb * pow( saferPower7_g2642 , temp_output_9_0_g2642 ) ) , ( _CamouflageFade * ( tex2DNode3_g2637.r * tex2DNode3_g2637.a ) ));
				float4 appendResult7_g2634 = (float4(lerpResult4_g2634 , temp_output_1_0_g2634.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g2598 = appendResult7_g2634;
				#else
				float4 staticSwitch26_g2598 = temp_output_3_0_g2598;
				#endif
				float4 temp_output_1_0_g2626 = staticSwitch26_g2598;
				float2 appendResult2_g2633 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2632 = 0;
				if( _MetalSpace > 1.0 )
				ifLocalVar2_g2632 = (WorldPosition).xy;
				else if( _MetalSpace == 1.0 )
				ifLocalVar2_g2632 = (IN.ase_texcoord3.xyz).xy;
				else if( _MetalSpace < 1.0 )
				ifLocalVar2_g2632 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2633 ) );
				float2 temp_output_16_0_g2626 = ifLocalVar2_g2632;
				float4 break2_g2627 = temp_output_1_0_g2626;
				float temp_output_5_0_g2626 = ( ( break2_g2627.x + break2_g2627.y + break2_g2627.z ) / 3.0 );
				float temp_output_9_0_g2630 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g2630 = max( ( temp_output_5_0_g2626 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2630 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g2626 = max( temp_output_5_0_g2626 , 0.0001 );
				float2 uv_MetalShaderMask = IN.ase_texcoord2.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g2631 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g2626 = lerp( temp_output_1_0_g2626 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _MetalNoiseDistortionSpeed ) + temp_output_16_0_g2626 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( _TimeParameters.x * _MetalNoiseSpeed ) + temp_output_16_0_g2626 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g2630 , temp_output_9_0_g2630 ) ) + ( pow( saferPower2_g2626 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g2631.r * tex2DNode3_g2631.a ) ));
				float4 appendResult8_g2626 = (float4((lerpResult45_g2626).rgb , (temp_output_1_0_g2626).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g2598 = appendResult8_g2626;
				#else
				float4 staticSwitch28_g2598 = staticSwitch26_g2598;
				#endif
				float4 temp_output_1_0_g2618 = staticSwitch28_g2598;
				float4 break2_g2621 = temp_output_1_0_g2618;
				float temp_output_7_0_g2618 = ( ( break2_g2621.x + break2_g2621.y + break2_g2621.z ) / 3.0 );
				float temp_output_9_0_g2625 = max( _FrozenContrast , 0.0 );
				float saferPower7_g2625 = max( ( temp_output_7_0_g2618 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2625 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float2 appendResult2_g2624 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2623 = 0;
				if( _FrozenSpace > 1.0 )
				ifLocalVar2_g2623 = (WorldPosition).xy;
				else if( _FrozenSpace == 1.0 )
				ifLocalVar2_g2623 = (IN.ase_texcoord3.xyz).xy;
				else if( _FrozenSpace < 1.0 )
				ifLocalVar2_g2623 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2624 ) );
				float2 temp_output_3_0_g2618 = ifLocalVar2_g2623;
				float saferPower42_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float3 lerpResult57_g2618 = lerp( (temp_output_1_0_g2618).rgb , ( ( pow( saferPower7_g2625 , temp_output_9_0_g2625 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g2618 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_3_0_g2618 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FrozenHighlightDistortionSpeed ) + temp_output_3_0_g2618 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( _TimeParameters.x * _FrozenHighlightSpeed ) + temp_output_3_0_g2618 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g2618 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g2618 = (float4(lerpResult57_g2618 , temp_output_1_0_g2618.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g2598 = appendResult26_g2618;
				#else
				float4 staticSwitch29_g2598 = staticSwitch28_g2598;
				#endif
				float4 temp_output_1_0_g2611 = staticSwitch29_g2598;
				float3 temp_output_28_0_g2611 = (temp_output_1_0_g2611).rgb;
				float4 break2_g2612 = float4( temp_output_28_0_g2611 , 0.0 );
				float saferPower21_g2611 = max( ( ( break2_g2612.x + break2_g2612.y + break2_g2612.z ) / 3.0 ) , 0.0001 );
				float2 appendResult2_g2616 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2615 = 0;
				if( (int)_BurnSpace > 1.0 )
				ifLocalVar2_g2615 = (WorldPosition).xy;
				else if( (int)_BurnSpace == 1.0 )
				ifLocalVar2_g2615 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_BurnSpace < 1.0 )
				ifLocalVar2_g2615 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2616 ) );
				float2 temp_output_3_0_g2611 = ifLocalVar2_g2615;
				float clampResult68_g2611 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_3_0_g2611 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g2611 = ( ( ( _BurnRadius - distance( temp_output_3_0_g2611 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g2611 = clamp( temp_output_15_0_g2611 , 0.0 , 1.0 );
				float3 lerpResult29_g2611 = lerp( temp_output_28_0_g2611 , ( pow( saferPower21_g2611 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g2611 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g2611);
				float3 lerpResult40_g2611 = lerp( temp_output_28_0_g2611 , ( lerpResult29_g2611 + ( ( step( temp_output_15_0_g2611 , 1.0 ) * step( 0.0 , temp_output_15_0_g2611 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g2611 = (float4(lerpResult40_g2611 , temp_output_1_0_g2611.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g2598 = appendResult43_g2611;
				#else
				float4 staticSwitch32_g2598 = staticSwitch29_g2598;
				#endif
				float2 appendResult2_g2610 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2609 = 0;
				if( (int)_RainbowSpace > 1.0 )
				ifLocalVar2_g2609 = (WorldPosition).xy;
				else if( (int)_RainbowSpace == 1.0 )
				ifLocalVar2_g2609 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_RainbowSpace < 1.0 )
				ifLocalVar2_g2609 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2610 ) );
				float2 temp_output_3_0_g2604 = ifLocalVar2_g2609;
				float mulTime14_g2604 = _TimeParameters.x * _RainbowSpeed;
				float3 hsvTorgb3_g2607 = HSVToRGB( float3(( ( ( distance( temp_output_3_0_g2604 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2604 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + mulTime14_g2604 ),1.0,1.0) );
				float3 hsvTorgb36_g2604 = RGBToHSV( hsvTorgb3_g2607 );
				float3 hsvTorgb37_g2604 = HSVToRGB( float3(hsvTorgb36_g2604.x,_RainbowSaturation,( hsvTorgb36_g2604.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g2604 = staticSwitch32_g2598;
				float4 break2_g2606 = temp_output_1_0_g2604;
				float saferPower24_g2604 = max( ( ( break2_g2606.x + break2_g2606.y + break2_g2606.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.ase_texcoord2.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g2605 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g2604 = (float4(( ( hsvTorgb37_g2604 * pow( saferPower24_g2604 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g2605.r * tex2DNode3_g2605.a ) ) ) + (temp_output_1_0_g2604).rgb ) , temp_output_1_0_g2604.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g2598 = appendResult29_g2604;
				#else
				float4 staticSwitch34_g2598 = staticSwitch32_g2598;
				#endif
				float4 temp_output_1_0_g2599 = staticSwitch34_g2598;
				float4 break2_g2600 = temp_output_1_0_g2599;
				float saferPower83_g2599 = max( ( ( break2_g2600.x + break2_g2600.y + break2_g2600.z ) / 3.0 ) , 0.0001 );
				float mulTime86_g2599 = _TimeParameters.x * _ShineSpeed;
				float2 appendResult2_g2602 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2601 = 0;
				if( _ShineSpace > 1.0 )
				ifLocalVar2_g2601 = (WorldPosition).xy;
				else if( _ShineSpace == 1.0 )
				ifLocalVar2_g2601 = (IN.ase_texcoord3.xyz).xy;
				else if( _ShineSpace < 1.0 )
				ifLocalVar2_g2601 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2602 ) );
				float3 rotatedValue69_g2599 = RotateAroundAxis( float3( 0,0,0 ), float3( ( mulTime86_g2599 + ( _ShineScale * ifLocalVar2_g2601 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g2599 = rotatedValue69_g2599;
				float clampResult80_g2599 = clamp( ( ( ( sin( ( ( break67_g2599.x + break67_g2599.y ) * 10.0 ) ) + _ShineDensity ) * ( 2.0 - _ShineDensity ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.ase_texcoord2.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g2603 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g2599 = (float4(( (temp_output_1_0_g2599).rgb + ( ( pow( saferPower83_g2599 , max( _ShineContrast , 0.001 ) ) * (_ShineColor).rgb ) * clampResult80_g2599 * ( _ShineFade * ( tex2DNode3_g2603.r * tex2DNode3_g2603.a ) ) ) ) , (temp_output_1_0_g2599).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g2598 = appendResult8_g2599;
				#else
				float4 staticSwitch36_g2598 = staticSwitch34_g2598;
				#endif
				float2 appendResult2_g2646 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2645 = 0;
				if( (int)_PoisonSpace > 1.0 )
				ifLocalVar2_g2645 = (WorldPosition).xy;
				else if( (int)_PoisonSpace == 1.0 )
				ifLocalVar2_g2645 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_PoisonSpace < 1.0 )
				ifLocalVar2_g2645 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2646 ) );
				float mulTime15_g2643 = _TimeParameters.x * _PoisonShiftSpeed;
				float saferPower19_g2643 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _PoisonNoiseSpeed ) + ifLocalVar2_g2645 ) * _PoisonNoiseScale ) ).r + mulTime15_g2643 ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g2643 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g2643 = staticSwitch36_g2598;
				float3 temp_output_28_0_g2643 = (temp_output_1_0_g2643).rgb;
				float4 break2_g2647 = float4( temp_output_28_0_g2643 , 0.0 );
				float3 lerpResult32_g2643 = lerp( temp_output_28_0_g2643 , ( temp_output_24_0_g2643 * ( ( break2_g2647.x + break2_g2647.y + break2_g2647.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g2643 = (float4(( ( max( pow( saferPower19_g2643 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g2643 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g2643 ) , temp_output_1_0_g2643.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g2598 = appendResult27_g2643;
				#else
				float4 staticSwitch39_g2598 = staticSwitch36_g2598;
				#endif
				float4 temp_output_109_0 = staticSwitch39_g2598;
				float4 break4_g2648 = temp_output_109_0;
				float4 appendResult5_g2648 = (float4(break4_g2648.r , break4_g2648.g , break4_g2648.b , ( break4_g2648.a * _FullDistortionFade )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g2648;
				#else
				float4 staticSwitch77 = temp_output_109_0;
				#endif
				float4 break4_g2649 = staticSwitch77;
				float4 appendResult5_g2649 = (float4(break4_g2649.r , break4_g2649.g , break4_g2649.b , ( break4_g2649.a * (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g2649;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g2650 = staticSwitch75;
				float4 temp_output_1_0_g2651 = temp_output_1_0_g2650;
				float temp_output_53_0_g2651 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 appendResult2_g2654 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2653 = 0;
				if( _FullAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2653 = (WorldPosition).xy;
				else if( _FullAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2653 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2653 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2654 ) );
				float clampResult17_g2651 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g2651 ) ) - tex2D( _UberNoiseTexture, ( ifLocalVar2_g2653 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g2651 ) , 0.0 , 1.0 );
				float4 appendResult3_g2651 = (float4((temp_output_1_0_g2651).rgb , ( temp_output_1_0_g2651.a * clampResult17_g2651 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g2650 = appendResult3_g2651;
				#else
				float4 staticSwitch3_g2650 = temp_output_1_0_g2650;
				#endif
				float2 appendResult2_g2665 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2664 = 0;
				if( _FullGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2664 = (WorldPosition).xy;
				else if( _FullGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2664 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2664 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2665 ) );
				float temp_output_5_0_g2663 = tex2D( _UberNoiseTexture, ( ifLocalVar2_g2664 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g2663 = step( temp_output_5_0_g2663 , _FullGlowDissolveFade );
				float temp_output_53_0_g2663 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g2663 = staticSwitch3_g2650;
				float4 appendResult3_g2663 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g2663 - step( temp_output_5_0_g2663 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g2663 ) ) - temp_output_53_0_g2663 ) ) ) ) + (temp_output_1_0_g2663).rgb ) , ( temp_output_1_0_g2663.a * temp_output_61_0_g2663 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g2650 = appendResult3_g2663;
				#else
				float4 staticSwitch5_g2650 = staticSwitch3_g2650;
				#endif
				float4 temp_output_1_0_g2659 = staticSwitch5_g2650;
				float2 appendResult2_g2662 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2661 = 0;
				if( _SourceAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2661 = (WorldPosition).xy;
				else if( _SourceAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2661 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2661 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2662 ) );
				float2 temp_output_7_0_g2659 = ifLocalVar2_g2661;
				float clampResult17_g2659 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_7_0_g2659 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2659 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2659 = (float4((temp_output_1_0_g2659).rgb , ( temp_output_1_0_g2659.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g2659 ) ):( clampResult17_g2659 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g2650 = appendResult3_g2659;
				#else
				float4 staticSwitch8_g2650 = staticSwitch5_g2650;
				#endif
				float2 appendResult2_g2669 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2668 = 0;
				if( _SourceGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2668 = (WorldPosition).xy;
				else if( _SourceGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2668 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2668 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2669 ) );
				float2 temp_output_7_0_g2667 = ifLocalVar2_g2668;
				float temp_output_65_0_g2667 = ( distance( _SourceGlowDissolvePosition , temp_output_7_0_g2667 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2667 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g2667 = step( temp_output_65_0_g2667 , _SourceGlowDissolveFade );
				float temp_output_76_0_g2667 = step( temp_output_65_0_g2667 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g2667 = staticSwitch8_g2650;
				float4 appendResult3_g2667 = (float4(( ( max( ( temp_output_75_0_g2667 - temp_output_76_0_g2667 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g2667).rgb ) , ( temp_output_1_0_g2667.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g2667 ) ):( temp_output_75_0_g2667 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g2650 = appendResult3_g2667;
				#else
				float4 staticSwitch9_g2650 = staticSwitch8_g2650;
				#endif
				float4 temp_output_1_0_g2675 = staticSwitch9_g2650;
				float2 appendResult2_g2678 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2677 = 0;
				if( _DirectionalAlphaFadeSpace > 1.0 )
				ifLocalVar2_g2677 = (WorldPosition).xy;
				else if( _DirectionalAlphaFadeSpace == 1.0 )
				ifLocalVar2_g2677 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalAlphaFadeSpace < 1.0 )
				ifLocalVar2_g2677 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2678 ) );
				float2 temp_output_7_0_g2675 = ifLocalVar2_g2677;
				float3 rotatedValue136_g2675 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2675 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2675 = rotatedValue136_g2675;
				float clampResult154_g2675 = clamp( ( ( break130_g2675.x + break130_g2675.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2675 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2675 = (float4((temp_output_1_0_g2675).rgb , ( temp_output_1_0_g2675.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g2675 ) ):( clampResult154_g2675 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g2650 = appendResult3_g2675;
				#else
				float4 staticSwitch11_g2650 = staticSwitch9_g2650;
				#endif
				float2 appendResult2_g2674 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2673 = 0;
				if( _DirectionalGlowFadeSpace > 1.0 )
				ifLocalVar2_g2673 = (WorldPosition).xy;
				else if( _DirectionalGlowFadeSpace == 1.0 )
				ifLocalVar2_g2673 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalGlowFadeSpace < 1.0 )
				ifLocalVar2_g2673 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2674 ) );
				float2 temp_output_7_0_g2671 = ifLocalVar2_g2673;
				float3 rotatedValue136_g2671 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2671 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2671 = rotatedValue136_g2671;
				float temp_output_168_0_g2671 = max( ( ( break130_g2671.x + break130_g2671.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2671 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g2671 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) );
				float4 temp_output_1_0_g2671 = staticSwitch11_g2650;
				float clampResult154_g2671 = clamp( temp_output_161_0_g2671 , 0.0 , 1.0 );
				float4 appendResult3_g2671 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g2671 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) ) ) ) + (temp_output_1_0_g2671).rgb ) , ( temp_output_1_0_g2671.a * clampResult154_g2671 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g2650 = appendResult3_g2671;
				#else
				float4 staticSwitch15_g2650 = staticSwitch11_g2650;
				#endif
				float4 temp_output_1_0_g2655 = staticSwitch15_g2650;
				float2 appendResult2_g2658 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2657 = 0;
				if( _HalftoneSpace > 1.0 )
				ifLocalVar2_g2657 = (WorldPosition).xy;
				else if( _HalftoneSpace == 1.0 )
				ifLocalVar2_g2657 = (IN.ase_texcoord3.xyz).xy;
				else if( _HalftoneSpace < 1.0 )
				ifLocalVar2_g2657 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2658 ) );
				float2 temp_output_7_0_g2655 = ifLocalVar2_g2657;
				float temp_output_121_0_g2655 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_7_0_g2655 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g2656 = (float2(temp_output_121_0_g2655 , temp_output_121_0_g2655));
				float temp_output_17_0_g2656 = length( ( (( ( abs( temp_output_7_0_g2655 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g2656 ) );
				float clampResult17_g2655 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g2656 ) / fwidth( temp_output_17_0_g2656 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2655 = (float4((temp_output_1_0_g2655).rgb , ( temp_output_1_0_g2655.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g2655 ) ):( clampResult17_g2655 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g2650 = appendResult3_g2655;
				#else
				float4 staticSwitch13_g2650 = staticSwitch15_g2650;
				#endif
				float4 temp_output_1_0_g2698 = staticSwitch13_g2650;
				float4 break2_g2700 = temp_output_1_0_g2698;
				float temp_output_9_0_g2699 = max( _AddColorContrast , 0.0 );
				float saferPower7_g2699 = max( ( ( ( break2_g2700.x + break2_g2700.y + break2_g2700.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2699 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g2698 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g2699 , temp_output_9_0_g2699 ) * _AddColorFade ) + (temp_output_1_0_g2698).rgb ) , temp_output_1_0_g2698.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g2697 = appendResult6_g2698;
				#else
				float4 staticSwitch5_g2697 = staticSwitch13_g2650;
				#endif
				float4 temp_output_1_0_g2701 = staticSwitch5_g2697;
				float saferPower11_g2701 = max( ( 1.0 - temp_output_1_0_g2701.a ) , 0.0001 );
				float3 lerpResult4_g2701 = lerp( (temp_output_1_0_g2701).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g2701 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g2701.a ) ));
				float4 appendResult13_g2701 = (float4(lerpResult4_g2701 , temp_output_1_0_g2701.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g2697 = appendResult13_g2701;
				#else
				float4 staticSwitch11_g2697 = staticSwitch5_g2697;
				#endif
				float4 temp_output_1_0_g2702 = staticSwitch11_g2697;
				float4 break2_g2703 = temp_output_1_0_g2702;
				float temp_output_9_0_g2704 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g2704 = max( ( ( ( break2_g2703.x + break2_g2703.y + break2_g2703.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2704 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g2702 = lerp( (temp_output_1_0_g2702).rgb , ( pow( saferPower7_g2704 , temp_output_9_0_g2704 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g2702 = (float4(lerpResult7_g2702 , (temp_output_1_0_g2702).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g2697 = appendResult9_g2702;
				#else
				float4 staticSwitch7_g2697 = staticSwitch11_g2697;
				#endif
				float4 lerpResult125 = lerp( tex2DNode31 , staticSwitch7_g2697 , fullFade123);
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g2548 = _White;
				#else
				float4 staticSwitch8_g2548 = IN.ase_color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g2548 = _White;
				#else
				float4 staticSwitch9_g2548 = staticSwitch8_g2548;
				#endif
				float4 lerpResult126 = lerp( IN.ase_color , staticSwitch9_g2548 , fullFade123);
				float4 temp_output_119_0 = ( lerpResult125 * lerpResult126 );
				
				float Alpha = temp_output_119_0.a;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70403

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _ENABLEVIBRATE_ON
			#pragma shader_feature_local _ENABLESINEMOVE_ON
			#pragma shader_feature_local _ENABLESQUISH_ON
			#pragma shader_feature_local _ENABLEGLITCH_ON
			#pragma shader_feature_local _ENABLEHOLOGRAM_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALDISTORTION_ON
			#pragma shader_feature_local _ENABLEFULLDISTORTION_ON
			#pragma shader_feature_local _ENABLEUVSCROLL_ON
			#pragma shader_feature_local _ENABLEUVROTATE_ON
			#pragma shader_feature_local _ENABLESINEROTATE_ON
			#pragma shader_feature_local _ENABLESQUEEZE_ON
			#pragma shader_feature_local _ENABLEUVDISTORT_ON
			#pragma shader_feature_local _ENABLEPIXELATE_ON
			#pragma shader_feature_local _ENABLEWIND_ON
			#pragma shader_feature_local _ENABLESTRONGTINT_ON
			#pragma shader_feature_local _ENABLEALPHATINT_ON
			#pragma shader_feature_local _ENABLEADDCOLOR_ON
			#pragma shader_feature_local _ENABLEHALFTONE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALGLOWFADE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALALPHAFADE_ON
			#pragma shader_feature_local _ENABLESOURCEGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLESOURCEALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEPOISON_ON
			#pragma shader_feature_local _ENABLESHINE_ON
			#pragma shader_feature_local _ENABLERAINBOW_ON
			#pragma shader_feature_local _ENABLEBURN_ON
			#pragma shader_feature_local _ENABLEFROZEN_ON
			#pragma shader_feature_local _ENABLEMETAL_ON
			#pragma shader_feature_local _ENABLECAMOUFLAGE_ON
			#pragma shader_feature_local _ENABLEOUTEROUTLINE_ON
			#pragma shader_feature_local _ENABLEINNEROUTLINE_ON
			#pragma shader_feature_local _ENABLESINEGLOW_ON
			#pragma shader_feature_local _ENABLEADDHUE_ON
			#pragma shader_feature_local _ENABLESHIFTHUE_ON
			#pragma shader_feature_local _ENABLEINKSPREAD_ON
			#pragma shader_feature_local _ENABLEADJUSTCOLOR_ON
			#pragma shader_feature_local _ENABLERECOLOR_ON
			#pragma shader_feature_local _ENABLEBLACKTINT_ON
			#pragma shader_feature_local _ENABLESPLITTONING_ON
			#pragma shader_feature_local _ENABLECOLORREPLACE_ON
			#pragma shader_feature_local _ENABLEFLAME_ON
			#pragma shader_feature_local _ENABLECHECKERBOARD_ON
			#pragma shader_feature_local _ENABLECUSTOMFADE_ON
			#pragma shader_feature_local _ENABLESMOKE_ON
			#pragma shader_feature_local _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma shader_feature_local _OUTEROUTLINEDISTORTIONTOGGLE_ON


			#pragma shader_feature _ _SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _HologramTint;
			float4 _ShineColor;
			float4 _RecolorRedTint;
			float4 _RecolorYellowTint;
			float4 _RecolorGreenTint;
			float4 _RecolorCyanTint;
			float4 _RecolorBlueTint;
			float4 _RecolorPurpleTint;
			float4 _RainbowMask_ST;
			float4 _RecolorTintAreas_ST;
			float4 _ShineShaderMask_ST;
			float4 _SplitToningHighlightsColor;
			float4 _SplitToningShadowsColor;
			float4 _ColorReplaceTargetColor;
			float4 _ColorReplaceColor;
			float4 _PoisonColor;
			float4 _FullGlowDissolveEdgeColor;
			float4 _BlackTintColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _InkSpreadColor;
			float4 _BurnEdgeColor;
			float4 _MetalShaderMask_ST;
			float4 _MetalHighlightColor;
			float4 _FrozenTint;
			float4 _CamouflageShaderMask_ST;
			float4 _FrozenSnowColor;
			float4 _CamouflageColorB;
			float4 _CamouflageColorA;
			float4 _ShiftHueShaderMask_ST;
			float4 _CamouflageBaseColor;
			float4 _BurnInsideNoiseColor;
			float4 _OuterOutlineColor;
			float4 _InnerOutlineColor;
			float4 _BurnInsideColor;
			float4 _SineGlowColor;
			float4 _SineGlowShaderMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _FrozenHighlightColor;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _MetalColor;
			float4 _WindDistortionMask_ST;
			float4 _NormalMap_ST;
			float4 _MainTex_TexelSize;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _AlphaTintColor;
			float4 _AddColorColor;
			float4 _SmoothnessMap_ST;
			float2 _OuterOutlineDistortionIntensity;
			float2 _UVDistortSpeed;
			float2 _UVDistortNoiseScale;
			float2 _FlameNoiseScale;
			float2 _PoisonNoiseSpeed;
			float2 _BurnEdgeNoiseScale;
			float2 _FrozenHighlightScale;
			float2 _GlitchNoiseSpeed;
			float2 _UVDistortTo;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _SqueezeCenter;
			float2 _GlitchNoiseScale;
			float2 _FrozenHighlightDistortion;
			float2 _FrozenHighlightSpeed;
			float2 _UVDistortFrom;
			float2 _PoisonNoiseScale;
			float2 _OuterOutlineNoiseSpeed;
			float2 _HalftonePosition;
			float2 _BurnPosition;
			float2 _WindFromDistortion;
			float2 _RainbowCenter;
			float2 _RainbowNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _InkSpreadPosition;
			float2 _OuterOutlineNoiseScale;
			float2 _BurnInsideNoiseScale;
			float2 _WindToDistortion;
			float2 _InnerOutlineNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _WindDistortionSpeed;
			float2 _BurnSwirlNoiseScale;
			float2 _WindDistortionScale;
			float2 _FlameSpeed;
			float2 _InnerOutlineNoiseSpeed;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _FrozenHighlightDistortionScale;
			float2 _CamouflageAnimationSpeed;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _FullDistortionNoiseScale;
			float2 _CamouflageNoiseScaleB;
			float2 _SourceGlowDissolvePosition;
			float2 _SqueezeScale;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _MetalNoiseDistortionScale;
			float2 _SineMoveOffset;
			float2 _MetalNoiseDistortion;
			float2 _SineMoveFrequency;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _DirectionalDistortionDistortionScale;
			float2 _DirectionalDistortionNoiseScale;
			float2 _MetalNoiseDistortionSpeed;
			float2 _FullDistortionDistortion;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortion;
			float2 _SineRotatePivot;
			float2 _FullGlowDissolveNoiseScale;
			float2 _CustomFadeNoiseScale;
			float2 _CamouflageDistortionScale;
			float2 _CamouflageDistortionIntensity;
			float2 _CamouflageNoiseScaleA;
			float2 _FrozenSnowScale;
			float2 _MetalNoiseSpeed;
			float2 _SourceAlphaDissolvePosition;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _MetalNoiseScale;
			float2 _GlitchMaskScale;
			float2 _GlitchMaskSpeed;
			float2 _UVScrollSpeed;
			float2 _UVRotatePivot;
			float2 _DirectionalDistortionDistortion;
			float _NormalIntensity;
			float _AddColorFade;
			float _BurnRadius;
			float _AddColorContrast;
			float _FrozenSnowDensity;
			float _BurnSwirlFactor;
			float _AlphaTintPower;
			float _FrozenSnowContrast;
			float _BurnSpace;
			float _BurnInsideNoiseFactor;
			float _AlphaTintFade;
			float _BurnInsideContrast;
			float _FrozenFade;
			float _FrozenHighlightContrast;
			float _AlphaTintMinAlpha;
			int _FrozenSpace;
			float _StrongTintFade;
			float _StrongTintContrast;
			float _FrozenHighlightDensity;
			float _FrozenContrast;
			float _HalftoneFadeWidth;
			float _ShineRotation;
			float _BurnWidth;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			int _FullAlphaDissolveSpace;
			int _FullGlowDissolveSpace;
			float _FullGlowDissolveFade;
			float _FullGlowDissolveWidth;
			float _SourceAlphaDissolveInvert;
			float _SourceAlphaDissolveFade;
			int _SourceAlphaDissolveSpace;
			float _SourceAlphaDissolveNoiseFactor;
			float _SourceAlphaDissolveWidth;
			int _SourceGlowDissolveSpace;
			float _SourceGlowDissolveNoiseFactor;
			float _SourceGlowDissolveFade;
			float _SourceGlowDissolveWidth;
			float _SourceGlowDissolveInvert;
			float _DirectionalAlphaFadeInvert;
			float _DirectionalAlphaFadeRotation;
			int _DirectionalAlphaFadeSpace;
			float _DirectionalAlphaFadeFade;
			float _DirectionalAlphaFadeNoiseFactor;
			float _DirectionalAlphaFadeWidth;
			float _DirectionalGlowFadeFade;
			float _DirectionalGlowFadeInvert;
			float _PoisonNoiseBrightness;
			float _BurnEdgeNoiseFactor;
			float _PoisonFade;
			float _PoisonDensity;
			float _BurnFade;
			float _RainbowSpace;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineContrast;
			int _DirectionalGlowFadeSpace;
			float _ShineSpeed;
			float _HalftoneFade;
			float _HalftoneTiling;
			int _HalftoneSpace;
			float _ShineScale;
			int _ShineSpace;
			float _HalftoneInvert;
			float _ShineDensity;
			float _ShineSmoothness;
			float _ShineFade;
			float _DirectionalGlowFadeWidth;
			float _PoisonSpace;
			float _MetalFade;
			float _PoisonShiftSpeed;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeRotation;
			float _SquishStretch;
			float _MetalHighlightContrast;
			float _DirectionalDistortionRandomDirection;
			float _DirectionalDistortionInvert;
			float _DirectionalDistortionRotation;
			float _DirectionalDistortionFade;
			float _DirectionalDistortionNoiseFactor;
			float _DirectionalDistortionWidth;
			float _HologramDistortionSpeed;
			float _HologramDistortionDensity;
			float _HologramDistortionScale;
			float _HologramDistortionOffset;
			float _HologramFade;
			int _GlitchSpace;
			int _DirectionalDistortionSpace;
			float _GlitchMaskMin;
			float _SmokeVertexSeed;
			float _SmokeNoiseScale;
			float _SmokeNoiseFactor;
			float _SmokeSmoothness;
			float _SmokeDarkEdge;
			float _SmokeAlpha;
			float _CustomFadeNoiseFactor;
			float _CustomFadeSmoothness;
			float _CustomFadeAlpha;
			float _CheckerboardDarken;
			float _CheckerboardTiling;
			float _FlameNoiseHeightFactor;
			float _GlitchFade;
			int _FullDistortionSpace;
			float _FullDistortionFade;
			float _UVRotateScale;
			float _SquishFade;
			float _SquishFlip;
			float _SquishSquish;
			float _SineMoveFade;
			float _VibrateFrequency;
			float _VibrateOffset;
			float _VibrateFade;
			float _VibrateRotation;
			float _FullFade;
			float _WindRotationWindFactor;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _WindSquishWindFactor;
			float _WindDistortionWindFactor;
			float _PixelatePixelDensity;
			float _PixelateFade;
			int _UVDistortSpace;
			float _UVDistortFade;
			float _SqueezePower;
			float _SqueezeFade;
			float _SineRotateFrequency;
			float _SineRotateAngle;
			float _SineRotateFade;
			float _SineRotateScale;
			float _UVRotateSpeed;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _FlameBrightness;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _InnerOutlineWidth;
			float _InnerOutlineFade;
			float _OuterOutlineWidth;
			float _OuterOutlineFade;
			float _Metallic;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _HologramLineFrequency;
			float _HologramLineGap;
			float _HologramMinAlpha;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
			float _CamouflageDensityA;
			float _CamouflageAnimated;
			int _CamouflageSpace;
			float _CamouflageSmoothnessA;
			float _CamouflageDensityB;
			float _CamouflageSmoothnessB;
			float _CamouflageContrast;
			float _CamouflageFade;
			float _MetalHighlightDensity;
			int _MetalSpace;
			float _AddHueFade;
			float _MetalContrast;
			float _AddHueContrast;
			float _AddHueSaturation;
			float _ColorReplaceContrast;
			float _ColorReplaceHueTolerance;
			float _ColorReplaceSaturationTolerance;
			float _ColorReplaceBrightnessTolerance;
			float _ColorReplaceBias;
			float _ColorReplaceFade;
			float _SplitToningShift;
			float _SplitToningBalance;
			float _SplitToningContrast;
			float _SplitToningFade;
			float _BlackTintPower;
			float _BlackTintFade;
			float _RecolorFade;
			float _AdjustColorHueShift;
			float _AdjustColorSaturation;
			float _AdjustColorContrast;
			float _AdjustColorBrightness;
			float _AdjustColorFade;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			int _InkSpreadSpace;
			float _InkSpreadNoiseFactor;
			float _InkSpreadWidth;
			float _ShiftHueSpeed;
			float _ShiftHueFade;
			float _AddHueSpeed;
			float _AddHueBrightness;
			float _Smoothness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			float WindMinIntensity;
			float WindMaxIntensity;
			float2 WindNoiseSpeed;
			float2 WindNoiseScale;
			sampler2D _UberNoiseTexture;
			sampler2D _WindDistortionMask;
			sampler2D _UVDistortShaderMask;
			sampler2D _CustomFadeFadeMask;
			sampler2D _RecolorTintAreas;
			sampler2D _ShiftHueShaderMask;
			sampler2D _AddHueShaderMask;
			sampler2D _SineGlowShaderMask;
			sampler2D _CamouflageShaderMask;
			sampler2D _MetalShaderMask;
			sampler2D _RainbowMask;
			sampler2D _ShineShaderMask;


			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			//https://www.shadertoy.com/view/XdXGW8
			float2 GradientNoiseDir( float2 x )
			{
				const float2 k = float2( 0.3183099, 0.3678794 );
				x = x * k + k.yx;
				return -1.0 + 2.0 * frac( 16.0 * k * frac( x.x * x.y * ( x.x + x.y ) ) );
			}
			
			float GradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 i = floor( p );
				float2 f = frac( p );
				float2 u = f * f * ( 3.0 - 2.0 * f );
				return lerp( lerp( dot( GradientNoiseDir( i + float2( 0.0, 0.0 ) ), f - float2( 0.0, 0.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 0.0 ) ), f - float2( 1.0, 0.0 ) ), u.x ),
						lerp( dot( GradientNoiseDir( i + float2( 0.0, 1.0 ) ), f - float2( 0.0, 1.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 1.0 ) ), f - float2( 1.0, 1.0 ) ), u.x ), u.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord39 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g2705 = texCoord39;
				float2 appendResult72_g2705 = (float2(( _SquishStretch * ( break77_g2705.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g2705.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH_ON
				float2 staticSwitch96 = ( appendResult72_g2705 + float2( 0,0 ) );
				#else
				float2 staticSwitch96 = float2( 0,0 );
				#endif
				float2 temp_output_2_0_g2706 = staticSwitch96;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g2706 = ( ( sin( ( _TimeParameters.x * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g2706 );
				#else
				float2 staticSwitch4_g2706 = temp_output_2_0_g2706;
				#endif
				float mulTime27_g2708 = _TimeParameters.x * _VibrateFrequency;
				float3 rotatedValue21_g2708 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( _VibrateRotation * _TimeParameters.x ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g2706 = ( ( sin( mulTime27_g2708 ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g2708).xy ) + staticSwitch4_g2706 );
				#else
				float2 staticSwitch6_g2706 = staticSwitch4_g2706;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult121 = lerp( float2( 0,0 ) , staticSwitch6_g2706 , fullFade123);
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				o.ase_texcoord3 = v.vertex;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = float3( lerpResult121 ,  0.0 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				o.clipPos = MetaVertexPosition( v.vertex, v.texcoord1.xy, v.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = o.clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 texCoord131 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord39 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g2502 = texCoord39;
				float4 transform62_g2503 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g2503 = GradientNoise(( ( (transform62_g2503).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g2503 = gradientNoise95_g2503*0.5 + 0.5;
				float lerpResult86_g2503 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g2503);
				float clampResult29_g2503 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g2503 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g2503 = temp_output_3_0_g2502;
				float temp_output_39_0_g2503 = ( temp_output_1_0_g2503.y + _WindFlip );
				float3 appendResult43_g2503 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g2503 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g2503 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g2503 )));
				float2 appendResult2_g2505 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2504 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g2504 = (WorldPosition).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g2504 = (IN.ase_texcoord3.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g2504 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2505 ) );
				float lerpResult78_g2503 = lerp( 1.0 , lerpResult86_g2503 , _WindDistortionWindFactor);
				float2 lerpResult75_g2503 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2504 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g2503 ));
				float2 uv_WindDistortionMask = IN.ase_texcoord2.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g2507 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g2503 = RotateAroundAxis( appendResult43_g2503, float3( ( appendResult27_g2503 + ( ( lerpResult75_g2503 * ( 1.0 * ( tex2DNode3_g2507.r * tex2DNode3_g2507.a ) ) ) + temp_output_1_0_g2503 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g2503 * temp_output_39_0_g2503 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g2502 = (rotatedValue19_g2503).xy;
				#else
				float2 staticSwitch4_g2502 = temp_output_3_0_g2502;
				#endif
				float2 temp_output_1_0_g2508 = staticSwitch4_g2502;
				float2 appendResult2_g2520 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_22_0_g2519 = ( float2( 1,1 ) / ( 100.0 / appendResult2_g2520 ) );
				float temp_output_25_0_g2519 = ( 1.0 / max( _PixelateFade , 0.0001 ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g2508 = ( ( ( round( ( temp_output_1_0_g2508 * _PixelatePixelDensity * temp_output_22_0_g2519 * temp_output_25_0_g2519 ) ) / _PixelatePixelDensity ) / temp_output_22_0_g2519 ) / temp_output_25_0_g2519 );
				#else
				float2 staticSwitch4_g2508 = temp_output_1_0_g2508;
				#endif
				float2 appendResult2_g2511 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2510 = 0;
				if( _UVDistortSpace > 1.0 )
				ifLocalVar2_g2510 = (WorldPosition).xy;
				else if( _UVDistortSpace == 1.0 )
				ifLocalVar2_g2510 = (IN.ase_texcoord3.xyz).xy;
				else if( _UVDistortSpace < 1.0 )
				ifLocalVar2_g2510 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2511 ) );
				float2 lerpResult21_g2509 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2510 + ( _UVDistortSpeed * _TimeParameters.x ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g2513 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.ase_texcoord2.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g2512 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g2508 = ( staticSwitch4_g2508 + ( lerpResult21_g2509 * ( 100.0 / appendResult2_g2513 ) * ( _UVDistortFade * ( tex2DNode3_g2512.r * tex2DNode3_g2512.a ) ) ) );
				#else
				float2 staticSwitch5_g2508 = staticSwitch4_g2508;
				#endif
				float2 temp_output_1_0_g2515 = staticSwitch5_g2508;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g2508 = ( temp_output_1_0_g2515 + ( ( temp_output_1_0_g2515 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g2515 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g2508 = staticSwitch5_g2508;
				#endif
				float mulTime43_g2516 = _TimeParameters.x * _SineRotateFrequency;
				float3 rotatedValue36_g2516 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g2508 ,  0.0 ), float3( 0,0,1 ), ( sin( mulTime43_g2516 ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g2508 = ( ( ( (rotatedValue36_g2516).xy - float2( 0.5,0.5 ) ) / max( _SineRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch9_g2508 = staticSwitch7_g2508;
				#endif
				float mulTime6_g2517 = _TimeParameters.x * _UVRotateSpeed;
				float3 rotatedValue8_g2517 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g2508 ,  0.0 ), float3( 0,0,1 ), ( mulTime6_g2517 * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g2508 = ( ( ( (rotatedValue8_g2517).xy - float2( 0.5,0.5 ) ) / max( _UVRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch16_g2508 = staticSwitch9_g2508;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g2508 = ( ( ( _UVScrollSpeed * _TimeParameters.x ) + staticSwitch16_g2508 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g2508 = staticSwitch16_g2508;
				#endif
				float2 appendResult2_g2525 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2524 = 0;
				if( _FullDistortionSpace > 1.0 )
				ifLocalVar2_g2524 = (WorldPosition).xy;
				else if( _FullDistortionSpace == 1.0 )
				ifLocalVar2_g2524 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullDistortionSpace < 1.0 )
				ifLocalVar2_g2524 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2525 ) );
				float2 temp_output_7_0_g2521 = ifLocalVar2_g2524;
				float2 appendResult189_g2521 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2521 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_7_0_g2521 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch14_g2508 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g2521 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch14_g2508;
				#endif
				float2 appendResult2_g2533 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2532 = 0;
				if( _DirectionalDistortionSpace > 1.0 )
				ifLocalVar2_g2532 = (WorldPosition).xy;
				else if( _DirectionalDistortionSpace == 1.0 )
				ifLocalVar2_g2532 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalDistortionSpace < 1.0 )
				ifLocalVar2_g2532 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2533 ) );
				float2 temp_output_7_0_g2530 = ifLocalVar2_g2532;
				float3 rotatedValue168_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2530 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2530 = rotatedValue136_g2530;
				float clampResult154_g2530 = clamp( ( ( break130_g2530.x + break130_g2530.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g2530).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float temp_output_8_0_g2536 = ( ( ( _TimeParameters.x * _HologramDistortionSpeed ) + WorldPosition.y ) / unity_OrthoParams.y );
				float2 temp_cast_7 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_8 = (_HologramDistortionDensity).xx;
				float clampResult75_g2536 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_7 * temp_cast_8 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_9 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_10 = (_HologramDistortionScale).xx;
				float2 appendResult2_g2537 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 appendResult44_g2536 = (float2(( ( ( clampResult75_g2536 * ( tex2D( _UberNoiseTexture, ( temp_cast_9 * temp_cast_10 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g2537 ).x ) * _HologramFade ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g2536 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 appendResult2_g2544 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2543 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g2543 = (WorldPosition).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g2543 = (IN.ase_texcoord3.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g2543 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2544 ) );
				float2 temp_output_3_0_g2542 = ifLocalVar2_g2543;
				float2 temp_output_102_0 = temp_output_3_0_g2542;
				float temp_output_102_15 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_3_0_g2542 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_102_15 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult130 = lerp( texCoord131 , staticSwitch62 , fullFade123);
				float4 tex2DNode31 = tex2D( _MainTex, lerpResult130 );
				float4 temp_output_1_0_g2548 = tex2DNode31;
				float4 temp_output_1_0_g2551 = temp_output_1_0_g2548;
				float2 temp_output_7_0_g2548 = lerpResult130;
				float2 temp_output_43_0_g2551 = temp_output_7_0_g2548;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g2551 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.ase_color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g2551 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.ase_color.a / 2.5 ) - distance( temp_output_43_0_g2551 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g2551 = lerp( ( (temp_output_1_0_g2551).rgb * (IN.ase_color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g2551 ) * _SmokeDarkEdge ));
				float4 appendResult31_g2551 = (float4(lerpResult34_g2551 , ( clampResult28_g2551 * _SmokeAlpha * temp_output_1_0_g2551.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g2548 = appendResult31_g2551;
				#else
				float4 staticSwitch2_g2548 = temp_output_1_0_g2548;
				#endif
				float4 temp_output_1_0_g2549 = staticSwitch2_g2548;
				float2 temp_output_57_0_g2549 = temp_output_7_0_g2548;
				float4 tex2DNode3_g2549 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g2549 );
				float clampResult37_g2549 = clamp( ( ( ( IN.ase_color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g2549.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g2549 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g2549 = (float4(( float4( (IN.ase_color).rgb , 0.0 ) * temp_output_1_0_g2549 ).rgb , ( temp_output_1_0_g2549.a * pow( clampResult37_g2549 , ( _CustomFadeSmoothness / max( tex2DNode3_g2549.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g2548 = appendResult13_g2549;
				#else
				float4 staticSwitch3_g2548 = staticSwitch2_g2548;
				#endif
				float4 temp_output_1_0_g2553 = staticSwitch3_g2548;
				float4 temp_output_1_0_g2554 = temp_output_1_0_g2553;
				float2 appendResult4_g2554 = (float2(WorldPosition.x , WorldPosition.y));
				float2 temp_output_44_0_g2554 = ( appendResult4_g2554 * _CheckerboardTiling * 0.5 );
				float2 break12_g2554 = step( ( ceil( temp_output_44_0_g2554 ) - temp_output_44_0_g2554 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g2554.x + break12_g2554.y ) ) )).xxx;
				float4 appendResult42_g2554 = (float4(( (temp_output_1_0_g2554).rgb - temp_cast_16 ) , temp_output_1_0_g2554.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g2553 = appendResult42_g2554;
				#else
				float4 staticSwitch2_g2553 = temp_output_1_0_g2553;
				#endif
				float2 temp_output_75_0_g2555 = lerpResult130;
				float saferPower57_g2555 = max( max( ( temp_output_75_0_g2555.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g2555 = max( _FlameRadius , 0.01 );
				float clampResult70_g2555 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FlameSpeed ) + temp_output_75_0_g2555 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g2555 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g2555 - distance( temp_output_75_0_g2555 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g2555 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g2555 = ( clampResult70_g2555 * _FlameBrightness );
				float4 appendResult31_g2555 = (float4(temp_output_63_0_g2555 , temp_output_63_0_g2555 , temp_output_63_0_g2555 , clampResult70_g2555));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g2553 = ( appendResult31_g2555 * staticSwitch2_g2553 );
				#else
				float4 staticSwitch6_g2553 = staticSwitch2_g2553;
				#endif
				float4 temp_output_3_0_g2557 = staticSwitch6_g2553;
				float4 temp_output_1_0_g2558 = temp_output_3_0_g2557;
				float3 temp_output_2_0_g2558 = (temp_output_1_0_g2558).rgb;
				float4 break2_g2559 = float4( temp_output_2_0_g2558 , 0.0 );
				float temp_output_9_0_g2560 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g2560 = max( ( ( ( break2_g2559.x + break2_g2559.y + break2_g2559.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2560 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g2558 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g2558 = RGBToHSV( temp_output_2_0_g2558 );
				float clampResult35_g2558 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g2558.x , hsvTorgb5_g2558.x ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + 1.0 ) ) ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.y , hsvTorgb5_g2558.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.z , hsvTorgb5_g2558.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g2558 = max( ( clampResult35_g2558 * clampResult30_g2558 * clampResult40_g2558 ) , 0.0001 );
				float3 lerpResult23_g2558 = lerp( temp_output_2_0_g2558 , ( pow( saferPower7_g2560 , temp_output_9_0_g2560 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g2558 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g2558 = (float4(lerpResult23_g2558 , temp_output_1_0_g2558.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g2557 = appendResult4_g2558;
				#else
				float4 staticSwitch29_g2557 = temp_output_3_0_g2557;
				#endif
				float4 temp_output_1_0_g2588 = staticSwitch29_g2557;
				float4 break2_g2589 = temp_output_1_0_g2588;
				float temp_output_3_0_g2588 = ( ( break2_g2589.x + break2_g2589.y + break2_g2589.z ) / 3.0 );
				float clampResult25_g2588 = clamp( ( ( ( ( temp_output_3_0_g2588 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g2588 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g2588);
				float temp_output_9_0_g2590 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g2590 = max( ( temp_output_3_0_g2588 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2590 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g2588 = lerp( (temp_output_1_0_g2588).rgb , ( lerpResult6_g2588 * pow( saferPower7_g2590 , temp_output_9_0_g2590 ) ) , _SplitToningFade);
				float4 appendResult18_g2588 = (float4(lerpResult11_g2588 , temp_output_1_0_g2588.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g2557 = appendResult18_g2588;
				#else
				float4 staticSwitch30_g2557 = staticSwitch29_g2557;
				#endif
				float4 temp_output_1_0_g2561 = staticSwitch30_g2557;
				float3 temp_output_4_0_g2561 = (temp_output_1_0_g2561).rgb;
				float4 break12_g2561 = temp_output_1_0_g2561;
				float3 lerpResult7_g2561 = lerp( temp_output_4_0_g2561 , ( temp_output_4_0_g2561 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g2561.r , break12_g2561.g ) , break12_g2561.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g2561 = lerp( temp_output_4_0_g2561 , lerpResult7_g2561 , _BlackTintFade);
				float4 appendResult11_g2561 = (float4(lerpResult13_g2561 , break12_g2561.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g2557 = appendResult11_g2561;
				#else
				float4 staticSwitch20_g2557 = staticSwitch30_g2557;
				#endif
				float4 temp_output_1_0_g2583 = staticSwitch20_g2557;
				float2 uv_RecolorTintAreas = IN.ase_texcoord2.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g2583 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g2583 = ( ( hsvTorgb33_g2583.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.8333333 )
				ifLocalVar46_g2583 = _RecolorPurpleTint;
				else
				ifLocalVar46_g2583 = _RecolorBlueTint;
				float4 ifLocalVar44_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.6666667 )
				ifLocalVar44_g2583 = _RecolorCyanTint;
				else
				ifLocalVar44_g2583 = ifLocalVar46_g2583;
				float4 ifLocalVar47_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.3333333 )
				ifLocalVar47_g2583 = _RecolorYellowTint;
				else
				ifLocalVar47_g2583 = _RecolorGreenTint;
				float4 ifLocalVar45_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.1666667 )
				ifLocalVar45_g2583 = _RecolorRedTint;
				else
				ifLocalVar45_g2583 = ifLocalVar47_g2583;
				float4 ifLocalVar35_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.5 )
				ifLocalVar35_g2583 = ifLocalVar44_g2583;
				else
				ifLocalVar35_g2583 = ifLocalVar45_g2583;
				float4 break55_g2583 = ifLocalVar35_g2583;
				float3 appendResult56_g2583 = (float3(break55_g2583.r , break55_g2583.g , break55_g2583.b));
				float4 break2_g2584 = temp_output_1_0_g2583;
				float saferPower57_g2583 = max( ( ( break2_g2584.x + break2_g2584.y + break2_g2584.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g2583 = lerp( (temp_output_1_0_g2583).rgb , ( appendResult56_g2583 * pow( saferPower57_g2583 , max( ( break55_g2583.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g2583.z * _RecolorFade ));
				float4 appendResult30_g2583 = (float4(lerpResult26_g2583 , temp_output_1_0_g2583.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g2557 = appendResult30_g2583;
				#else
				float4 staticSwitch9_g2557 = staticSwitch20_g2557;
				#endif
				float4 break2_g2569 = staticSwitch9_g2557;
				float3 appendResult4_g2569 = (float3(break2_g2569.r , break2_g2569.g , break2_g2569.b));
				float3 hsvTorgb16_g2569 = RGBToHSV( appendResult4_g2569 );
				float clampResult18_g2569 = clamp( ( hsvTorgb16_g2569.y * _AdjustColorSaturation ) , 0.0 , 1.0 );
				float temp_output_9_0_g2570 = max( _AdjustColorContrast , 0.0 );
				float saferPower7_g2570 = max( ( hsvTorgb16_g2569.z + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2570 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb24_g2569 = HSVToRGB( float3(( hsvTorgb16_g2569.x + _AdjustColorHueShift ),clampResult18_g2569,( pow( saferPower7_g2570 , temp_output_9_0_g2570 ) * _AdjustColorBrightness )) );
				float3 lerpResult9_g2569 = lerp( appendResult4_g2569 , hsvTorgb24_g2569 , _AdjustColorFade);
				float4 appendResult3_g2569 = (float4(lerpResult9_g2569 , break2_g2569.a));
				#ifdef _ENABLEADJUSTCOLOR_ON
				float4 staticSwitch10_g2557 = appendResult3_g2569;
				#else
				float4 staticSwitch10_g2557 = staticSwitch9_g2557;
				#endif
				float4 temp_output_1_0_g2577 = staticSwitch10_g2557;
				float4 break2_g2579 = temp_output_1_0_g2577;
				float temp_output_9_0_g2580 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g2580 = max( ( ( ( break2_g2579.x + break2_g2579.y + break2_g2579.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2580 ) , 0.0 ) ) ) , 0.0001 );
				float2 appendResult2_g2582 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2581 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g2581 = (WorldPosition).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g2581 = (IN.ase_texcoord3.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g2581 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2582 ) );
				float2 temp_output_19_0_g2577 = ifLocalVar2_g2581;
				float clampResult53_g2577 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g2577 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_19_0_g2577 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g2577 = lerp( (temp_output_1_0_g2577).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g2580 , temp_output_9_0_g2580 ) ) , ( _InkSpreadFade * clampResult53_g2577 ));
				float4 appendResult9_g2577 = (float4(lerpResult7_g2577 , (temp_output_1_0_g2577).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g2557 = appendResult9_g2577;
				#else
				float4 staticSwitch17_g2557 = staticSwitch10_g2557;
				#endif
				float4 temp_output_1_0_g2575 = staticSwitch17_g2557;
				float3 temp_output_34_0_g2575 = (temp_output_1_0_g2575).rgb;
				float mulTime31_g2575 = _TimeParameters.x * _ShiftHueSpeed;
				float3 hsvTorgb15_g2575 = RGBToHSV( temp_output_34_0_g2575 );
				float3 hsvTorgb19_g2575 = HSVToRGB( float3(( mulTime31_g2575 + hsvTorgb15_g2575.x ),hsvTorgb15_g2575.y,hsvTorgb15_g2575.z) );
				float2 uv_ShiftHueShaderMask = IN.ase_texcoord2.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g2576 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g2575 = lerp( temp_output_34_0_g2575 , hsvTorgb19_g2575 , ( _ShiftHueFade * ( tex2DNode3_g2576.r * tex2DNode3_g2576.a ) ));
				float4 appendResult6_g2575 = (float4(lerpResult33_g2575 , temp_output_1_0_g2575.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g2557 = appendResult6_g2575;
				#else
				float4 staticSwitch19_g2557 = staticSwitch17_g2557;
				#endif
				float mulTime28_g2571 = _TimeParameters.x * _AddHueSpeed;
				float3 hsvTorgb3_g2572 = HSVToRGB( float3(mulTime28_g2571,1.0,1.0) );
				float3 hsvTorgb15_g2571 = RGBToHSV( hsvTorgb3_g2572 );
				float3 hsvTorgb19_g2571 = HSVToRGB( float3(hsvTorgb15_g2571.x,_AddHueSaturation,( hsvTorgb15_g2571.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g2571 = staticSwitch19_g2557;
				float4 break2_g2573 = temp_output_1_0_g2571;
				float saferPower27_g2571 = max( ( ( break2_g2573.x + break2_g2573.y + break2_g2573.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.ase_texcoord2.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g2574 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g2571 = (float4(( ( hsvTorgb19_g2571 * pow( saferPower27_g2571 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g2574.r * tex2DNode3_g2574.a ) ) ) + (temp_output_1_0_g2571).rgb ) , temp_output_1_0_g2571.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g2557 = appendResult6_g2571;
				#else
				float4 staticSwitch23_g2557 = staticSwitch19_g2557;
				#endif
				float4 temp_output_1_0_g2562 = staticSwitch23_g2557;
				float4 break2_g2565 = temp_output_1_0_g2562;
				float temp_output_9_0_g2564 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g2564 = max( ( ( ( break2_g2565.x + break2_g2565.y + break2_g2565.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2564 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.ase_texcoord2.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g2563 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float mulTime15_g2562 = _TimeParameters.x * _SineGlowFrequency;
				float4 appendResult21_g2562 = (float4(( (temp_output_1_0_g2562).rgb + ( pow( saferPower7_g2564 , temp_output_9_0_g2564 ) * ( _SineGlowFade * ( tex2DNode3_g2563.r * tex2DNode3_g2563.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( mulTime15_g2562 ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g2562.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g2557 = appendResult21_g2562;
				#else
				float4 staticSwitch28_g2557 = staticSwitch23_g2557;
				#endif
				float4 temp_output_15_0_g2566 = staticSwitch28_g2557;
				float2 temp_output_1_0_g2557 = lerpResult130;
				float2 temp_output_7_0_g2566 = temp_output_1_0_g2557;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g2566 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g2566 ) * _InnerOutlineNoiseScale ) ).r - 0.25 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g2566 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2566 = ( staticSwitch169_g2566 + temp_output_7_0_g2566 );
				float2 appendResult2_g2568 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2566 = ( 100.0 / appendResult2_g2568 );
				float temp_output_161_0_g2566 = (temp_output_15_0_g2566).a;
				float temp_output_151_0_g2566 = ( ( _InnerOutlineColor.a * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2566 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) ) * temp_output_161_0_g2566 ) * ( _InnerOutlineFade * min( ( _InnerOutlineWidth * 100.0 ) , 1.0 ) ) );
				float4 appendResult84_g2566 = (float4((_InnerOutlineColor).rgb , temp_output_151_0_g2566));
				float4 lerpResult43_g2566 = lerp( temp_output_15_0_g2566 , appendResult84_g2566 , temp_output_151_0_g2566);
				float4 appendResult162_g2566 = (float4((lerpResult43_g2566).xyz , temp_output_161_0_g2566));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g2557 = appendResult162_g2566;
				#else
				float4 staticSwitch12_g2557 = staticSwitch28_g2557;
				#endif
				float4 temp_output_15_0_g2585 = staticSwitch12_g2557;
				float temp_output_31_0_g2585 = (temp_output_15_0_g2585).a;
				float2 temp_output_7_0_g2585 = temp_output_1_0_g2557;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g2585 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g2585 ) * _OuterOutlineNoiseScale ) ).r - 0.25 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g2585 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2585 = ( staticSwitch157_g2585 + temp_output_7_0_g2585 );
				float2 appendResult2_g2587 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2585 = ( 100.0 / appendResult2_g2587 );
				float temp_output_83_0_g2585 = ( _OuterOutlineColor.a * min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2585 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) * 3.0 ) , 1.0 ) );
				float lerpResult152_g2585 = lerp( temp_output_31_0_g2585 , temp_output_83_0_g2585 , ( temp_output_83_0_g2585 * _OuterOutlineFade ));
				float4 appendResult84_g2585 = (float4((_OuterOutlineColor).rgb , lerpResult152_g2585));
				float4 lerpResult43_g2585 = lerp( appendResult84_g2585 , temp_output_15_0_g2585 , ( 1.0 - ( min( ( _OuterOutlineFade * 10.0 ) , 1.0 ) * ( 1.0 - temp_output_31_0_g2585 ) ) ));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g2557 = lerpResult43_g2585;
				#else
				float4 staticSwitch13_g2557 = staticSwitch12_g2557;
				#endif
				float4 temp_output_108_0 = staticSwitch13_g2557;
				float4 temp_output_1_0_g2591 = temp_output_108_0;
				float4 break2_g2592 = temp_output_1_0_g2591;
				float temp_output_9_0_g2593 = max( _HologramContrast , 0.0 );
				float saferPower7_g2593 = max( ( ( ( break2_g2592.x + break2_g2592.y + break2_g2592.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2593 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g2591 = (float4(( (_HologramTint).rgb * pow( saferPower7_g2593 , temp_output_9_0_g2593 ) ) , ( max( pow( abs( sin( ( ( ( ( _TimeParameters.x * _HologramLineSpeed ) + WorldPosition.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g2591.a )));
				float4 lerpResult37_g2591 = lerp( temp_output_1_0_g2591 , appendResult22_g2591 , _HologramFade);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g2591;
				#else
				float4 staticSwitch56 = temp_output_108_0;
				#endif
				float4 temp_output_1_0_g2594 = staticSwitch56;
				float4 break2_g2596 = temp_output_1_0_g2594;
				float mulTime14_g2594 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g2597 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g2594 ),1.0,1.0) );
				float3 lerpResult23_g2594 = lerp( (temp_output_1_0_g2594).rgb , ( ( ( break2_g2596.x + break2_g2596.y + break2_g2596.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g2597 ) , temp_output_102_15);
				float4 appendResult27_g2594 = (float4(lerpResult23_g2594 , temp_output_1_0_g2594.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g2594;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g2598 = staticSwitch57;
				float4 temp_output_1_0_g2634 = temp_output_3_0_g2598;
				float2 appendResult2_g2639 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2638 = 0;
				if( _CamouflageSpace > 1.0 )
				ifLocalVar2_g2638 = (WorldPosition).xy;
				else if( _CamouflageSpace == 1.0 )
				ifLocalVar2_g2638 = (IN.ase_texcoord3.xyz).xy;
				else if( _CamouflageSpace < 1.0 )
				ifLocalVar2_g2638 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2639 ) );
				float2 temp_output_42_0_g2634 = ifLocalVar2_g2638;
				float clampResult52_g2634 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g2634 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g2634 ) , clampResult52_g2634);
				float clampResult65_g2634 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g2634 = lerp( lerpResult55_g2634 , ( _CamouflageColorB * clampResult65_g2634 ) , clampResult65_g2634);
				float4 break2_g2635 = temp_output_1_0_g2634;
				float temp_output_9_0_g2642 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g2642 = max( ( ( ( break2_g2635.x + break2_g2635.y + break2_g2635.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2642 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.ase_texcoord2.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g2637 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g2634 = lerp( (temp_output_1_0_g2634).rgb , ( (lerpResult68_g2634).rgb * pow( saferPower7_g2642 , temp_output_9_0_g2642 ) ) , ( _CamouflageFade * ( tex2DNode3_g2637.r * tex2DNode3_g2637.a ) ));
				float4 appendResult7_g2634 = (float4(lerpResult4_g2634 , temp_output_1_0_g2634.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g2598 = appendResult7_g2634;
				#else
				float4 staticSwitch26_g2598 = temp_output_3_0_g2598;
				#endif
				float4 temp_output_1_0_g2626 = staticSwitch26_g2598;
				float2 appendResult2_g2633 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2632 = 0;
				if( _MetalSpace > 1.0 )
				ifLocalVar2_g2632 = (WorldPosition).xy;
				else if( _MetalSpace == 1.0 )
				ifLocalVar2_g2632 = (IN.ase_texcoord3.xyz).xy;
				else if( _MetalSpace < 1.0 )
				ifLocalVar2_g2632 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2633 ) );
				float2 temp_output_16_0_g2626 = ifLocalVar2_g2632;
				float4 break2_g2627 = temp_output_1_0_g2626;
				float temp_output_5_0_g2626 = ( ( break2_g2627.x + break2_g2627.y + break2_g2627.z ) / 3.0 );
				float temp_output_9_0_g2630 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g2630 = max( ( temp_output_5_0_g2626 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2630 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g2626 = max( temp_output_5_0_g2626 , 0.0001 );
				float2 uv_MetalShaderMask = IN.ase_texcoord2.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g2631 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g2626 = lerp( temp_output_1_0_g2626 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _MetalNoiseDistortionSpeed ) + temp_output_16_0_g2626 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( _TimeParameters.x * _MetalNoiseSpeed ) + temp_output_16_0_g2626 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g2630 , temp_output_9_0_g2630 ) ) + ( pow( saferPower2_g2626 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g2631.r * tex2DNode3_g2631.a ) ));
				float4 appendResult8_g2626 = (float4((lerpResult45_g2626).rgb , (temp_output_1_0_g2626).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g2598 = appendResult8_g2626;
				#else
				float4 staticSwitch28_g2598 = staticSwitch26_g2598;
				#endif
				float4 temp_output_1_0_g2618 = staticSwitch28_g2598;
				float4 break2_g2621 = temp_output_1_0_g2618;
				float temp_output_7_0_g2618 = ( ( break2_g2621.x + break2_g2621.y + break2_g2621.z ) / 3.0 );
				float temp_output_9_0_g2625 = max( _FrozenContrast , 0.0 );
				float saferPower7_g2625 = max( ( temp_output_7_0_g2618 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2625 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float2 appendResult2_g2624 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2623 = 0;
				if( _FrozenSpace > 1.0 )
				ifLocalVar2_g2623 = (WorldPosition).xy;
				else if( _FrozenSpace == 1.0 )
				ifLocalVar2_g2623 = (IN.ase_texcoord3.xyz).xy;
				else if( _FrozenSpace < 1.0 )
				ifLocalVar2_g2623 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2624 ) );
				float2 temp_output_3_0_g2618 = ifLocalVar2_g2623;
				float saferPower42_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float3 lerpResult57_g2618 = lerp( (temp_output_1_0_g2618).rgb , ( ( pow( saferPower7_g2625 , temp_output_9_0_g2625 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g2618 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_3_0_g2618 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FrozenHighlightDistortionSpeed ) + temp_output_3_0_g2618 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( _TimeParameters.x * _FrozenHighlightSpeed ) + temp_output_3_0_g2618 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g2618 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g2618 = (float4(lerpResult57_g2618 , temp_output_1_0_g2618.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g2598 = appendResult26_g2618;
				#else
				float4 staticSwitch29_g2598 = staticSwitch28_g2598;
				#endif
				float4 temp_output_1_0_g2611 = staticSwitch29_g2598;
				float3 temp_output_28_0_g2611 = (temp_output_1_0_g2611).rgb;
				float4 break2_g2612 = float4( temp_output_28_0_g2611 , 0.0 );
				float saferPower21_g2611 = max( ( ( break2_g2612.x + break2_g2612.y + break2_g2612.z ) / 3.0 ) , 0.0001 );
				float2 appendResult2_g2616 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2615 = 0;
				if( (int)_BurnSpace > 1.0 )
				ifLocalVar2_g2615 = (WorldPosition).xy;
				else if( (int)_BurnSpace == 1.0 )
				ifLocalVar2_g2615 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_BurnSpace < 1.0 )
				ifLocalVar2_g2615 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2616 ) );
				float2 temp_output_3_0_g2611 = ifLocalVar2_g2615;
				float clampResult68_g2611 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_3_0_g2611 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g2611 = ( ( ( _BurnRadius - distance( temp_output_3_0_g2611 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g2611 = clamp( temp_output_15_0_g2611 , 0.0 , 1.0 );
				float3 lerpResult29_g2611 = lerp( temp_output_28_0_g2611 , ( pow( saferPower21_g2611 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g2611 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g2611);
				float3 lerpResult40_g2611 = lerp( temp_output_28_0_g2611 , ( lerpResult29_g2611 + ( ( step( temp_output_15_0_g2611 , 1.0 ) * step( 0.0 , temp_output_15_0_g2611 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g2611 = (float4(lerpResult40_g2611 , temp_output_1_0_g2611.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g2598 = appendResult43_g2611;
				#else
				float4 staticSwitch32_g2598 = staticSwitch29_g2598;
				#endif
				float2 appendResult2_g2610 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2609 = 0;
				if( (int)_RainbowSpace > 1.0 )
				ifLocalVar2_g2609 = (WorldPosition).xy;
				else if( (int)_RainbowSpace == 1.0 )
				ifLocalVar2_g2609 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_RainbowSpace < 1.0 )
				ifLocalVar2_g2609 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2610 ) );
				float2 temp_output_3_0_g2604 = ifLocalVar2_g2609;
				float mulTime14_g2604 = _TimeParameters.x * _RainbowSpeed;
				float3 hsvTorgb3_g2607 = HSVToRGB( float3(( ( ( distance( temp_output_3_0_g2604 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2604 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + mulTime14_g2604 ),1.0,1.0) );
				float3 hsvTorgb36_g2604 = RGBToHSV( hsvTorgb3_g2607 );
				float3 hsvTorgb37_g2604 = HSVToRGB( float3(hsvTorgb36_g2604.x,_RainbowSaturation,( hsvTorgb36_g2604.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g2604 = staticSwitch32_g2598;
				float4 break2_g2606 = temp_output_1_0_g2604;
				float saferPower24_g2604 = max( ( ( break2_g2606.x + break2_g2606.y + break2_g2606.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.ase_texcoord2.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g2605 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g2604 = (float4(( ( hsvTorgb37_g2604 * pow( saferPower24_g2604 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g2605.r * tex2DNode3_g2605.a ) ) ) + (temp_output_1_0_g2604).rgb ) , temp_output_1_0_g2604.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g2598 = appendResult29_g2604;
				#else
				float4 staticSwitch34_g2598 = staticSwitch32_g2598;
				#endif
				float4 temp_output_1_0_g2599 = staticSwitch34_g2598;
				float4 break2_g2600 = temp_output_1_0_g2599;
				float saferPower83_g2599 = max( ( ( break2_g2600.x + break2_g2600.y + break2_g2600.z ) / 3.0 ) , 0.0001 );
				float mulTime86_g2599 = _TimeParameters.x * _ShineSpeed;
				float2 appendResult2_g2602 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2601 = 0;
				if( _ShineSpace > 1.0 )
				ifLocalVar2_g2601 = (WorldPosition).xy;
				else if( _ShineSpace == 1.0 )
				ifLocalVar2_g2601 = (IN.ase_texcoord3.xyz).xy;
				else if( _ShineSpace < 1.0 )
				ifLocalVar2_g2601 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2602 ) );
				float3 rotatedValue69_g2599 = RotateAroundAxis( float3( 0,0,0 ), float3( ( mulTime86_g2599 + ( _ShineScale * ifLocalVar2_g2601 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g2599 = rotatedValue69_g2599;
				float clampResult80_g2599 = clamp( ( ( ( sin( ( ( break67_g2599.x + break67_g2599.y ) * 10.0 ) ) + _ShineDensity ) * ( 2.0 - _ShineDensity ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.ase_texcoord2.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g2603 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g2599 = (float4(( (temp_output_1_0_g2599).rgb + ( ( pow( saferPower83_g2599 , max( _ShineContrast , 0.001 ) ) * (_ShineColor).rgb ) * clampResult80_g2599 * ( _ShineFade * ( tex2DNode3_g2603.r * tex2DNode3_g2603.a ) ) ) ) , (temp_output_1_0_g2599).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g2598 = appendResult8_g2599;
				#else
				float4 staticSwitch36_g2598 = staticSwitch34_g2598;
				#endif
				float2 appendResult2_g2646 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2645 = 0;
				if( (int)_PoisonSpace > 1.0 )
				ifLocalVar2_g2645 = (WorldPosition).xy;
				else if( (int)_PoisonSpace == 1.0 )
				ifLocalVar2_g2645 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_PoisonSpace < 1.0 )
				ifLocalVar2_g2645 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2646 ) );
				float mulTime15_g2643 = _TimeParameters.x * _PoisonShiftSpeed;
				float saferPower19_g2643 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _PoisonNoiseSpeed ) + ifLocalVar2_g2645 ) * _PoisonNoiseScale ) ).r + mulTime15_g2643 ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g2643 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g2643 = staticSwitch36_g2598;
				float3 temp_output_28_0_g2643 = (temp_output_1_0_g2643).rgb;
				float4 break2_g2647 = float4( temp_output_28_0_g2643 , 0.0 );
				float3 lerpResult32_g2643 = lerp( temp_output_28_0_g2643 , ( temp_output_24_0_g2643 * ( ( break2_g2647.x + break2_g2647.y + break2_g2647.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g2643 = (float4(( ( max( pow( saferPower19_g2643 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g2643 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g2643 ) , temp_output_1_0_g2643.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g2598 = appendResult27_g2643;
				#else
				float4 staticSwitch39_g2598 = staticSwitch36_g2598;
				#endif
				float4 temp_output_109_0 = staticSwitch39_g2598;
				float4 break4_g2648 = temp_output_109_0;
				float4 appendResult5_g2648 = (float4(break4_g2648.r , break4_g2648.g , break4_g2648.b , ( break4_g2648.a * _FullDistortionFade )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g2648;
				#else
				float4 staticSwitch77 = temp_output_109_0;
				#endif
				float4 break4_g2649 = staticSwitch77;
				float4 appendResult5_g2649 = (float4(break4_g2649.r , break4_g2649.g , break4_g2649.b , ( break4_g2649.a * (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g2649;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g2650 = staticSwitch75;
				float4 temp_output_1_0_g2651 = temp_output_1_0_g2650;
				float temp_output_53_0_g2651 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 appendResult2_g2654 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2653 = 0;
				if( _FullAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2653 = (WorldPosition).xy;
				else if( _FullAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2653 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2653 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2654 ) );
				float clampResult17_g2651 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g2651 ) ) - tex2D( _UberNoiseTexture, ( ifLocalVar2_g2653 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g2651 ) , 0.0 , 1.0 );
				float4 appendResult3_g2651 = (float4((temp_output_1_0_g2651).rgb , ( temp_output_1_0_g2651.a * clampResult17_g2651 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g2650 = appendResult3_g2651;
				#else
				float4 staticSwitch3_g2650 = temp_output_1_0_g2650;
				#endif
				float2 appendResult2_g2665 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2664 = 0;
				if( _FullGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2664 = (WorldPosition).xy;
				else if( _FullGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2664 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2664 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2665 ) );
				float temp_output_5_0_g2663 = tex2D( _UberNoiseTexture, ( ifLocalVar2_g2664 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g2663 = step( temp_output_5_0_g2663 , _FullGlowDissolveFade );
				float temp_output_53_0_g2663 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g2663 = staticSwitch3_g2650;
				float4 appendResult3_g2663 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g2663 - step( temp_output_5_0_g2663 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g2663 ) ) - temp_output_53_0_g2663 ) ) ) ) + (temp_output_1_0_g2663).rgb ) , ( temp_output_1_0_g2663.a * temp_output_61_0_g2663 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g2650 = appendResult3_g2663;
				#else
				float4 staticSwitch5_g2650 = staticSwitch3_g2650;
				#endif
				float4 temp_output_1_0_g2659 = staticSwitch5_g2650;
				float2 appendResult2_g2662 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2661 = 0;
				if( _SourceAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2661 = (WorldPosition).xy;
				else if( _SourceAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2661 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2661 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2662 ) );
				float2 temp_output_7_0_g2659 = ifLocalVar2_g2661;
				float clampResult17_g2659 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_7_0_g2659 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2659 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2659 = (float4((temp_output_1_0_g2659).rgb , ( temp_output_1_0_g2659.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g2659 ) ):( clampResult17_g2659 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g2650 = appendResult3_g2659;
				#else
				float4 staticSwitch8_g2650 = staticSwitch5_g2650;
				#endif
				float2 appendResult2_g2669 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2668 = 0;
				if( _SourceGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2668 = (WorldPosition).xy;
				else if( _SourceGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2668 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2668 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2669 ) );
				float2 temp_output_7_0_g2667 = ifLocalVar2_g2668;
				float temp_output_65_0_g2667 = ( distance( _SourceGlowDissolvePosition , temp_output_7_0_g2667 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2667 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g2667 = step( temp_output_65_0_g2667 , _SourceGlowDissolveFade );
				float temp_output_76_0_g2667 = step( temp_output_65_0_g2667 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g2667 = staticSwitch8_g2650;
				float4 appendResult3_g2667 = (float4(( ( max( ( temp_output_75_0_g2667 - temp_output_76_0_g2667 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g2667).rgb ) , ( temp_output_1_0_g2667.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g2667 ) ):( temp_output_75_0_g2667 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g2650 = appendResult3_g2667;
				#else
				float4 staticSwitch9_g2650 = staticSwitch8_g2650;
				#endif
				float4 temp_output_1_0_g2675 = staticSwitch9_g2650;
				float2 appendResult2_g2678 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2677 = 0;
				if( _DirectionalAlphaFadeSpace > 1.0 )
				ifLocalVar2_g2677 = (WorldPosition).xy;
				else if( _DirectionalAlphaFadeSpace == 1.0 )
				ifLocalVar2_g2677 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalAlphaFadeSpace < 1.0 )
				ifLocalVar2_g2677 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2678 ) );
				float2 temp_output_7_0_g2675 = ifLocalVar2_g2677;
				float3 rotatedValue136_g2675 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2675 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2675 = rotatedValue136_g2675;
				float clampResult154_g2675 = clamp( ( ( break130_g2675.x + break130_g2675.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2675 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2675 = (float4((temp_output_1_0_g2675).rgb , ( temp_output_1_0_g2675.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g2675 ) ):( clampResult154_g2675 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g2650 = appendResult3_g2675;
				#else
				float4 staticSwitch11_g2650 = staticSwitch9_g2650;
				#endif
				float2 appendResult2_g2674 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2673 = 0;
				if( _DirectionalGlowFadeSpace > 1.0 )
				ifLocalVar2_g2673 = (WorldPosition).xy;
				else if( _DirectionalGlowFadeSpace == 1.0 )
				ifLocalVar2_g2673 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalGlowFadeSpace < 1.0 )
				ifLocalVar2_g2673 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2674 ) );
				float2 temp_output_7_0_g2671 = ifLocalVar2_g2673;
				float3 rotatedValue136_g2671 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2671 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2671 = rotatedValue136_g2671;
				float temp_output_168_0_g2671 = max( ( ( break130_g2671.x + break130_g2671.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2671 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g2671 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) );
				float4 temp_output_1_0_g2671 = staticSwitch11_g2650;
				float clampResult154_g2671 = clamp( temp_output_161_0_g2671 , 0.0 , 1.0 );
				float4 appendResult3_g2671 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g2671 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) ) ) ) + (temp_output_1_0_g2671).rgb ) , ( temp_output_1_0_g2671.a * clampResult154_g2671 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g2650 = appendResult3_g2671;
				#else
				float4 staticSwitch15_g2650 = staticSwitch11_g2650;
				#endif
				float4 temp_output_1_0_g2655 = staticSwitch15_g2650;
				float2 appendResult2_g2658 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2657 = 0;
				if( _HalftoneSpace > 1.0 )
				ifLocalVar2_g2657 = (WorldPosition).xy;
				else if( _HalftoneSpace == 1.0 )
				ifLocalVar2_g2657 = (IN.ase_texcoord3.xyz).xy;
				else if( _HalftoneSpace < 1.0 )
				ifLocalVar2_g2657 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2658 ) );
				float2 temp_output_7_0_g2655 = ifLocalVar2_g2657;
				float temp_output_121_0_g2655 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_7_0_g2655 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g2656 = (float2(temp_output_121_0_g2655 , temp_output_121_0_g2655));
				float temp_output_17_0_g2656 = length( ( (( ( abs( temp_output_7_0_g2655 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g2656 ) );
				float clampResult17_g2655 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g2656 ) / fwidth( temp_output_17_0_g2656 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2655 = (float4((temp_output_1_0_g2655).rgb , ( temp_output_1_0_g2655.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g2655 ) ):( clampResult17_g2655 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g2650 = appendResult3_g2655;
				#else
				float4 staticSwitch13_g2650 = staticSwitch15_g2650;
				#endif
				float4 temp_output_1_0_g2698 = staticSwitch13_g2650;
				float4 break2_g2700 = temp_output_1_0_g2698;
				float temp_output_9_0_g2699 = max( _AddColorContrast , 0.0 );
				float saferPower7_g2699 = max( ( ( ( break2_g2700.x + break2_g2700.y + break2_g2700.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2699 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g2698 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g2699 , temp_output_9_0_g2699 ) * _AddColorFade ) + (temp_output_1_0_g2698).rgb ) , temp_output_1_0_g2698.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g2697 = appendResult6_g2698;
				#else
				float4 staticSwitch5_g2697 = staticSwitch13_g2650;
				#endif
				float4 temp_output_1_0_g2701 = staticSwitch5_g2697;
				float saferPower11_g2701 = max( ( 1.0 - temp_output_1_0_g2701.a ) , 0.0001 );
				float3 lerpResult4_g2701 = lerp( (temp_output_1_0_g2701).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g2701 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g2701.a ) ));
				float4 appendResult13_g2701 = (float4(lerpResult4_g2701 , temp_output_1_0_g2701.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g2697 = appendResult13_g2701;
				#else
				float4 staticSwitch11_g2697 = staticSwitch5_g2697;
				#endif
				float4 temp_output_1_0_g2702 = staticSwitch11_g2697;
				float4 break2_g2703 = temp_output_1_0_g2702;
				float temp_output_9_0_g2704 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g2704 = max( ( ( ( break2_g2703.x + break2_g2703.y + break2_g2703.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2704 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g2702 = lerp( (temp_output_1_0_g2702).rgb , ( pow( saferPower7_g2704 , temp_output_9_0_g2704 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g2702 = (float4(lerpResult7_g2702 , (temp_output_1_0_g2702).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g2697 = appendResult9_g2702;
				#else
				float4 staticSwitch7_g2697 = staticSwitch11_g2697;
				#endif
				float4 lerpResult125 = lerp( tex2DNode31 , staticSwitch7_g2697 , fullFade123);
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g2548 = _White;
				#else
				float4 staticSwitch8_g2548 = IN.ase_color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g2548 = _White;
				#else
				float4 staticSwitch9_g2548 = staticSwitch8_g2548;
				#endif
				float4 lerpResult126 = lerp( IN.ase_color , staticSwitch9_g2548 , fullFade123);
				float4 temp_output_119_0 = ( lerpResult125 * lerpResult126 );
				
				
				float3 Albedo = temp_output_119_0.rgb;
				float3 Emission = 0;
				float Alpha = temp_output_119_0.a;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = Albedo;
				metaInput.Emission = Emission;
				
				return MetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70403

			#pragma enable_d3d11_debug_symbols
			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _ENABLEVIBRATE_ON
			#pragma shader_feature_local _ENABLESINEMOVE_ON
			#pragma shader_feature_local _ENABLESQUISH_ON
			#pragma shader_feature_local _ENABLEGLITCH_ON
			#pragma shader_feature_local _ENABLEHOLOGRAM_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALDISTORTION_ON
			#pragma shader_feature_local _ENABLEFULLDISTORTION_ON
			#pragma shader_feature_local _ENABLEUVSCROLL_ON
			#pragma shader_feature_local _ENABLEUVROTATE_ON
			#pragma shader_feature_local _ENABLESINEROTATE_ON
			#pragma shader_feature_local _ENABLESQUEEZE_ON
			#pragma shader_feature_local _ENABLEUVDISTORT_ON
			#pragma shader_feature_local _ENABLEPIXELATE_ON
			#pragma shader_feature_local _ENABLEWIND_ON
			#pragma shader_feature_local _ENABLESTRONGTINT_ON
			#pragma shader_feature_local _ENABLEALPHATINT_ON
			#pragma shader_feature_local _ENABLEADDCOLOR_ON
			#pragma shader_feature_local _ENABLEHALFTONE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALGLOWFADE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALALPHAFADE_ON
			#pragma shader_feature_local _ENABLESOURCEGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLESOURCEALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEPOISON_ON
			#pragma shader_feature_local _ENABLESHINE_ON
			#pragma shader_feature_local _ENABLERAINBOW_ON
			#pragma shader_feature_local _ENABLEBURN_ON
			#pragma shader_feature_local _ENABLEFROZEN_ON
			#pragma shader_feature_local _ENABLEMETAL_ON
			#pragma shader_feature_local _ENABLECAMOUFLAGE_ON
			#pragma shader_feature_local _ENABLEOUTEROUTLINE_ON
			#pragma shader_feature_local _ENABLEINNEROUTLINE_ON
			#pragma shader_feature_local _ENABLESINEGLOW_ON
			#pragma shader_feature_local _ENABLEADDHUE_ON
			#pragma shader_feature_local _ENABLESHIFTHUE_ON
			#pragma shader_feature_local _ENABLEINKSPREAD_ON
			#pragma shader_feature_local _ENABLEADJUSTCOLOR_ON
			#pragma shader_feature_local _ENABLERECOLOR_ON
			#pragma shader_feature_local _ENABLEBLACKTINT_ON
			#pragma shader_feature_local _ENABLESPLITTONING_ON
			#pragma shader_feature_local _ENABLECOLORREPLACE_ON
			#pragma shader_feature_local _ENABLEFLAME_ON
			#pragma shader_feature_local _ENABLECHECKERBOARD_ON
			#pragma shader_feature_local _ENABLECUSTOMFADE_ON
			#pragma shader_feature_local _ENABLESMOKE_ON
			#pragma shader_feature_local _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma shader_feature_local _OUTEROUTLINEDISTORTIONTOGGLE_ON


			#pragma shader_feature _ _SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _HologramTint;
			float4 _ShineColor;
			float4 _RecolorRedTint;
			float4 _RecolorYellowTint;
			float4 _RecolorGreenTint;
			float4 _RecolorCyanTint;
			float4 _RecolorBlueTint;
			float4 _RecolorPurpleTint;
			float4 _RainbowMask_ST;
			float4 _RecolorTintAreas_ST;
			float4 _ShineShaderMask_ST;
			float4 _SplitToningHighlightsColor;
			float4 _SplitToningShadowsColor;
			float4 _ColorReplaceTargetColor;
			float4 _ColorReplaceColor;
			float4 _PoisonColor;
			float4 _FullGlowDissolveEdgeColor;
			float4 _BlackTintColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _InkSpreadColor;
			float4 _BurnEdgeColor;
			float4 _MetalShaderMask_ST;
			float4 _MetalHighlightColor;
			float4 _FrozenTint;
			float4 _CamouflageShaderMask_ST;
			float4 _FrozenSnowColor;
			float4 _CamouflageColorB;
			float4 _CamouflageColorA;
			float4 _ShiftHueShaderMask_ST;
			float4 _CamouflageBaseColor;
			float4 _BurnInsideNoiseColor;
			float4 _OuterOutlineColor;
			float4 _InnerOutlineColor;
			float4 _BurnInsideColor;
			float4 _SineGlowColor;
			float4 _SineGlowShaderMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _FrozenHighlightColor;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _MetalColor;
			float4 _WindDistortionMask_ST;
			float4 _NormalMap_ST;
			float4 _MainTex_TexelSize;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _AlphaTintColor;
			float4 _AddColorColor;
			float4 _SmoothnessMap_ST;
			float2 _OuterOutlineDistortionIntensity;
			float2 _UVDistortSpeed;
			float2 _UVDistortNoiseScale;
			float2 _FlameNoiseScale;
			float2 _PoisonNoiseSpeed;
			float2 _BurnEdgeNoiseScale;
			float2 _FrozenHighlightScale;
			float2 _GlitchNoiseSpeed;
			float2 _UVDistortTo;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _SqueezeCenter;
			float2 _GlitchNoiseScale;
			float2 _FrozenHighlightDistortion;
			float2 _FrozenHighlightSpeed;
			float2 _UVDistortFrom;
			float2 _PoisonNoiseScale;
			float2 _OuterOutlineNoiseSpeed;
			float2 _HalftonePosition;
			float2 _BurnPosition;
			float2 _WindFromDistortion;
			float2 _RainbowCenter;
			float2 _RainbowNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _InkSpreadPosition;
			float2 _OuterOutlineNoiseScale;
			float2 _BurnInsideNoiseScale;
			float2 _WindToDistortion;
			float2 _InnerOutlineNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _WindDistortionSpeed;
			float2 _BurnSwirlNoiseScale;
			float2 _WindDistortionScale;
			float2 _FlameSpeed;
			float2 _InnerOutlineNoiseSpeed;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _FrozenHighlightDistortionScale;
			float2 _CamouflageAnimationSpeed;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _FullDistortionNoiseScale;
			float2 _CamouflageNoiseScaleB;
			float2 _SourceGlowDissolvePosition;
			float2 _SqueezeScale;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _MetalNoiseDistortionScale;
			float2 _SineMoveOffset;
			float2 _MetalNoiseDistortion;
			float2 _SineMoveFrequency;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _DirectionalDistortionDistortionScale;
			float2 _DirectionalDistortionNoiseScale;
			float2 _MetalNoiseDistortionSpeed;
			float2 _FullDistortionDistortion;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortion;
			float2 _SineRotatePivot;
			float2 _FullGlowDissolveNoiseScale;
			float2 _CustomFadeNoiseScale;
			float2 _CamouflageDistortionScale;
			float2 _CamouflageDistortionIntensity;
			float2 _CamouflageNoiseScaleA;
			float2 _FrozenSnowScale;
			float2 _MetalNoiseSpeed;
			float2 _SourceAlphaDissolvePosition;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _MetalNoiseScale;
			float2 _GlitchMaskScale;
			float2 _GlitchMaskSpeed;
			float2 _UVScrollSpeed;
			float2 _UVRotatePivot;
			float2 _DirectionalDistortionDistortion;
			float _NormalIntensity;
			float _AddColorFade;
			float _BurnRadius;
			float _AddColorContrast;
			float _FrozenSnowDensity;
			float _BurnSwirlFactor;
			float _AlphaTintPower;
			float _FrozenSnowContrast;
			float _BurnSpace;
			float _BurnInsideNoiseFactor;
			float _AlphaTintFade;
			float _BurnInsideContrast;
			float _FrozenFade;
			float _FrozenHighlightContrast;
			float _AlphaTintMinAlpha;
			int _FrozenSpace;
			float _StrongTintFade;
			float _StrongTintContrast;
			float _FrozenHighlightDensity;
			float _FrozenContrast;
			float _HalftoneFadeWidth;
			float _ShineRotation;
			float _BurnWidth;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			int _FullAlphaDissolveSpace;
			int _FullGlowDissolveSpace;
			float _FullGlowDissolveFade;
			float _FullGlowDissolveWidth;
			float _SourceAlphaDissolveInvert;
			float _SourceAlphaDissolveFade;
			int _SourceAlphaDissolveSpace;
			float _SourceAlphaDissolveNoiseFactor;
			float _SourceAlphaDissolveWidth;
			int _SourceGlowDissolveSpace;
			float _SourceGlowDissolveNoiseFactor;
			float _SourceGlowDissolveFade;
			float _SourceGlowDissolveWidth;
			float _SourceGlowDissolveInvert;
			float _DirectionalAlphaFadeInvert;
			float _DirectionalAlphaFadeRotation;
			int _DirectionalAlphaFadeSpace;
			float _DirectionalAlphaFadeFade;
			float _DirectionalAlphaFadeNoiseFactor;
			float _DirectionalAlphaFadeWidth;
			float _DirectionalGlowFadeFade;
			float _DirectionalGlowFadeInvert;
			float _PoisonNoiseBrightness;
			float _BurnEdgeNoiseFactor;
			float _PoisonFade;
			float _PoisonDensity;
			float _BurnFade;
			float _RainbowSpace;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineContrast;
			int _DirectionalGlowFadeSpace;
			float _ShineSpeed;
			float _HalftoneFade;
			float _HalftoneTiling;
			int _HalftoneSpace;
			float _ShineScale;
			int _ShineSpace;
			float _HalftoneInvert;
			float _ShineDensity;
			float _ShineSmoothness;
			float _ShineFade;
			float _DirectionalGlowFadeWidth;
			float _PoisonSpace;
			float _MetalFade;
			float _PoisonShiftSpeed;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeRotation;
			float _SquishStretch;
			float _MetalHighlightContrast;
			float _DirectionalDistortionRandomDirection;
			float _DirectionalDistortionInvert;
			float _DirectionalDistortionRotation;
			float _DirectionalDistortionFade;
			float _DirectionalDistortionNoiseFactor;
			float _DirectionalDistortionWidth;
			float _HologramDistortionSpeed;
			float _HologramDistortionDensity;
			float _HologramDistortionScale;
			float _HologramDistortionOffset;
			float _HologramFade;
			int _GlitchSpace;
			int _DirectionalDistortionSpace;
			float _GlitchMaskMin;
			float _SmokeVertexSeed;
			float _SmokeNoiseScale;
			float _SmokeNoiseFactor;
			float _SmokeSmoothness;
			float _SmokeDarkEdge;
			float _SmokeAlpha;
			float _CustomFadeNoiseFactor;
			float _CustomFadeSmoothness;
			float _CustomFadeAlpha;
			float _CheckerboardDarken;
			float _CheckerboardTiling;
			float _FlameNoiseHeightFactor;
			float _GlitchFade;
			int _FullDistortionSpace;
			float _FullDistortionFade;
			float _UVRotateScale;
			float _SquishFade;
			float _SquishFlip;
			float _SquishSquish;
			float _SineMoveFade;
			float _VibrateFrequency;
			float _VibrateOffset;
			float _VibrateFade;
			float _VibrateRotation;
			float _FullFade;
			float _WindRotationWindFactor;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _WindSquishWindFactor;
			float _WindDistortionWindFactor;
			float _PixelatePixelDensity;
			float _PixelateFade;
			int _UVDistortSpace;
			float _UVDistortFade;
			float _SqueezePower;
			float _SqueezeFade;
			float _SineRotateFrequency;
			float _SineRotateAngle;
			float _SineRotateFade;
			float _SineRotateScale;
			float _UVRotateSpeed;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _FlameBrightness;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _InnerOutlineWidth;
			float _InnerOutlineFade;
			float _OuterOutlineWidth;
			float _OuterOutlineFade;
			float _Metallic;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _HologramLineFrequency;
			float _HologramLineGap;
			float _HologramMinAlpha;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
			float _CamouflageDensityA;
			float _CamouflageAnimated;
			int _CamouflageSpace;
			float _CamouflageSmoothnessA;
			float _CamouflageDensityB;
			float _CamouflageSmoothnessB;
			float _CamouflageContrast;
			float _CamouflageFade;
			float _MetalHighlightDensity;
			int _MetalSpace;
			float _AddHueFade;
			float _MetalContrast;
			float _AddHueContrast;
			float _AddHueSaturation;
			float _ColorReplaceContrast;
			float _ColorReplaceHueTolerance;
			float _ColorReplaceSaturationTolerance;
			float _ColorReplaceBrightnessTolerance;
			float _ColorReplaceBias;
			float _ColorReplaceFade;
			float _SplitToningShift;
			float _SplitToningBalance;
			float _SplitToningContrast;
			float _SplitToningFade;
			float _BlackTintPower;
			float _BlackTintFade;
			float _RecolorFade;
			float _AdjustColorHueShift;
			float _AdjustColorSaturation;
			float _AdjustColorContrast;
			float _AdjustColorBrightness;
			float _AdjustColorFade;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			int _InkSpreadSpace;
			float _InkSpreadNoiseFactor;
			float _InkSpreadWidth;
			float _ShiftHueSpeed;
			float _ShiftHueFade;
			float _AddHueSpeed;
			float _AddHueBrightness;
			float _Smoothness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;
			float WindMinIntensity;
			float WindMaxIntensity;
			float2 WindNoiseSpeed;
			float2 WindNoiseScale;
			sampler2D _UberNoiseTexture;
			sampler2D _WindDistortionMask;
			sampler2D _UVDistortShaderMask;
			sampler2D _CustomFadeFadeMask;
			sampler2D _RecolorTintAreas;
			sampler2D _ShiftHueShaderMask;
			sampler2D _AddHueShaderMask;
			sampler2D _SineGlowShaderMask;
			sampler2D _CamouflageShaderMask;
			sampler2D _MetalShaderMask;
			sampler2D _RainbowMask;
			sampler2D _ShineShaderMask;


			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			//https://www.shadertoy.com/view/XdXGW8
			float2 GradientNoiseDir( float2 x )
			{
				const float2 k = float2( 0.3183099, 0.3678794 );
				x = x * k + k.yx;
				return -1.0 + 2.0 * frac( 16.0 * k * frac( x.x * x.y * ( x.x + x.y ) ) );
			}
			
			float GradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 i = floor( p );
				float2 f = frac( p );
				float2 u = f * f * ( 3.0 - 2.0 * f );
				return lerp( lerp( dot( GradientNoiseDir( i + float2( 0.0, 0.0 ) ), f - float2( 0.0, 0.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 0.0 ) ), f - float2( 1.0, 0.0 ) ), u.x ),
						lerp( dot( GradientNoiseDir( i + float2( 0.0, 1.0 ) ), f - float2( 0.0, 1.0 ) ),
						dot( GradientNoiseDir( i + float2( 1.0, 1.0 ) ), f - float2( 1.0, 1.0 ) ), u.x ), u.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 texCoord39 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g2705 = texCoord39;
				float2 appendResult72_g2705 = (float2(( _SquishStretch * ( break77_g2705.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g2705.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH_ON
				float2 staticSwitch96 = ( appendResult72_g2705 + float2( 0,0 ) );
				#else
				float2 staticSwitch96 = float2( 0,0 );
				#endif
				float2 temp_output_2_0_g2706 = staticSwitch96;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g2706 = ( ( sin( ( _TimeParameters.x * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g2706 );
				#else
				float2 staticSwitch4_g2706 = temp_output_2_0_g2706;
				#endif
				float mulTime27_g2708 = _TimeParameters.x * _VibrateFrequency;
				float3 rotatedValue21_g2708 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( _VibrateRotation * _TimeParameters.x ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g2706 = ( ( sin( mulTime27_g2708 ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g2708).xy ) + staticSwitch4_g2706 );
				#else
				float2 staticSwitch6_g2706 = staticSwitch4_g2706;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult121 = lerp( float2( 0,0 ) , staticSwitch6_g2706 , fullFade123);
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				o.ase_texcoord3 = v.vertex;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = float3( lerpResult121 ,  0.0 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 texCoord131 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord39 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g2502 = texCoord39;
				float4 transform62_g2503 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g2503 = GradientNoise(( ( (transform62_g2503).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g2503 = gradientNoise95_g2503*0.5 + 0.5;
				float lerpResult86_g2503 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g2503);
				float clampResult29_g2503 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g2503 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g2503 = temp_output_3_0_g2502;
				float temp_output_39_0_g2503 = ( temp_output_1_0_g2503.y + _WindFlip );
				float3 appendResult43_g2503 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g2503 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g2503 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g2503 )));
				float2 appendResult2_g2505 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2504 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g2504 = (WorldPosition).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g2504 = (IN.ase_texcoord3.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g2504 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2505 ) );
				float lerpResult78_g2503 = lerp( 1.0 , lerpResult86_g2503 , _WindDistortionWindFactor);
				float2 lerpResult75_g2503 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2504 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g2503 ));
				float2 uv_WindDistortionMask = IN.ase_texcoord2.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g2507 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g2503 = RotateAroundAxis( appendResult43_g2503, float3( ( appendResult27_g2503 + ( ( lerpResult75_g2503 * ( 1.0 * ( tex2DNode3_g2507.r * tex2DNode3_g2507.a ) ) ) + temp_output_1_0_g2503 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g2503 * temp_output_39_0_g2503 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g2502 = (rotatedValue19_g2503).xy;
				#else
				float2 staticSwitch4_g2502 = temp_output_3_0_g2502;
				#endif
				float2 temp_output_1_0_g2508 = staticSwitch4_g2502;
				float2 appendResult2_g2520 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_22_0_g2519 = ( float2( 1,1 ) / ( 100.0 / appendResult2_g2520 ) );
				float temp_output_25_0_g2519 = ( 1.0 / max( _PixelateFade , 0.0001 ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g2508 = ( ( ( round( ( temp_output_1_0_g2508 * _PixelatePixelDensity * temp_output_22_0_g2519 * temp_output_25_0_g2519 ) ) / _PixelatePixelDensity ) / temp_output_22_0_g2519 ) / temp_output_25_0_g2519 );
				#else
				float2 staticSwitch4_g2508 = temp_output_1_0_g2508;
				#endif
				float2 appendResult2_g2511 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2510 = 0;
				if( _UVDistortSpace > 1.0 )
				ifLocalVar2_g2510 = (WorldPosition).xy;
				else if( _UVDistortSpace == 1.0 )
				ifLocalVar2_g2510 = (IN.ase_texcoord3.xyz).xy;
				else if( _UVDistortSpace < 1.0 )
				ifLocalVar2_g2510 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2511 ) );
				float2 lerpResult21_g2509 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g2510 + ( _UVDistortSpeed * _TimeParameters.x ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g2513 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.ase_texcoord2.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g2512 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g2508 = ( staticSwitch4_g2508 + ( lerpResult21_g2509 * ( 100.0 / appendResult2_g2513 ) * ( _UVDistortFade * ( tex2DNode3_g2512.r * tex2DNode3_g2512.a ) ) ) );
				#else
				float2 staticSwitch5_g2508 = staticSwitch4_g2508;
				#endif
				float2 temp_output_1_0_g2515 = staticSwitch5_g2508;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g2508 = ( temp_output_1_0_g2515 + ( ( temp_output_1_0_g2515 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g2515 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g2508 = staticSwitch5_g2508;
				#endif
				float mulTime43_g2516 = _TimeParameters.x * _SineRotateFrequency;
				float3 rotatedValue36_g2516 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g2508 ,  0.0 ), float3( 0,0,1 ), ( sin( mulTime43_g2516 ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g2508 = ( ( ( (rotatedValue36_g2516).xy - float2( 0.5,0.5 ) ) / max( _SineRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch9_g2508 = staticSwitch7_g2508;
				#endif
				float mulTime6_g2517 = _TimeParameters.x * _UVRotateSpeed;
				float3 rotatedValue8_g2517 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g2508 ,  0.0 ), float3( 0,0,1 ), ( mulTime6_g2517 * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g2508 = ( ( ( (rotatedValue8_g2517).xy - float2( 0.5,0.5 ) ) / max( _UVRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch16_g2508 = staticSwitch9_g2508;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g2508 = ( ( ( _UVScrollSpeed * _TimeParameters.x ) + staticSwitch16_g2508 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g2508 = staticSwitch16_g2508;
				#endif
				float2 appendResult2_g2525 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2524 = 0;
				if( _FullDistortionSpace > 1.0 )
				ifLocalVar2_g2524 = (WorldPosition).xy;
				else if( _FullDistortionSpace == 1.0 )
				ifLocalVar2_g2524 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullDistortionSpace < 1.0 )
				ifLocalVar2_g2524 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2525 ) );
				float2 temp_output_7_0_g2521 = ifLocalVar2_g2524;
				float2 appendResult189_g2521 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2521 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_7_0_g2521 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch14_g2508 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g2521 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch14_g2508;
				#endif
				float2 appendResult2_g2533 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2532 = 0;
				if( _DirectionalDistortionSpace > 1.0 )
				ifLocalVar2_g2532 = (WorldPosition).xy;
				else if( _DirectionalDistortionSpace == 1.0 )
				ifLocalVar2_g2532 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalDistortionSpace < 1.0 )
				ifLocalVar2_g2532 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2533 ) );
				float2 temp_output_7_0_g2530 = ifLocalVar2_g2532;
				float3 rotatedValue168_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g2530 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2530 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2530 = rotatedValue136_g2530;
				float clampResult154_g2530 = clamp( ( ( break130_g2530.x + break130_g2530.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2530 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g2530).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float temp_output_8_0_g2536 = ( ( ( _TimeParameters.x * _HologramDistortionSpeed ) + WorldPosition.y ) / unity_OrthoParams.y );
				float2 temp_cast_7 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_8 = (_HologramDistortionDensity).xx;
				float clampResult75_g2536 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_7 * temp_cast_8 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_9 = (temp_output_8_0_g2536).xx;
				float2 temp_cast_10 = (_HologramDistortionScale).xx;
				float2 appendResult2_g2537 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 appendResult44_g2536 = (float2(( ( ( clampResult75_g2536 * ( tex2D( _UberNoiseTexture, ( temp_cast_9 * temp_cast_10 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g2537 ).x ) * _HologramFade ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g2536 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 appendResult2_g2544 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2543 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g2543 = (WorldPosition).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g2543 = (IN.ase_texcoord3.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g2543 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2544 ) );
				float2 temp_output_3_0_g2542 = ifLocalVar2_g2543;
				float2 temp_output_102_0 = temp_output_3_0_g2542;
				float temp_output_102_15 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_3_0_g2542 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_102_15 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult130 = lerp( texCoord131 , staticSwitch62 , fullFade123);
				float4 tex2DNode31 = tex2D( _MainTex, lerpResult130 );
				float4 temp_output_1_0_g2548 = tex2DNode31;
				float4 temp_output_1_0_g2551 = temp_output_1_0_g2548;
				float2 temp_output_7_0_g2548 = lerpResult130;
				float2 temp_output_43_0_g2551 = temp_output_7_0_g2548;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g2551 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.ase_color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g2551 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.ase_color.a / 2.5 ) - distance( temp_output_43_0_g2551 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g2551 = lerp( ( (temp_output_1_0_g2551).rgb * (IN.ase_color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g2551 ) * _SmokeDarkEdge ));
				float4 appendResult31_g2551 = (float4(lerpResult34_g2551 , ( clampResult28_g2551 * _SmokeAlpha * temp_output_1_0_g2551.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g2548 = appendResult31_g2551;
				#else
				float4 staticSwitch2_g2548 = temp_output_1_0_g2548;
				#endif
				float4 temp_output_1_0_g2549 = staticSwitch2_g2548;
				float2 temp_output_57_0_g2549 = temp_output_7_0_g2548;
				float4 tex2DNode3_g2549 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g2549 );
				float clampResult37_g2549 = clamp( ( ( ( IN.ase_color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g2549.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g2549 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g2549 = (float4(( float4( (IN.ase_color).rgb , 0.0 ) * temp_output_1_0_g2549 ).rgb , ( temp_output_1_0_g2549.a * pow( clampResult37_g2549 , ( _CustomFadeSmoothness / max( tex2DNode3_g2549.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g2548 = appendResult13_g2549;
				#else
				float4 staticSwitch3_g2548 = staticSwitch2_g2548;
				#endif
				float4 temp_output_1_0_g2553 = staticSwitch3_g2548;
				float4 temp_output_1_0_g2554 = temp_output_1_0_g2553;
				float2 appendResult4_g2554 = (float2(WorldPosition.x , WorldPosition.y));
				float2 temp_output_44_0_g2554 = ( appendResult4_g2554 * _CheckerboardTiling * 0.5 );
				float2 break12_g2554 = step( ( ceil( temp_output_44_0_g2554 ) - temp_output_44_0_g2554 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g2554.x + break12_g2554.y ) ) )).xxx;
				float4 appendResult42_g2554 = (float4(( (temp_output_1_0_g2554).rgb - temp_cast_16 ) , temp_output_1_0_g2554.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g2553 = appendResult42_g2554;
				#else
				float4 staticSwitch2_g2553 = temp_output_1_0_g2553;
				#endif
				float2 temp_output_75_0_g2555 = lerpResult130;
				float saferPower57_g2555 = max( max( ( temp_output_75_0_g2555.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g2555 = max( _FlameRadius , 0.01 );
				float clampResult70_g2555 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FlameSpeed ) + temp_output_75_0_g2555 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g2555 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g2555 - distance( temp_output_75_0_g2555 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g2555 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g2555 = ( clampResult70_g2555 * _FlameBrightness );
				float4 appendResult31_g2555 = (float4(temp_output_63_0_g2555 , temp_output_63_0_g2555 , temp_output_63_0_g2555 , clampResult70_g2555));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g2553 = ( appendResult31_g2555 * staticSwitch2_g2553 );
				#else
				float4 staticSwitch6_g2553 = staticSwitch2_g2553;
				#endif
				float4 temp_output_3_0_g2557 = staticSwitch6_g2553;
				float4 temp_output_1_0_g2558 = temp_output_3_0_g2557;
				float3 temp_output_2_0_g2558 = (temp_output_1_0_g2558).rgb;
				float4 break2_g2559 = float4( temp_output_2_0_g2558 , 0.0 );
				float temp_output_9_0_g2560 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g2560 = max( ( ( ( break2_g2559.x + break2_g2559.y + break2_g2559.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2560 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g2558 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g2558 = RGBToHSV( temp_output_2_0_g2558 );
				float clampResult35_g2558 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g2558.x , hsvTorgb5_g2558.x ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + 1.0 ) ) ) , distance( hsvTorgb7_g2558.x , ( hsvTorgb5_g2558.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.y , hsvTorgb5_g2558.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g2558 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2558.z , hsvTorgb5_g2558.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g2558 = max( ( clampResult35_g2558 * clampResult30_g2558 * clampResult40_g2558 ) , 0.0001 );
				float3 lerpResult23_g2558 = lerp( temp_output_2_0_g2558 , ( pow( saferPower7_g2560 , temp_output_9_0_g2560 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g2558 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g2558 = (float4(lerpResult23_g2558 , temp_output_1_0_g2558.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g2557 = appendResult4_g2558;
				#else
				float4 staticSwitch29_g2557 = temp_output_3_0_g2557;
				#endif
				float4 temp_output_1_0_g2588 = staticSwitch29_g2557;
				float4 break2_g2589 = temp_output_1_0_g2588;
				float temp_output_3_0_g2588 = ( ( break2_g2589.x + break2_g2589.y + break2_g2589.z ) / 3.0 );
				float clampResult25_g2588 = clamp( ( ( ( ( temp_output_3_0_g2588 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g2588 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g2588);
				float temp_output_9_0_g2590 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g2590 = max( ( temp_output_3_0_g2588 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2590 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g2588 = lerp( (temp_output_1_0_g2588).rgb , ( lerpResult6_g2588 * pow( saferPower7_g2590 , temp_output_9_0_g2590 ) ) , _SplitToningFade);
				float4 appendResult18_g2588 = (float4(lerpResult11_g2588 , temp_output_1_0_g2588.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g2557 = appendResult18_g2588;
				#else
				float4 staticSwitch30_g2557 = staticSwitch29_g2557;
				#endif
				float4 temp_output_1_0_g2561 = staticSwitch30_g2557;
				float3 temp_output_4_0_g2561 = (temp_output_1_0_g2561).rgb;
				float4 break12_g2561 = temp_output_1_0_g2561;
				float3 lerpResult7_g2561 = lerp( temp_output_4_0_g2561 , ( temp_output_4_0_g2561 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g2561.r , break12_g2561.g ) , break12_g2561.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g2561 = lerp( temp_output_4_0_g2561 , lerpResult7_g2561 , _BlackTintFade);
				float4 appendResult11_g2561 = (float4(lerpResult13_g2561 , break12_g2561.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g2557 = appendResult11_g2561;
				#else
				float4 staticSwitch20_g2557 = staticSwitch30_g2557;
				#endif
				float4 temp_output_1_0_g2583 = staticSwitch20_g2557;
				float2 uv_RecolorTintAreas = IN.ase_texcoord2.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g2583 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g2583 = ( ( hsvTorgb33_g2583.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.8333333 )
				ifLocalVar46_g2583 = _RecolorPurpleTint;
				else
				ifLocalVar46_g2583 = _RecolorBlueTint;
				float4 ifLocalVar44_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.6666667 )
				ifLocalVar44_g2583 = _RecolorCyanTint;
				else
				ifLocalVar44_g2583 = ifLocalVar46_g2583;
				float4 ifLocalVar47_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.3333333 )
				ifLocalVar47_g2583 = _RecolorYellowTint;
				else
				ifLocalVar47_g2583 = _RecolorGreenTint;
				float4 ifLocalVar45_g2583 = 0;
				if( temp_output_43_0_g2583 <= 0.1666667 )
				ifLocalVar45_g2583 = _RecolorRedTint;
				else
				ifLocalVar45_g2583 = ifLocalVar47_g2583;
				float4 ifLocalVar35_g2583 = 0;
				if( temp_output_43_0_g2583 >= 0.5 )
				ifLocalVar35_g2583 = ifLocalVar44_g2583;
				else
				ifLocalVar35_g2583 = ifLocalVar45_g2583;
				float4 break55_g2583 = ifLocalVar35_g2583;
				float3 appendResult56_g2583 = (float3(break55_g2583.r , break55_g2583.g , break55_g2583.b));
				float4 break2_g2584 = temp_output_1_0_g2583;
				float saferPower57_g2583 = max( ( ( break2_g2584.x + break2_g2584.y + break2_g2584.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g2583 = lerp( (temp_output_1_0_g2583).rgb , ( appendResult56_g2583 * pow( saferPower57_g2583 , max( ( break55_g2583.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g2583.z * _RecolorFade ));
				float4 appendResult30_g2583 = (float4(lerpResult26_g2583 , temp_output_1_0_g2583.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g2557 = appendResult30_g2583;
				#else
				float4 staticSwitch9_g2557 = staticSwitch20_g2557;
				#endif
				float4 break2_g2569 = staticSwitch9_g2557;
				float3 appendResult4_g2569 = (float3(break2_g2569.r , break2_g2569.g , break2_g2569.b));
				float3 hsvTorgb16_g2569 = RGBToHSV( appendResult4_g2569 );
				float clampResult18_g2569 = clamp( ( hsvTorgb16_g2569.y * _AdjustColorSaturation ) , 0.0 , 1.0 );
				float temp_output_9_0_g2570 = max( _AdjustColorContrast , 0.0 );
				float saferPower7_g2570 = max( ( hsvTorgb16_g2569.z + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2570 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb24_g2569 = HSVToRGB( float3(( hsvTorgb16_g2569.x + _AdjustColorHueShift ),clampResult18_g2569,( pow( saferPower7_g2570 , temp_output_9_0_g2570 ) * _AdjustColorBrightness )) );
				float3 lerpResult9_g2569 = lerp( appendResult4_g2569 , hsvTorgb24_g2569 , _AdjustColorFade);
				float4 appendResult3_g2569 = (float4(lerpResult9_g2569 , break2_g2569.a));
				#ifdef _ENABLEADJUSTCOLOR_ON
				float4 staticSwitch10_g2557 = appendResult3_g2569;
				#else
				float4 staticSwitch10_g2557 = staticSwitch9_g2557;
				#endif
				float4 temp_output_1_0_g2577 = staticSwitch10_g2557;
				float4 break2_g2579 = temp_output_1_0_g2577;
				float temp_output_9_0_g2580 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g2580 = max( ( ( ( break2_g2579.x + break2_g2579.y + break2_g2579.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2580 ) , 0.0 ) ) ) , 0.0001 );
				float2 appendResult2_g2582 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2581 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g2581 = (WorldPosition).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g2581 = (IN.ase_texcoord3.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g2581 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2582 ) );
				float2 temp_output_19_0_g2577 = ifLocalVar2_g2581;
				float clampResult53_g2577 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g2577 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_19_0_g2577 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g2577 = lerp( (temp_output_1_0_g2577).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g2580 , temp_output_9_0_g2580 ) ) , ( _InkSpreadFade * clampResult53_g2577 ));
				float4 appendResult9_g2577 = (float4(lerpResult7_g2577 , (temp_output_1_0_g2577).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g2557 = appendResult9_g2577;
				#else
				float4 staticSwitch17_g2557 = staticSwitch10_g2557;
				#endif
				float4 temp_output_1_0_g2575 = staticSwitch17_g2557;
				float3 temp_output_34_0_g2575 = (temp_output_1_0_g2575).rgb;
				float mulTime31_g2575 = _TimeParameters.x * _ShiftHueSpeed;
				float3 hsvTorgb15_g2575 = RGBToHSV( temp_output_34_0_g2575 );
				float3 hsvTorgb19_g2575 = HSVToRGB( float3(( mulTime31_g2575 + hsvTorgb15_g2575.x ),hsvTorgb15_g2575.y,hsvTorgb15_g2575.z) );
				float2 uv_ShiftHueShaderMask = IN.ase_texcoord2.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g2576 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g2575 = lerp( temp_output_34_0_g2575 , hsvTorgb19_g2575 , ( _ShiftHueFade * ( tex2DNode3_g2576.r * tex2DNode3_g2576.a ) ));
				float4 appendResult6_g2575 = (float4(lerpResult33_g2575 , temp_output_1_0_g2575.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g2557 = appendResult6_g2575;
				#else
				float4 staticSwitch19_g2557 = staticSwitch17_g2557;
				#endif
				float mulTime28_g2571 = _TimeParameters.x * _AddHueSpeed;
				float3 hsvTorgb3_g2572 = HSVToRGB( float3(mulTime28_g2571,1.0,1.0) );
				float3 hsvTorgb15_g2571 = RGBToHSV( hsvTorgb3_g2572 );
				float3 hsvTorgb19_g2571 = HSVToRGB( float3(hsvTorgb15_g2571.x,_AddHueSaturation,( hsvTorgb15_g2571.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g2571 = staticSwitch19_g2557;
				float4 break2_g2573 = temp_output_1_0_g2571;
				float saferPower27_g2571 = max( ( ( break2_g2573.x + break2_g2573.y + break2_g2573.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.ase_texcoord2.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g2574 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g2571 = (float4(( ( hsvTorgb19_g2571 * pow( saferPower27_g2571 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g2574.r * tex2DNode3_g2574.a ) ) ) + (temp_output_1_0_g2571).rgb ) , temp_output_1_0_g2571.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g2557 = appendResult6_g2571;
				#else
				float4 staticSwitch23_g2557 = staticSwitch19_g2557;
				#endif
				float4 temp_output_1_0_g2562 = staticSwitch23_g2557;
				float4 break2_g2565 = temp_output_1_0_g2562;
				float temp_output_9_0_g2564 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g2564 = max( ( ( ( break2_g2565.x + break2_g2565.y + break2_g2565.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2564 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.ase_texcoord2.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g2563 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float mulTime15_g2562 = _TimeParameters.x * _SineGlowFrequency;
				float4 appendResult21_g2562 = (float4(( (temp_output_1_0_g2562).rgb + ( pow( saferPower7_g2564 , temp_output_9_0_g2564 ) * ( _SineGlowFade * ( tex2DNode3_g2563.r * tex2DNode3_g2563.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( mulTime15_g2562 ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g2562.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g2557 = appendResult21_g2562;
				#else
				float4 staticSwitch28_g2557 = staticSwitch23_g2557;
				#endif
				float4 temp_output_15_0_g2566 = staticSwitch28_g2557;
				float2 temp_output_1_0_g2557 = lerpResult130;
				float2 temp_output_7_0_g2566 = temp_output_1_0_g2557;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g2566 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g2566 ) * _InnerOutlineNoiseScale ) ).r - 0.25 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g2566 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2566 = ( staticSwitch169_g2566 + temp_output_7_0_g2566 );
				float2 appendResult2_g2568 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2566 = ( 100.0 / appendResult2_g2568 );
				float temp_output_161_0_g2566 = (temp_output_15_0_g2566).a;
				float temp_output_151_0_g2566 = ( ( _InnerOutlineColor.a * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2566 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2566 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2566 ) ) ).a ) ) * temp_output_161_0_g2566 ) * ( _InnerOutlineFade * min( ( _InnerOutlineWidth * 100.0 ) , 1.0 ) ) );
				float4 appendResult84_g2566 = (float4((_InnerOutlineColor).rgb , temp_output_151_0_g2566));
				float4 lerpResult43_g2566 = lerp( temp_output_15_0_g2566 , appendResult84_g2566 , temp_output_151_0_g2566);
				float4 appendResult162_g2566 = (float4((lerpResult43_g2566).xyz , temp_output_161_0_g2566));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g2557 = appendResult162_g2566;
				#else
				float4 staticSwitch12_g2557 = staticSwitch28_g2557;
				#endif
				float4 temp_output_15_0_g2585 = staticSwitch12_g2557;
				float temp_output_31_0_g2585 = (temp_output_15_0_g2585).a;
				float2 temp_output_7_0_g2585 = temp_output_1_0_g2557;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g2585 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g2585 ) * _OuterOutlineNoiseScale ) ).r - 0.25 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g2585 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2585 = ( staticSwitch157_g2585 + temp_output_7_0_g2585 );
				float2 appendResult2_g2587 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2585 = ( 100.0 / appendResult2_g2587 );
				float temp_output_83_0_g2585 = ( _OuterOutlineColor.a * min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2585 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2585 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2585 ) ) ).a ) * 3.0 ) , 1.0 ) );
				float lerpResult152_g2585 = lerp( temp_output_31_0_g2585 , temp_output_83_0_g2585 , ( temp_output_83_0_g2585 * _OuterOutlineFade ));
				float4 appendResult84_g2585 = (float4((_OuterOutlineColor).rgb , lerpResult152_g2585));
				float4 lerpResult43_g2585 = lerp( appendResult84_g2585 , temp_output_15_0_g2585 , ( 1.0 - ( min( ( _OuterOutlineFade * 10.0 ) , 1.0 ) * ( 1.0 - temp_output_31_0_g2585 ) ) ));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g2557 = lerpResult43_g2585;
				#else
				float4 staticSwitch13_g2557 = staticSwitch12_g2557;
				#endif
				float4 temp_output_108_0 = staticSwitch13_g2557;
				float4 temp_output_1_0_g2591 = temp_output_108_0;
				float4 break2_g2592 = temp_output_1_0_g2591;
				float temp_output_9_0_g2593 = max( _HologramContrast , 0.0 );
				float saferPower7_g2593 = max( ( ( ( break2_g2592.x + break2_g2592.y + break2_g2592.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2593 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g2591 = (float4(( (_HologramTint).rgb * pow( saferPower7_g2593 , temp_output_9_0_g2593 ) ) , ( max( pow( abs( sin( ( ( ( ( _TimeParameters.x * _HologramLineSpeed ) + WorldPosition.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g2591.a )));
				float4 lerpResult37_g2591 = lerp( temp_output_1_0_g2591 , appendResult22_g2591 , _HologramFade);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g2591;
				#else
				float4 staticSwitch56 = temp_output_108_0;
				#endif
				float4 temp_output_1_0_g2594 = staticSwitch56;
				float4 break2_g2596 = temp_output_1_0_g2594;
				float mulTime14_g2594 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g2597 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g2594 ),1.0,1.0) );
				float3 lerpResult23_g2594 = lerp( (temp_output_1_0_g2594).rgb , ( ( ( break2_g2596.x + break2_g2596.y + break2_g2596.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g2597 ) , temp_output_102_15);
				float4 appendResult27_g2594 = (float4(lerpResult23_g2594 , temp_output_1_0_g2594.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g2594;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g2598 = staticSwitch57;
				float4 temp_output_1_0_g2634 = temp_output_3_0_g2598;
				float2 appendResult2_g2639 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2638 = 0;
				if( _CamouflageSpace > 1.0 )
				ifLocalVar2_g2638 = (WorldPosition).xy;
				else if( _CamouflageSpace == 1.0 )
				ifLocalVar2_g2638 = (IN.ase_texcoord3.xyz).xy;
				else if( _CamouflageSpace < 1.0 )
				ifLocalVar2_g2638 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2639 ) );
				float2 temp_output_42_0_g2634 = ifLocalVar2_g2638;
				float clampResult52_g2634 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g2634 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g2634 ) , clampResult52_g2634);
				float clampResult65_g2634 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2634 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2634 ) ):( temp_output_42_0_g2634 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g2634 = lerp( lerpResult55_g2634 , ( _CamouflageColorB * clampResult65_g2634 ) , clampResult65_g2634);
				float4 break2_g2635 = temp_output_1_0_g2634;
				float temp_output_9_0_g2642 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g2642 = max( ( ( ( break2_g2635.x + break2_g2635.y + break2_g2635.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2642 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.ase_texcoord2.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g2637 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g2634 = lerp( (temp_output_1_0_g2634).rgb , ( (lerpResult68_g2634).rgb * pow( saferPower7_g2642 , temp_output_9_0_g2642 ) ) , ( _CamouflageFade * ( tex2DNode3_g2637.r * tex2DNode3_g2637.a ) ));
				float4 appendResult7_g2634 = (float4(lerpResult4_g2634 , temp_output_1_0_g2634.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g2598 = appendResult7_g2634;
				#else
				float4 staticSwitch26_g2598 = temp_output_3_0_g2598;
				#endif
				float4 temp_output_1_0_g2626 = staticSwitch26_g2598;
				float2 appendResult2_g2633 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2632 = 0;
				if( _MetalSpace > 1.0 )
				ifLocalVar2_g2632 = (WorldPosition).xy;
				else if( _MetalSpace == 1.0 )
				ifLocalVar2_g2632 = (IN.ase_texcoord3.xyz).xy;
				else if( _MetalSpace < 1.0 )
				ifLocalVar2_g2632 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2633 ) );
				float2 temp_output_16_0_g2626 = ifLocalVar2_g2632;
				float4 break2_g2627 = temp_output_1_0_g2626;
				float temp_output_5_0_g2626 = ( ( break2_g2627.x + break2_g2627.y + break2_g2627.z ) / 3.0 );
				float temp_output_9_0_g2630 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g2630 = max( ( temp_output_5_0_g2626 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2630 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g2626 = max( temp_output_5_0_g2626 , 0.0001 );
				float2 uv_MetalShaderMask = IN.ase_texcoord2.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g2631 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g2626 = lerp( temp_output_1_0_g2626 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _MetalNoiseDistortionSpeed ) + temp_output_16_0_g2626 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( _TimeParameters.x * _MetalNoiseSpeed ) + temp_output_16_0_g2626 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g2630 , temp_output_9_0_g2630 ) ) + ( pow( saferPower2_g2626 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g2631.r * tex2DNode3_g2631.a ) ));
				float4 appendResult8_g2626 = (float4((lerpResult45_g2626).rgb , (temp_output_1_0_g2626).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g2598 = appendResult8_g2626;
				#else
				float4 staticSwitch28_g2598 = staticSwitch26_g2598;
				#endif
				float4 temp_output_1_0_g2618 = staticSwitch28_g2598;
				float4 break2_g2621 = temp_output_1_0_g2618;
				float temp_output_7_0_g2618 = ( ( break2_g2621.x + break2_g2621.y + break2_g2621.z ) / 3.0 );
				float temp_output_9_0_g2625 = max( _FrozenContrast , 0.0 );
				float saferPower7_g2625 = max( ( temp_output_7_0_g2618 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2625 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float2 appendResult2_g2624 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2623 = 0;
				if( _FrozenSpace > 1.0 )
				ifLocalVar2_g2623 = (WorldPosition).xy;
				else if( _FrozenSpace == 1.0 )
				ifLocalVar2_g2623 = (IN.ase_texcoord3.xyz).xy;
				else if( _FrozenSpace < 1.0 )
				ifLocalVar2_g2623 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2624 ) );
				float2 temp_output_3_0_g2618 = ifLocalVar2_g2623;
				float saferPower42_g2618 = max( temp_output_7_0_g2618 , 0.0001 );
				float3 lerpResult57_g2618 = lerp( (temp_output_1_0_g2618).rgb , ( ( pow( saferPower7_g2625 , temp_output_9_0_g2625 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g2618 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_3_0_g2618 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FrozenHighlightDistortionSpeed ) + temp_output_3_0_g2618 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( _TimeParameters.x * _FrozenHighlightSpeed ) + temp_output_3_0_g2618 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g2618 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g2618 = (float4(lerpResult57_g2618 , temp_output_1_0_g2618.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g2598 = appendResult26_g2618;
				#else
				float4 staticSwitch29_g2598 = staticSwitch28_g2598;
				#endif
				float4 temp_output_1_0_g2611 = staticSwitch29_g2598;
				float3 temp_output_28_0_g2611 = (temp_output_1_0_g2611).rgb;
				float4 break2_g2612 = float4( temp_output_28_0_g2611 , 0.0 );
				float saferPower21_g2611 = max( ( ( break2_g2612.x + break2_g2612.y + break2_g2612.z ) / 3.0 ) , 0.0001 );
				float2 appendResult2_g2616 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2615 = 0;
				if( (int)_BurnSpace > 1.0 )
				ifLocalVar2_g2615 = (WorldPosition).xy;
				else if( (int)_BurnSpace == 1.0 )
				ifLocalVar2_g2615 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_BurnSpace < 1.0 )
				ifLocalVar2_g2615 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2616 ) );
				float2 temp_output_3_0_g2611 = ifLocalVar2_g2615;
				float clampResult68_g2611 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_3_0_g2611 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g2611 = ( ( ( _BurnRadius - distance( temp_output_3_0_g2611 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2611 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g2611 = clamp( temp_output_15_0_g2611 , 0.0 , 1.0 );
				float3 lerpResult29_g2611 = lerp( temp_output_28_0_g2611 , ( pow( saferPower21_g2611 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g2611 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g2611);
				float3 lerpResult40_g2611 = lerp( temp_output_28_0_g2611 , ( lerpResult29_g2611 + ( ( step( temp_output_15_0_g2611 , 1.0 ) * step( 0.0 , temp_output_15_0_g2611 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g2611 = (float4(lerpResult40_g2611 , temp_output_1_0_g2611.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g2598 = appendResult43_g2611;
				#else
				float4 staticSwitch32_g2598 = staticSwitch29_g2598;
				#endif
				float2 appendResult2_g2610 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2609 = 0;
				if( (int)_RainbowSpace > 1.0 )
				ifLocalVar2_g2609 = (WorldPosition).xy;
				else if( (int)_RainbowSpace == 1.0 )
				ifLocalVar2_g2609 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_RainbowSpace < 1.0 )
				ifLocalVar2_g2609 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2610 ) );
				float2 temp_output_3_0_g2604 = ifLocalVar2_g2609;
				float mulTime14_g2604 = _TimeParameters.x * _RainbowSpeed;
				float3 hsvTorgb3_g2607 = HSVToRGB( float3(( ( ( distance( temp_output_3_0_g2604 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2604 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + mulTime14_g2604 ),1.0,1.0) );
				float3 hsvTorgb36_g2604 = RGBToHSV( hsvTorgb3_g2607 );
				float3 hsvTorgb37_g2604 = HSVToRGB( float3(hsvTorgb36_g2604.x,_RainbowSaturation,( hsvTorgb36_g2604.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g2604 = staticSwitch32_g2598;
				float4 break2_g2606 = temp_output_1_0_g2604;
				float saferPower24_g2604 = max( ( ( break2_g2606.x + break2_g2606.y + break2_g2606.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.ase_texcoord2.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g2605 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g2604 = (float4(( ( hsvTorgb37_g2604 * pow( saferPower24_g2604 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g2605.r * tex2DNode3_g2605.a ) ) ) + (temp_output_1_0_g2604).rgb ) , temp_output_1_0_g2604.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g2598 = appendResult29_g2604;
				#else
				float4 staticSwitch34_g2598 = staticSwitch32_g2598;
				#endif
				float4 temp_output_1_0_g2599 = staticSwitch34_g2598;
				float4 break2_g2600 = temp_output_1_0_g2599;
				float saferPower83_g2599 = max( ( ( break2_g2600.x + break2_g2600.y + break2_g2600.z ) / 3.0 ) , 0.0001 );
				float mulTime86_g2599 = _TimeParameters.x * _ShineSpeed;
				float2 appendResult2_g2602 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2601 = 0;
				if( _ShineSpace > 1.0 )
				ifLocalVar2_g2601 = (WorldPosition).xy;
				else if( _ShineSpace == 1.0 )
				ifLocalVar2_g2601 = (IN.ase_texcoord3.xyz).xy;
				else if( _ShineSpace < 1.0 )
				ifLocalVar2_g2601 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2602 ) );
				float3 rotatedValue69_g2599 = RotateAroundAxis( float3( 0,0,0 ), float3( ( mulTime86_g2599 + ( _ShineScale * ifLocalVar2_g2601 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g2599 = rotatedValue69_g2599;
				float clampResult80_g2599 = clamp( ( ( ( sin( ( ( break67_g2599.x + break67_g2599.y ) * 10.0 ) ) + _ShineDensity ) * ( 2.0 - _ShineDensity ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.ase_texcoord2.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g2603 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g2599 = (float4(( (temp_output_1_0_g2599).rgb + ( ( pow( saferPower83_g2599 , max( _ShineContrast , 0.001 ) ) * (_ShineColor).rgb ) * clampResult80_g2599 * ( _ShineFade * ( tex2DNode3_g2603.r * tex2DNode3_g2603.a ) ) ) ) , (temp_output_1_0_g2599).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g2598 = appendResult8_g2599;
				#else
				float4 staticSwitch36_g2598 = staticSwitch34_g2598;
				#endif
				float2 appendResult2_g2646 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2645 = 0;
				if( (int)_PoisonSpace > 1.0 )
				ifLocalVar2_g2645 = (WorldPosition).xy;
				else if( (int)_PoisonSpace == 1.0 )
				ifLocalVar2_g2645 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_PoisonSpace < 1.0 )
				ifLocalVar2_g2645 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2646 ) );
				float mulTime15_g2643 = _TimeParameters.x * _PoisonShiftSpeed;
				float saferPower19_g2643 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _PoisonNoiseSpeed ) + ifLocalVar2_g2645 ) * _PoisonNoiseScale ) ).r + mulTime15_g2643 ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g2643 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g2643 = staticSwitch36_g2598;
				float3 temp_output_28_0_g2643 = (temp_output_1_0_g2643).rgb;
				float4 break2_g2647 = float4( temp_output_28_0_g2643 , 0.0 );
				float3 lerpResult32_g2643 = lerp( temp_output_28_0_g2643 , ( temp_output_24_0_g2643 * ( ( break2_g2647.x + break2_g2647.y + break2_g2647.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g2643 = (float4(( ( max( pow( saferPower19_g2643 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g2643 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g2643 ) , temp_output_1_0_g2643.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g2598 = appendResult27_g2643;
				#else
				float4 staticSwitch39_g2598 = staticSwitch36_g2598;
				#endif
				float4 temp_output_109_0 = staticSwitch39_g2598;
				float4 break4_g2648 = temp_output_109_0;
				float4 appendResult5_g2648 = (float4(break4_g2648.r , break4_g2648.g , break4_g2648.b , ( break4_g2648.a * _FullDistortionFade )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g2648;
				#else
				float4 staticSwitch77 = temp_output_109_0;
				#endif
				float4 break4_g2649 = staticSwitch77;
				float4 appendResult5_g2649 = (float4(break4_g2649.r , break4_g2649.g , break4_g2649.b , ( break4_g2649.a * (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g2530 ) ):( clampResult154_g2530 )) )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g2649;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g2650 = staticSwitch75;
				float4 temp_output_1_0_g2651 = temp_output_1_0_g2650;
				float temp_output_53_0_g2651 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 appendResult2_g2654 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2653 = 0;
				if( _FullAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2653 = (WorldPosition).xy;
				else if( _FullAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2653 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2653 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2654 ) );
				float clampResult17_g2651 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g2651 ) ) - tex2D( _UberNoiseTexture, ( ifLocalVar2_g2653 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g2651 ) , 0.0 , 1.0 );
				float4 appendResult3_g2651 = (float4((temp_output_1_0_g2651).rgb , ( temp_output_1_0_g2651.a * clampResult17_g2651 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g2650 = appendResult3_g2651;
				#else
				float4 staticSwitch3_g2650 = temp_output_1_0_g2650;
				#endif
				float2 appendResult2_g2665 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2664 = 0;
				if( _FullGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2664 = (WorldPosition).xy;
				else if( _FullGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2664 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2664 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2665 ) );
				float temp_output_5_0_g2663 = tex2D( _UberNoiseTexture, ( ifLocalVar2_g2664 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g2663 = step( temp_output_5_0_g2663 , _FullGlowDissolveFade );
				float temp_output_53_0_g2663 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g2663 = staticSwitch3_g2650;
				float4 appendResult3_g2663 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g2663 - step( temp_output_5_0_g2663 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g2663 ) ) - temp_output_53_0_g2663 ) ) ) ) + (temp_output_1_0_g2663).rgb ) , ( temp_output_1_0_g2663.a * temp_output_61_0_g2663 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g2650 = appendResult3_g2663;
				#else
				float4 staticSwitch5_g2650 = staticSwitch3_g2650;
				#endif
				float4 temp_output_1_0_g2659 = staticSwitch5_g2650;
				float2 appendResult2_g2662 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2661 = 0;
				if( _SourceAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2661 = (WorldPosition).xy;
				else if( _SourceAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2661 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2661 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2662 ) );
				float2 temp_output_7_0_g2659 = ifLocalVar2_g2661;
				float clampResult17_g2659 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_7_0_g2659 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2659 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2659 = (float4((temp_output_1_0_g2659).rgb , ( temp_output_1_0_g2659.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g2659 ) ):( clampResult17_g2659 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g2650 = appendResult3_g2659;
				#else
				float4 staticSwitch8_g2650 = staticSwitch5_g2650;
				#endif
				float2 appendResult2_g2669 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2668 = 0;
				if( _SourceGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2668 = (WorldPosition).xy;
				else if( _SourceGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2668 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2668 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2669 ) );
				float2 temp_output_7_0_g2667 = ifLocalVar2_g2668;
				float temp_output_65_0_g2667 = ( distance( _SourceGlowDissolvePosition , temp_output_7_0_g2667 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2667 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g2667 = step( temp_output_65_0_g2667 , _SourceGlowDissolveFade );
				float temp_output_76_0_g2667 = step( temp_output_65_0_g2667 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g2667 = staticSwitch8_g2650;
				float4 appendResult3_g2667 = (float4(( ( max( ( temp_output_75_0_g2667 - temp_output_76_0_g2667 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g2667).rgb ) , ( temp_output_1_0_g2667.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g2667 ) ):( temp_output_75_0_g2667 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g2650 = appendResult3_g2667;
				#else
				float4 staticSwitch9_g2650 = staticSwitch8_g2650;
				#endif
				float4 temp_output_1_0_g2675 = staticSwitch9_g2650;
				float2 appendResult2_g2678 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2677 = 0;
				if( _DirectionalAlphaFadeSpace > 1.0 )
				ifLocalVar2_g2677 = (WorldPosition).xy;
				else if( _DirectionalAlphaFadeSpace == 1.0 )
				ifLocalVar2_g2677 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalAlphaFadeSpace < 1.0 )
				ifLocalVar2_g2677 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2678 ) );
				float2 temp_output_7_0_g2675 = ifLocalVar2_g2677;
				float3 rotatedValue136_g2675 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2675 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2675 = rotatedValue136_g2675;
				float clampResult154_g2675 = clamp( ( ( break130_g2675.x + break130_g2675.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2675 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2675 = (float4((temp_output_1_0_g2675).rgb , ( temp_output_1_0_g2675.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g2675 ) ):( clampResult154_g2675 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g2650 = appendResult3_g2675;
				#else
				float4 staticSwitch11_g2650 = staticSwitch9_g2650;
				#endif
				float2 appendResult2_g2674 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2673 = 0;
				if( _DirectionalGlowFadeSpace > 1.0 )
				ifLocalVar2_g2673 = (WorldPosition).xy;
				else if( _DirectionalGlowFadeSpace == 1.0 )
				ifLocalVar2_g2673 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalGlowFadeSpace < 1.0 )
				ifLocalVar2_g2673 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2674 ) );
				float2 temp_output_7_0_g2671 = ifLocalVar2_g2673;
				float3 rotatedValue136_g2671 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2671 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2671 = rotatedValue136_g2671;
				float temp_output_168_0_g2671 = max( ( ( break130_g2671.x + break130_g2671.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2671 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g2671 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) );
				float4 temp_output_1_0_g2671 = staticSwitch11_g2650;
				float clampResult154_g2671 = clamp( temp_output_161_0_g2671 , 0.0 , 1.0 );
				float4 appendResult3_g2671 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g2671 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2671 ) ):( temp_output_168_0_g2671 )) ) ) ) + (temp_output_1_0_g2671).rgb ) , ( temp_output_1_0_g2671.a * clampResult154_g2671 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g2650 = appendResult3_g2671;
				#else
				float4 staticSwitch15_g2650 = staticSwitch11_g2650;
				#endif
				float4 temp_output_1_0_g2655 = staticSwitch15_g2650;
				float2 appendResult2_g2658 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2657 = 0;
				if( _HalftoneSpace > 1.0 )
				ifLocalVar2_g2657 = (WorldPosition).xy;
				else if( _HalftoneSpace == 1.0 )
				ifLocalVar2_g2657 = (IN.ase_texcoord3.xyz).xy;
				else if( _HalftoneSpace < 1.0 )
				ifLocalVar2_g2657 = ( IN.ase_texcoord2.xy / ( 100.0 / appendResult2_g2658 ) );
				float2 temp_output_7_0_g2655 = ifLocalVar2_g2657;
				float temp_output_121_0_g2655 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_7_0_g2655 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g2656 = (float2(temp_output_121_0_g2655 , temp_output_121_0_g2655));
				float temp_output_17_0_g2656 = length( ( (( ( abs( temp_output_7_0_g2655 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g2656 ) );
				float clampResult17_g2655 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g2656 ) / fwidth( temp_output_17_0_g2656 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2655 = (float4((temp_output_1_0_g2655).rgb , ( temp_output_1_0_g2655.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g2655 ) ):( clampResult17_g2655 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g2650 = appendResult3_g2655;
				#else
				float4 staticSwitch13_g2650 = staticSwitch15_g2650;
				#endif
				float4 temp_output_1_0_g2698 = staticSwitch13_g2650;
				float4 break2_g2700 = temp_output_1_0_g2698;
				float temp_output_9_0_g2699 = max( _AddColorContrast , 0.0 );
				float saferPower7_g2699 = max( ( ( ( break2_g2700.x + break2_g2700.y + break2_g2700.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2699 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g2698 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g2699 , temp_output_9_0_g2699 ) * _AddColorFade ) + (temp_output_1_0_g2698).rgb ) , temp_output_1_0_g2698.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g2697 = appendResult6_g2698;
				#else
				float4 staticSwitch5_g2697 = staticSwitch13_g2650;
				#endif
				float4 temp_output_1_0_g2701 = staticSwitch5_g2697;
				float saferPower11_g2701 = max( ( 1.0 - temp_output_1_0_g2701.a ) , 0.0001 );
				float3 lerpResult4_g2701 = lerp( (temp_output_1_0_g2701).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g2701 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g2701.a ) ));
				float4 appendResult13_g2701 = (float4(lerpResult4_g2701 , temp_output_1_0_g2701.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g2697 = appendResult13_g2701;
				#else
				float4 staticSwitch11_g2697 = staticSwitch5_g2697;
				#endif
				float4 temp_output_1_0_g2702 = staticSwitch11_g2697;
				float4 break2_g2703 = temp_output_1_0_g2702;
				float temp_output_9_0_g2704 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g2704 = max( ( ( ( break2_g2703.x + break2_g2703.y + break2_g2703.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2704 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g2702 = lerp( (temp_output_1_0_g2702).rgb , ( pow( saferPower7_g2704 , temp_output_9_0_g2704 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g2702 = (float4(lerpResult7_g2702 , (temp_output_1_0_g2702).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g2697 = appendResult9_g2702;
				#else
				float4 staticSwitch7_g2697 = staticSwitch11_g2697;
				#endif
				float4 lerpResult125 = lerp( tex2DNode31 , staticSwitch7_g2697 , fullFade123);
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g2548 = _White;
				#else
				float4 staticSwitch8_g2548 = IN.ase_color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g2548 = _White;
				#else
				float4 staticSwitch9_g2548 = staticSwitch8_g2548;
				#endif
				float4 lerpResult126 = lerp( IN.ase_color , staticSwitch9_g2548 , fullFade123);
				float4 temp_output_119_0 = ( lerpResult125 * lerpResult126 );
				
				
				float3 Albedo = temp_output_119_0.rgb;
				float Alpha = temp_output_119_0.a;
				float AlphaClipThreshold = 0.5;

				half4 color = half4( Albedo, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}
		
	}
	/*ase_lod*/
	CustomEditor "SpriteShadersUltimate.UberShaderGUI"
	
	
}
/*ASEBEGIN
Version=18800
207;151;1374;821;-4755.619;40.97716;1;True;True
Node;AmplifyShaderEditor.TexturePropertyNode;138;-7242.414,-98.90901;Inherit;True;Property;_MainTex;MainTex;0;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;101;-7164.425,-997.4631;Inherit;True;Property;_UberNoiseTexture;Uber Noise Texture;8;0;Create;True;0;0;0;False;0;False;6b7b4a61603088549ac748de5e4e6d8c;6b7b4a61603088549ac748de5e4e6d8c;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TextureCoordinatesNode;39;-6503.466,-2014.261;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RelayNode;105;-6931.1,-28.98383;Inherit;False;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RelayNode;99;-6841.94,-898.0886;Inherit;False;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.FunctionNode;95;-6086.266,-1877.294;Inherit;False;_UberInteractive;401;;2502;f8a4d7008519ad249b29e4a9381f963f;0;3;9;SAMPLER2D;0,0;False;2;SAMPLER2D;0;False;3;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;93;-5726.133,-1869.814;Inherit;False;_UberTransformUV;353;;2508;894b1de51a5f4c74cbe7828262f1344b;0;3;1;FLOAT2;0,0;False;18;SAMPLER2D;0;False;3;SAMPLER2D;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RelayNode;84;-5455.61,-1860.612;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;79;-4821.681,-1346.285;Inherit;False;_FullDistortion;347;;2521;62960fe27c1c398408207bb462ffd10e;0;3;160;FLOAT2;0,0;False;194;SAMPLER2D;;False;6;SAMPLER2D;0;False;2;FLOAT2;174;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;83;-4439.266,-1465.582;Inherit;False;Property;_EnableShine;Enable Shine;346;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;77;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;81;-4047.438,-1306.412;Inherit;False;_DirectionalDistortion;334;;2530;30e6ac39427ee11419083602d572972f;0;3;160;FLOAT2;0,0;False;181;SAMPLER2D;;False;6;SAMPLER2D;0;False;2;FLOAT2;174;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;82;-3730.236,-1441.193;Inherit;False;Property;_EnableShine;Enable Shine;333;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;75;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;53;-3011.915,-1200.063;Inherit;False;Property;_HologramFade;Hologram: Fade;122;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;38;-3256.692,-1121.087;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;52;-2856.382,-933.5969;Inherit;False;_HologramUV;130;;2536;7c71b1b031ffcbe48805e17b94671163;0;4;55;FLOAT;0;False;76;SAMPLER2D;;False;37;FLOAT2;0,0;False;39;SAMPLER2D;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;122;4180.248,1061.212;Inherit;False;Property;_FullFade;Full Fade;7;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;59;-2453.853,-1017.059;Inherit;False;Property;_EnableShine;Enable Shine;121;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;56;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;102;-2340.493,-1142.616;Inherit;False;_GlitchPre;137;;2542;b8ad29d751d87bd4d9cbf14898be6163;0;2;1;SAMPLER2D;0,0;False;16;SAMPLER2D;;False;2;FLOAT;15;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;103;-2101.074,-915.8625;Inherit;False;_GlitchUV;150;;2546;2addb21417fb5d745a5abfe02cbcd453;0;4;13;FLOAT2;0,0;False;22;SAMPLER2D;;False;3;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;123;4563.568,1088.314;Inherit;False;fullFade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;62;-1753.86,-988.5486;Inherit;False;Property;_EnableShine;Enable Shine;136;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;57;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;129;-1730.062,-578.5414;Inherit;False;123;fullFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;131;-1731.761,-754.4016;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;130;-1431.125,-649.6713;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RelayNode;54;-1291.974,-412.9949;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;31;-1112.336,-203.742;Inherit;True;Property;_TextureSample1;Texture Sample 1;0;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;120;-737.796,35.8288;Inherit;False;_UberCustomAlpha;438;;2548;d68af6e3188f53845b23cf6e39df15fe;0;3;1;COLOR;0,0,0,0;False;6;SAMPLER2D;0;False;7;FLOAT2;0,0;False;2;COLOR;12;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;115;-404.7228,-125.1053;Inherit;False;_UberGenerated;423;;2553;52defa3f7cca25740a6a77f065edb382;0;3;8;SAMPLER2D;0;False;7;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;108;-136.8644,-329.1863;Inherit;False;_UberColor;26;;2557;db48f560e502b78409f7fbe481a93597;0;4;1;FLOAT2;0,0;False;24;SAMPLER2D;0;False;3;COLOR;0,0,0,0;False;5;SAMPLER2D;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;51;183.7499,-168.0946;Inherit;False;_Hologram;123;;2591;76082a965d84d0e4da33b2cff51b3691;0;2;40;FLOAT;0;False;1;COLOR;1,1,1,1;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;56;488.4655,-401.1591;Inherit;False;Property;_EnableHologram;Enable Hologram;121;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;104;891.7633,-197.4055;Inherit;False;_Glitch;144;;2594;97a01281f94bcc04fbb9a7c1cd328f08;0;4;31;FLOAT2;0,0;False;33;SAMPLER2D;;False;29;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;57;1278.486,-397.6114;Inherit;False;Property;_EnableGlitch;Enable Glitch;136;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;109;1656.25,-345.9998;Inherit;False;_UberEffect;155;;2598;93c7a07f758a0814998210619e8ad1cb;0;3;3;COLOR;0,0,0,0;False;37;SAMPLER2D;0;False;5;SAMPLER2D;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;78;2112.179,-244.1776;Inherit;False;AlphaMult;-1;;2648;d24974f7959982d48aab81e9e7692f35;0;2;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;77;2492.977,-348.4961;Inherit;False;Property;_EnableFullDistortion;Enable Full Distortion;346;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;76;3014.405,-219.2272;Inherit;False;AlphaMult;-1;;2649;d24974f7959982d48aab81e9e7692f35;0;2;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;75;3434.708,-336.5002;Inherit;False;Property;_EnableDirectionalDistortion;Enable Directional Distortion;333;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;87;3929.017,-74.64402;Inherit;False;_UberFading;267;;2650;f8f5d1f402d6b694f9c47ef65b4ae91d;0;3;1;COLOR;0,0,0,0;False;17;SAMPLER2D;0;False;2;SAMPLER2D;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;117;4244.284,-85.79267;Inherit;False;_UberColorFinal;9;;2697;6ac57aba23ea6404ba71b6806ea93971;0;1;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;128;4529.681,280.2438;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;98;4287.869,614.1028;Inherit;False;Constant;_ZeroOffset;Zero Offset;53;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;124;4546.206,-102.1136;Inherit;False;123;fullFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;97;4200.187,769.8402;Inherit;False;_Squish;418;;2705;6d6a73cc3433bad4186f7028cad3d98c;0;2;82;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;96;4490.183,668.8401;Inherit;False;Property;_EnableSquish;Enable Squish;417;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;125;4812.62,45.53989;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;126;4804.681,181.2438;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;92;4760.852,615.6682;Inherit;False;_UberTransformOffset;389;;2706;ee5e9e731457b2342bdb306bdb8d2401;0;1;2;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;119;5045.964,132.1348;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;121;5056.864,629.9413;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;139;5228.548,316.3983;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.FunctionNode;180;5235.619,96.02283;Inherit;False;_3DLitStuff;1;;2710;a67b30a19d14d0c498b219c7041d411f;0;0;3;FLOAT;9;FLOAT;10;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;175;5597.575,213.1301;Float;False;True;-1;2;SpriteShadersUltimate.UberShaderGUI;0;2;Sprite Shaders Ultimate/Uber/3D Lit URP Uber;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;17;False;False;False;False;False;False;False;False;True;0;False;-1;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;1;5;False;-1;10;False;-1;1;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=UniversalForward;False;0;;0;0;Standard;36;Workflow;1;Surface;1;  Refraction Model;0;  Blend;0;Two Sided;0;Fragment Normal Space,InvertActionOnDeselection;0;Transmission;0;  Transmission Shadow;0.5,False,-1;Translucency;0;  Translucency Strength;1,False,-1;  Normal Distortion;0.5,False,-1;  Scattering;2,False,-1;  Direct;0.9,False,-1;  Ambient;0.1,False,-1;  Shadow;0.5,False,-1;Cast Shadows;1;  Use Shadow Threshold;0;Receive Shadows;1;GPU Instancing;1;LOD CrossFade;1;Built-in Fog;1;_FinalColorxAlpha;0;Meta Pass;1;Override Baked GI;0;Extra Pre Pass;0;DOTS Instancing;0;Tessellation;0;  Phong;0;  Strength;0.5,False,-1;  Type;0;  Tess;16,False,-1;  Min;10,False,-1;  Max;25,False,-1;  Edge Length;16,False,-1;  Max Displacement;25,False,-1;Vertex Position,InvertActionOnDeselection;1;0;6;False;True;True;True;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;174;5597.575,213.1301;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;True;0;False;-1;True;0;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;0;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;177;5597.575,213.1301;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;True;0;False;-1;True;0;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;178;5597.575,213.1301;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;True;0;False;-1;True;0;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;179;5597.575,213.1301;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;True;0;False;-1;True;0;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;True;1;5;False;-1;10;False;-1;1;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Universal2D;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;176;5597.575,213.1301;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;True;0;False;-1;True;0;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
WireConnection;105;0;138;0
WireConnection;99;0;101;0
WireConnection;95;9;99;0
WireConnection;95;2;105;0
WireConnection;95;3;39;0
WireConnection;93;1;95;0
WireConnection;93;18;99;0
WireConnection;93;3;105;0
WireConnection;84;0;93;0
WireConnection;79;160;84;0
WireConnection;79;194;99;0
WireConnection;79;6;105;0
WireConnection;83;1;84;0
WireConnection;83;0;79;174
WireConnection;81;160;83;0
WireConnection;81;181;99;0
WireConnection;81;6;105;0
WireConnection;82;1;83;0
WireConnection;82;0;81;174
WireConnection;38;0;82;0
WireConnection;52;55;53;0
WireConnection;52;76;99;0
WireConnection;52;37;38;0
WireConnection;52;39;105;0
WireConnection;59;1;38;0
WireConnection;59;0;52;0
WireConnection;102;1;105;0
WireConnection;102;16;99;0
WireConnection;103;13;102;0
WireConnection;103;22;99;0
WireConnection;103;3;102;15
WireConnection;103;1;59;0
WireConnection;123;0;122;0
WireConnection;62;1;59;0
WireConnection;62;0;103;0
WireConnection;130;0;131;0
WireConnection;130;1;62;0
WireConnection;130;2;129;0
WireConnection;54;0;130;0
WireConnection;31;0;105;0
WireConnection;31;1;54;0
WireConnection;120;1;31;0
WireConnection;120;6;99;0
WireConnection;120;7;54;0
WireConnection;115;8;99;0
WireConnection;115;7;54;0
WireConnection;115;1;120;0
WireConnection;108;1;54;0
WireConnection;108;24;99;0
WireConnection;108;3;115;0
WireConnection;108;5;105;0
WireConnection;51;40;53;0
WireConnection;51;1;108;0
WireConnection;56;1;108;0
WireConnection;56;0;51;0
WireConnection;104;31;102;0
WireConnection;104;33;99;0
WireConnection;104;29;102;15
WireConnection;104;1;56;0
WireConnection;57;1;56;0
WireConnection;57;0;104;0
WireConnection;109;3;57;0
WireConnection;109;37;99;0
WireConnection;109;5;105;0
WireConnection;78;1;109;0
WireConnection;78;2;79;0
WireConnection;77;1;109;0
WireConnection;77;0;78;0
WireConnection;76;1;77;0
WireConnection;76;2;81;0
WireConnection;75;1;77;0
WireConnection;75;0;76;0
WireConnection;87;1;75;0
WireConnection;87;17;99;0
WireConnection;87;2;105;0
WireConnection;117;3;87;0
WireConnection;97;1;39;0
WireConnection;96;1;98;0
WireConnection;96;0;97;0
WireConnection;125;0;31;0
WireConnection;125;1;117;0
WireConnection;125;2;124;0
WireConnection;126;0;128;0
WireConnection;126;1;120;12
WireConnection;126;2;124;0
WireConnection;92;2;96;0
WireConnection;119;0;125;0
WireConnection;119;1;126;0
WireConnection;121;1;92;0
WireConnection;121;2;123;0
WireConnection;139;0;119;0
WireConnection;175;0;119;0
WireConnection;175;1;180;0
WireConnection;175;3;180;10
WireConnection;175;4;180;9
WireConnection;175;6;139;3
WireConnection;175;8;121;0
ASEEND*/
//CHKSM=B2BF164053A06BED3AC145DCE8045C06C7F62EB2