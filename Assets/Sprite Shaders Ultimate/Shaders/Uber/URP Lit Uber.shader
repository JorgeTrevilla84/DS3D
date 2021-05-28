// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/Uber/URP Lit Uber"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin]_MainTex("MainTex", 2D) = "white" {}
		_MaskMap("Mask Map", 2D) = "white" {}
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

	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Transparent" "Queue"="Transparent" }

		Cull Off
		HLSLINCLUDE
		#pragma target 2.0
		ENDHLSL

		
		Pass
		{
			Name "Sprite Lit"
			Tags { "LightMode"="Universal2D" }
			
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZTest LEqual
			ZWrite Off
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define ASE_SRP_VERSION 70403

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#pragma multi_compile _ ETC1_EXTERNAL_ALPHA
			#pragma multi_compile _ USE_SHAPE_LIGHT_TYPE_0
			#pragma multi_compile _ USE_SHAPE_LIGHT_TYPE_1
			#pragma multi_compile _ USE_SHAPE_LIGHT_TYPE_2
			#pragma multi_compile _ USE_SHAPE_LIGHT_TYPE_3

			#define _SURFACE_TYPE_TRANSPARENT 1
			#define SHADERPASS_SPRITELIT

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Shaders/2D/Include/LightingUtility.hlsl"
			
			#if USE_SHAPE_LIGHT_TYPE_0
			SHAPE_LIGHT(0)
			#endif

			#if USE_SHAPE_LIGHT_TYPE_1
			SHAPE_LIGHT(1)
			#endif

			#if USE_SHAPE_LIGHT_TYPE_2
			SHAPE_LIGHT(2)
			#endif

			#if USE_SHAPE_LIGHT_TYPE_3
			SHAPE_LIGHT(3)
			#endif

			#include "Packages/com.unity.render-pipelines.universal/Shaders/2D/Include/CombinedShapeLightShared.hlsl"

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
			#pragma multi_compile_local __ _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma multi_compile_local __ _OUTEROUTLINEDISTORTIONTOGGLE_ON


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
			sampler2D _MaskMap;
			sampler2D _NormalMap;
			CBUFFER_START( UnityPerMaterial )
			float4 _ShineShaderMask_ST;
			float4 _CamouflageBaseColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _FrozenHighlightColor;
			float4 _HologramTint;
			float4 _FullGlowDissolveEdgeColor;
			float4 _OuterOutlineColor;
			float4 _BurnInsideNoiseColor;
			float4 _PoisonColor;
			float4 _ColorReplaceColor;
			float4 _ColorReplaceTargetColor;
			float4 _MetalHighlightColor;
			float4 _InnerOutlineColor;
			float4 _SplitToningShadowsColor;
			float4 _SplitToningHighlightsColor;
			float4 _CamouflageColorA;
			float4 _SineGlowColor;
			float4 _BlackTintColor;
			float4 _ShineColor;
			float4 _RecolorTintAreas_ST;
			float4 _RecolorPurpleTint;
			float4 _RecolorBlueTint;
			float4 _RecolorCyanTint;
			float4 _RecolorGreenTint;
			float4 _RecolorYellowTint;
			float4 _RecolorRedTint;
			float4 _RainbowMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _BurnInsideColor;
			float4 _InkSpreadColor;
			float4 _ShiftHueShaderMask_ST;
			float4 _SineGlowShaderMask_ST;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _BurnEdgeColor;
			float4 _CamouflageShaderMask_ST;
			float4 _MetalShaderMask_ST;
			float4 _MainTex_TexelSize;
			float4 _CamouflageColorB;
			float4 _AddColorColor;
			float4 _MetalColor;
			float4 _AlphaTintColor;
			float4 _WindDistortionMask_ST;
			float4 _FrozenTint;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _FrozenSnowColor;
			float2 _CamouflageNoiseScaleB;
			float2 _OuterOutlineDistortionIntensity;
			float2 _WindToDistortion;
			float2 _PoisonNoiseSpeed;
			float2 _OuterOutlineNoiseSpeed;
			float2 _WindDistortionSpeed;
			float2 _FlameSpeed;
			float2 _WindDistortionScale;
			float2 _InnerOutlineNoiseSpeed;
			float2 _WindFromDistortion;
			float2 _InnerOutlineNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _FlameNoiseScale;
			float2 _PoisonNoiseScale;
			float2 _SqueezeCenter;
			float2 _CustomFadeNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _RainbowCenter;
			float2 _InkSpreadPosition;
			float2 _RainbowNoiseScale;
			float2 _MetalNoiseScale;
			float2 _BurnEdgeNoiseScale;
			float2 _BurnPosition;
			float2 _MetalNoiseSpeed;
			float2 _SineMoveFrequency;
			float2 _SineMoveOffset;
			float2 _MetalNoiseDistortion;
			float2 _MetalNoiseDistortionScale;
			float2 _MetalNoiseDistortionSpeed;
			float2 _BurnInsideNoiseScale;
			float2 _HalftonePosition;
			float2 _BurnSwirlNoiseScale;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _OuterOutlineNoiseScale;
			float2 _GlitchNoiseSpeed;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _GlitchNoiseScale;
			float2 _DirectionalDistortionDistortion;
			float2 _DirectionalDistortionDistortionScale;
			float2 _UVDistortSpeed;
			float2 _FullDistortionDistortion;
			float2 _FullDistortionNoiseScale;
			float2 _UVDistortNoiseScale;
			float2 _DirectionalDistortionNoiseScale;
			float2 _FrozenSnowScale;
			float2 _UVRotatePivot;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _SineRotatePivot;
			float2 _CamouflageAnimationSpeed;
			float2 _CamouflageDistortionScale;
			float2 _CamouflageDistortionIntensity;
			float2 _SqueezeScale;
			float2 _CamouflageNoiseScaleA;
			float2 _UVScrollSpeed;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _FrozenHighlightSpeed;
			float2 _GlitchDistortion;
			float2 _UVDistortTo;
			float2 _GlitchMaskSpeed;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortionSpeed;
			float2 _SourceAlphaDissolvePosition;
			float2 _GlitchMaskScale;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _FrozenHighlightDistortion;
			float2 _FrozenHighlightDistortionScale;
			float2 _UVDistortFrom;
			float2 _SourceGlowDissolvePosition;
			float2 _FullGlowDissolveNoiseScale;
			float2 _FrozenHighlightScale;
			float _BurnEdgeNoiseFactor;
			float _FrozenSnowContrast;
			float _FrozenHighlightContrast;
			float _BurnInsideContrast;
			float _BurnSpace;
			float _BurnRadius;
			int _FrozenSpace;
			float _BurnWidth;
			float _MetalFade;
			float _FrozenHighlightDensity;
			float _BurnSwirlFactor;
			float _FrozenContrast;
			float _BurnInsideNoiseFactor;
			float _FrozenSnowDensity;
			float _FrozenFade;
			float _SquishStretch;
			float _RainbowSpace;
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
			float _DirectionalGlowFadeInvert;
			float _DirectionalGlowFadeRotation;
			float _SourceAlphaDissolveWidth;
			int _DirectionalGlowFadeSpace;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeWidth;
			float _HalftoneInvert;
			int _HalftoneSpace;
			float _HalftoneTiling;
			float _HalftoneFade;
			float _HalftoneFadeWidth;
			float _AddColorContrast;
			float _AddColorFade;
			float _AlphaTintPower;
			float _AlphaTintFade;
			float _AlphaTintMinAlpha;
			float _StrongTintContrast;
			float _DirectionalGlowFadeFade;
			float _BurnFade;
			float _SourceAlphaDissolveNoiseFactor;
			float _SourceAlphaDissolveFade;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineContrast;
			float _ShineRotation;
			float _ShineSpeed;
			float _ShineScale;
			int _ShineSpace;
			float _ShineDensity;
			int _SourceAlphaDissolveSpace;
			float _ShineSmoothness;
			float _PoisonSpace;
			float _PoisonShiftSpeed;
			float _PoisonDensity;
			float _PoisonFade;
			float _PoisonNoiseBrightness;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			int _FullAlphaDissolveSpace;
			int _FullGlowDissolveSpace;
			float _FullGlowDissolveFade;
			float _FullGlowDissolveWidth;
			float _SourceAlphaDissolveInvert;
			float _ShineFade;
			float _MetalContrast;
			float _OuterOutlineWidth;
			int _MetalSpace;
			int _DirectionalDistortionSpace;
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
			int _FullDistortionSpace;
			int _GlitchSpace;
			float _GlitchFade;
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
			float _GlitchMaskMin;
			float _FlameNoiseHeightFactor;
			float _FullDistortionFade;
			float _UVRotateSpeed;
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
			float _UVRotateScale;
			float _WindFlip;
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
			float _WindSquishFactor;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _AddHueFade;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _InnerOutlineWidth;
			float _InnerOutlineFade;
			float _StrongTintFade;
			float _OuterOutlineFade;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _AddHueContrast;
			float _HologramLineFrequency;
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
			float _HologramLineGap;
			float _AddHueBrightness;
			float _AddHueSaturation;
			float _AddHueSpeed;
			float _FlameBrightness;
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
			float _MetalHighlightContrast;
			float _NormalIntensity;
			CBUFFER_END


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 color : COLOR;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 texCoord0 : TEXCOORD0;
				float4 color : TEXCOORD1;
				float4 screenPosition : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#if ETC1_EXTERNAL_ALPHA
				TEXTURE2D(_AlphaTex); SAMPLER(sampler_AlphaTex);
				float _EnableAlphaTexture;
			#endif

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
			

			VertexOutput vert ( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord39 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g2356 = texCoord39;
				float2 appendResult72_g2356 = (float2(( _SquishStretch * ( break77_g2356.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g2356.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH_ON
				float2 staticSwitch96 = ( appendResult72_g2356 + float2( 0,0 ) );
				#else
				float2 staticSwitch96 = float2( 0,0 );
				#endif
				float2 temp_output_2_0_g2365 = staticSwitch96;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g2365 = ( ( sin( ( _TimeParameters.x * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g2365 );
				#else
				float2 staticSwitch4_g2365 = temp_output_2_0_g2365;
				#endif
				float mulTime27_g2367 = _TimeParameters.x * _VibrateFrequency;
				float3 rotatedValue21_g2367 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( _VibrateRotation * _TimeParameters.x ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g2365 = ( ( sin( mulTime27_g2367 ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g2367).xy ) + staticSwitch4_g2365 );
				#else
				float2 staticSwitch6_g2365 = staticSwitch4_g2365;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult121 = lerp( float2( 0,0 ) , staticSwitch6_g2365 , fullFade123);
				
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				o.ase_texcoord3.xyz = ase_worldPos;
				
				o.ase_texcoord4 = v.vertex;
				o.ase_color = v.color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.w = 0;
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
				v.normal = v.normal;
				v.tangent.xyz = v.tangent.xyz;

				VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);

				o.texCoord0 = v.uv0;
				o.color = v.color;
				o.clipPos = vertexInput.positionCS;
				o.screenPosition = ComputeScreenPos( o.clipPos, _ProjectionParams.x );
				return o;
			}

			half4 frag ( VertexOutput IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				float2 texCoord131 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord39 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g1175 = texCoord39;
				float4 transform62_g1176 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g1176 = GradientNoise(( ( (transform62_g1176).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g1176 = gradientNoise95_g1176*0.5 + 0.5;
				float lerpResult86_g1176 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g1176);
				float clampResult29_g1176 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g1176 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g1176 = temp_output_3_0_g1175;
				float temp_output_39_0_g1176 = ( temp_output_1_0_g1176.y + _WindFlip );
				float3 appendResult43_g1176 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g1176 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g1176 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g1176 )));
				float3 ase_worldPos = IN.ase_texcoord3.xyz;
				float2 appendResult2_g1178 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1177 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g1177 = (ase_worldPos).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g1177 = (IN.ase_texcoord4.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g1177 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1178 ) );
				float lerpResult78_g1176 = lerp( 1.0 , lerpResult86_g1176 , _WindDistortionWindFactor);
				float2 lerpResult75_g1176 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g1177 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g1176 ));
				float2 uv_WindDistortionMask = IN.texCoord0.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g1180 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g1176 = RotateAroundAxis( appendResult43_g1176, float3( ( appendResult27_g1176 + ( ( lerpResult75_g1176 * ( 1.0 * ( tex2DNode3_g1180.r * tex2DNode3_g1180.a ) ) ) + temp_output_1_0_g1176 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g1176 * temp_output_39_0_g1176 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g1175 = (rotatedValue19_g1176).xy;
				#else
				float2 staticSwitch4_g1175 = temp_output_3_0_g1175;
				#endif
				float2 temp_output_1_0_g1181 = staticSwitch4_g1175;
				float2 appendResult2_g1193 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_22_0_g1192 = ( float2( 1,1 ) / ( 100.0 / appendResult2_g1193 ) );
				float temp_output_25_0_g1192 = ( 1.0 / max( _PixelateFade , 0.0001 ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g1181 = ( ( ( round( ( temp_output_1_0_g1181 * _PixelatePixelDensity * temp_output_22_0_g1192 * temp_output_25_0_g1192 ) ) / _PixelatePixelDensity ) / temp_output_22_0_g1192 ) / temp_output_25_0_g1192 );
				#else
				float2 staticSwitch4_g1181 = temp_output_1_0_g1181;
				#endif
				float2 appendResult2_g1184 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1183 = 0;
				if( _UVDistortSpace > 1.0 )
				ifLocalVar2_g1183 = (ase_worldPos).xy;
				else if( _UVDistortSpace == 1.0 )
				ifLocalVar2_g1183 = (IN.ase_texcoord4.xyz).xy;
				else if( _UVDistortSpace < 1.0 )
				ifLocalVar2_g1183 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1184 ) );
				float2 lerpResult21_g1182 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g1183 + ( _UVDistortSpeed * _TimeParameters.x ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g1186 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.texCoord0.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g1185 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g1181 = ( staticSwitch4_g1181 + ( lerpResult21_g1182 * ( 100.0 / appendResult2_g1186 ) * ( _UVDistortFade * ( tex2DNode3_g1185.r * tex2DNode3_g1185.a ) ) ) );
				#else
				float2 staticSwitch5_g1181 = staticSwitch4_g1181;
				#endif
				float2 temp_output_1_0_g1188 = staticSwitch5_g1181;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g1181 = ( temp_output_1_0_g1188 + ( ( temp_output_1_0_g1188 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g1188 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g1181 = staticSwitch5_g1181;
				#endif
				float mulTime43_g1189 = _TimeParameters.x * _SineRotateFrequency;
				float3 rotatedValue36_g1189 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g1181 ,  0.0 ), float3( 0,0,1 ), ( sin( mulTime43_g1189 ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g1181 = ( ( ( (rotatedValue36_g1189).xy - float2( 0.5,0.5 ) ) / max( _SineRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch9_g1181 = staticSwitch7_g1181;
				#endif
				float mulTime6_g1190 = _TimeParameters.x * _UVRotateSpeed;
				float3 rotatedValue8_g1190 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g1181 ,  0.0 ), float3( 0,0,1 ), ( mulTime6_g1190 * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g1181 = ( ( ( (rotatedValue8_g1190).xy - float2( 0.5,0.5 ) ) / max( _UVRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch16_g1181 = staticSwitch9_g1181;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g1181 = ( ( ( _UVScrollSpeed * _TimeParameters.x ) + staticSwitch16_g1181 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g1181 = staticSwitch16_g1181;
				#endif
				float2 appendResult2_g1198 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1197 = 0;
				if( _FullDistortionSpace > 1.0 )
				ifLocalVar2_g1197 = (ase_worldPos).xy;
				else if( _FullDistortionSpace == 1.0 )
				ifLocalVar2_g1197 = (IN.ase_texcoord4.xyz).xy;
				else if( _FullDistortionSpace < 1.0 )
				ifLocalVar2_g1197 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1198 ) );
				float2 temp_output_7_0_g1194 = ifLocalVar2_g1197;
				float2 appendResult189_g1194 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_7_0_g1194 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_7_0_g1194 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch14_g1181 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g1194 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch14_g1181;
				#endif
				float2 appendResult2_g1202 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1201 = 0;
				if( _DirectionalDistortionSpace > 1.0 )
				ifLocalVar2_g1201 = (ase_worldPos).xy;
				else if( _DirectionalDistortionSpace == 1.0 )
				ifLocalVar2_g1201 = (IN.ase_texcoord4.xyz).xy;
				else if( _DirectionalDistortionSpace < 1.0 )
				ifLocalVar2_g1201 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1202 ) );
				float2 temp_output_7_0_g1199 = ifLocalVar2_g1201;
				float3 rotatedValue168_g1199 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g1199 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g1199 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g1199 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g1199 = rotatedValue136_g1199;
				float clampResult154_g1199 = clamp( ( ( break130_g1199.x + break130_g1199.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g1199 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g1199).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g1199 ) ):( clampResult154_g1199 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float temp_output_8_0_g1205 = ( ( ( _TimeParameters.x * _HologramDistortionSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y );
				float2 temp_cast_7 = (temp_output_8_0_g1205).xx;
				float2 temp_cast_8 = (_HologramDistortionDensity).xx;
				float clampResult75_g1205 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_7 * temp_cast_8 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_9 = (temp_output_8_0_g1205).xx;
				float2 temp_cast_10 = (_HologramDistortionScale).xx;
				float2 appendResult2_g1206 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 appendResult44_g1205 = (float2(( ( ( clampResult75_g1205 * ( tex2D( _UberNoiseTexture, ( temp_cast_9 * temp_cast_10 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g1206 ).x ) * _HologramFade ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g1205 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 appendResult2_g1336 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1335 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g1335 = (ase_worldPos).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g1335 = (IN.ase_texcoord4.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g1335 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1336 ) );
				float2 temp_output_3_0_g1334 = ifLocalVar2_g1335;
				float2 temp_output_102_0 = temp_output_3_0_g1334;
				float temp_output_102_15 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_3_0_g1334 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_102_15 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult130 = lerp( texCoord131 , staticSwitch62 , fullFade123);
				float4 tex2DNode31 = tex2D( _MainTex, lerpResult130 );
				float4 temp_output_1_0_g2195 = tex2DNode31;
				float4 temp_output_1_0_g2198 = temp_output_1_0_g2195;
				float2 temp_output_7_0_g2195 = lerpResult130;
				float2 temp_output_43_0_g2198 = temp_output_7_0_g2195;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g2198 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.ase_color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g2198 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.ase_color.a / 2.5 ) - distance( temp_output_43_0_g2198 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g2198 = lerp( ( (temp_output_1_0_g2198).rgb * (IN.ase_color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g2198 ) * _SmokeDarkEdge ));
				float4 appendResult31_g2198 = (float4(lerpResult34_g2198 , ( clampResult28_g2198 * _SmokeAlpha * temp_output_1_0_g2198.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g2195 = appendResult31_g2198;
				#else
				float4 staticSwitch2_g2195 = temp_output_1_0_g2195;
				#endif
				float4 temp_output_1_0_g2196 = staticSwitch2_g2195;
				float2 temp_output_57_0_g2196 = temp_output_7_0_g2195;
				float4 tex2DNode3_g2196 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g2196 );
				float clampResult37_g2196 = clamp( ( ( ( IN.ase_color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g2196.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g2196 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g2196 = (float4(( float4( (IN.ase_color).rgb , 0.0 ) * temp_output_1_0_g2196 ).rgb , ( temp_output_1_0_g2196.a * pow( clampResult37_g2196 , ( _CustomFadeSmoothness / max( tex2DNode3_g2196.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g2195 = appendResult13_g2196;
				#else
				float4 staticSwitch3_g2195 = staticSwitch2_g2195;
				#endif
				float4 temp_output_1_0_g2200 = staticSwitch3_g2195;
				float4 temp_output_1_0_g2201 = temp_output_1_0_g2200;
				float2 appendResult4_g2201 = (float2(ase_worldPos.x , ase_worldPos.y));
				float2 temp_output_44_0_g2201 = ( appendResult4_g2201 * _CheckerboardTiling * 0.5 );
				float2 break12_g2201 = step( ( ceil( temp_output_44_0_g2201 ) - temp_output_44_0_g2201 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g2201.x + break12_g2201.y ) ) )).xxx;
				float4 appendResult42_g2201 = (float4(( (temp_output_1_0_g2201).rgb - temp_cast_16 ) , temp_output_1_0_g2201.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g2200 = appendResult42_g2201;
				#else
				float4 staticSwitch2_g2200 = temp_output_1_0_g2200;
				#endif
				float2 temp_output_75_0_g2202 = lerpResult130;
				float saferPower57_g2202 = max( max( ( temp_output_75_0_g2202.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g2202 = max( _FlameRadius , 0.01 );
				float clampResult70_g2202 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FlameSpeed ) + temp_output_75_0_g2202 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g2202 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g2202 - distance( temp_output_75_0_g2202 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g2202 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g2202 = ( clampResult70_g2202 * _FlameBrightness );
				float4 appendResult31_g2202 = (float4(temp_output_63_0_g2202 , temp_output_63_0_g2202 , temp_output_63_0_g2202 , clampResult70_g2202));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g2200 = ( appendResult31_g2202 * staticSwitch2_g2200 );
				#else
				float4 staticSwitch6_g2200 = staticSwitch2_g2200;
				#endif
				float4 temp_output_3_0_g2204 = staticSwitch6_g2200;
				float4 temp_output_1_0_g2205 = temp_output_3_0_g2204;
				float3 temp_output_2_0_g2205 = (temp_output_1_0_g2205).rgb;
				float4 break2_g2206 = float4( temp_output_2_0_g2205 , 0.0 );
				float temp_output_9_0_g2207 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g2207 = max( ( ( ( break2_g2206.x + break2_g2206.y + break2_g2206.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2207 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g2205 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g2205 = RGBToHSV( temp_output_2_0_g2205 );
				float clampResult35_g2205 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g2205.x , hsvTorgb5_g2205.x ) , distance( hsvTorgb7_g2205.x , ( hsvTorgb5_g2205.x + 1.0 ) ) ) , distance( hsvTorgb7_g2205.x , ( hsvTorgb5_g2205.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g2205 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2205.y , hsvTorgb5_g2205.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g2205 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2205.z , hsvTorgb5_g2205.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g2205 = max( ( clampResult35_g2205 * clampResult30_g2205 * clampResult40_g2205 ) , 0.0001 );
				float3 lerpResult23_g2205 = lerp( temp_output_2_0_g2205 , ( pow( saferPower7_g2207 , temp_output_9_0_g2207 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g2205 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g2205 = (float4(lerpResult23_g2205 , temp_output_1_0_g2205.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g2204 = appendResult4_g2205;
				#else
				float4 staticSwitch29_g2204 = temp_output_3_0_g2204;
				#endif
				float4 temp_output_1_0_g2235 = staticSwitch29_g2204;
				float4 break2_g2236 = temp_output_1_0_g2235;
				float temp_output_3_0_g2235 = ( ( break2_g2236.x + break2_g2236.y + break2_g2236.z ) / 3.0 );
				float clampResult25_g2235 = clamp( ( ( ( ( temp_output_3_0_g2235 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g2235 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g2235);
				float temp_output_9_0_g2237 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g2237 = max( ( temp_output_3_0_g2235 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2237 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g2235 = lerp( (temp_output_1_0_g2235).rgb , ( lerpResult6_g2235 * pow( saferPower7_g2237 , temp_output_9_0_g2237 ) ) , _SplitToningFade);
				float4 appendResult18_g2235 = (float4(lerpResult11_g2235 , temp_output_1_0_g2235.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g2204 = appendResult18_g2235;
				#else
				float4 staticSwitch30_g2204 = staticSwitch29_g2204;
				#endif
				float4 temp_output_1_0_g2208 = staticSwitch30_g2204;
				float3 temp_output_4_0_g2208 = (temp_output_1_0_g2208).rgb;
				float4 break12_g2208 = temp_output_1_0_g2208;
				float3 lerpResult7_g2208 = lerp( temp_output_4_0_g2208 , ( temp_output_4_0_g2208 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g2208.r , break12_g2208.g ) , break12_g2208.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g2208 = lerp( temp_output_4_0_g2208 , lerpResult7_g2208 , _BlackTintFade);
				float4 appendResult11_g2208 = (float4(lerpResult13_g2208 , break12_g2208.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g2204 = appendResult11_g2208;
				#else
				float4 staticSwitch20_g2204 = staticSwitch30_g2204;
				#endif
				float4 temp_output_1_0_g2230 = staticSwitch20_g2204;
				float2 uv_RecolorTintAreas = IN.texCoord0.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g2230 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g2230 = ( ( hsvTorgb33_g2230.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g2230 = 0;
				if( temp_output_43_0_g2230 >= 0.8333333 )
				ifLocalVar46_g2230 = _RecolorPurpleTint;
				else
				ifLocalVar46_g2230 = _RecolorBlueTint;
				float4 ifLocalVar44_g2230 = 0;
				if( temp_output_43_0_g2230 <= 0.6666667 )
				ifLocalVar44_g2230 = _RecolorCyanTint;
				else
				ifLocalVar44_g2230 = ifLocalVar46_g2230;
				float4 ifLocalVar47_g2230 = 0;
				if( temp_output_43_0_g2230 <= 0.3333333 )
				ifLocalVar47_g2230 = _RecolorYellowTint;
				else
				ifLocalVar47_g2230 = _RecolorGreenTint;
				float4 ifLocalVar45_g2230 = 0;
				if( temp_output_43_0_g2230 <= 0.1666667 )
				ifLocalVar45_g2230 = _RecolorRedTint;
				else
				ifLocalVar45_g2230 = ifLocalVar47_g2230;
				float4 ifLocalVar35_g2230 = 0;
				if( temp_output_43_0_g2230 >= 0.5 )
				ifLocalVar35_g2230 = ifLocalVar44_g2230;
				else
				ifLocalVar35_g2230 = ifLocalVar45_g2230;
				float4 break55_g2230 = ifLocalVar35_g2230;
				float3 appendResult56_g2230 = (float3(break55_g2230.r , break55_g2230.g , break55_g2230.b));
				float4 break2_g2231 = temp_output_1_0_g2230;
				float saferPower57_g2230 = max( ( ( break2_g2231.x + break2_g2231.y + break2_g2231.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g2230 = lerp( (temp_output_1_0_g2230).rgb , ( appendResult56_g2230 * pow( saferPower57_g2230 , max( ( break55_g2230.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g2230.z * _RecolorFade ));
				float4 appendResult30_g2230 = (float4(lerpResult26_g2230 , temp_output_1_0_g2230.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g2204 = appendResult30_g2230;
				#else
				float4 staticSwitch9_g2204 = staticSwitch20_g2204;
				#endif
				float4 break2_g2216 = staticSwitch9_g2204;
				float3 appendResult4_g2216 = (float3(break2_g2216.r , break2_g2216.g , break2_g2216.b));
				float3 hsvTorgb16_g2216 = RGBToHSV( appendResult4_g2216 );
				float clampResult18_g2216 = clamp( ( hsvTorgb16_g2216.y * _AdjustColorSaturation ) , 0.0 , 1.0 );
				float temp_output_9_0_g2217 = max( _AdjustColorContrast , 0.0 );
				float saferPower7_g2217 = max( ( hsvTorgb16_g2216.z + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2217 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb24_g2216 = HSVToRGB( float3(( hsvTorgb16_g2216.x + _AdjustColorHueShift ),clampResult18_g2216,( pow( saferPower7_g2217 , temp_output_9_0_g2217 ) * _AdjustColorBrightness )) );
				float3 lerpResult9_g2216 = lerp( appendResult4_g2216 , hsvTorgb24_g2216 , _AdjustColorFade);
				float4 appendResult3_g2216 = (float4(lerpResult9_g2216 , break2_g2216.a));
				#ifdef _ENABLEADJUSTCOLOR_ON
				float4 staticSwitch10_g2204 = appendResult3_g2216;
				#else
				float4 staticSwitch10_g2204 = staticSwitch9_g2204;
				#endif
				float4 temp_output_1_0_g2224 = staticSwitch10_g2204;
				float4 break2_g2226 = temp_output_1_0_g2224;
				float temp_output_9_0_g2227 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g2227 = max( ( ( ( break2_g2226.x + break2_g2226.y + break2_g2226.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2227 ) , 0.0 ) ) ) , 0.0001 );
				float2 appendResult2_g2229 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2228 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g2228 = (ase_worldPos).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g2228 = (IN.ase_texcoord4.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g2228 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2229 ) );
				float2 temp_output_19_0_g2224 = ifLocalVar2_g2228;
				float clampResult53_g2224 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g2224 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_19_0_g2224 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g2224 = lerp( (temp_output_1_0_g2224).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g2227 , temp_output_9_0_g2227 ) ) , ( _InkSpreadFade * clampResult53_g2224 ));
				float4 appendResult9_g2224 = (float4(lerpResult7_g2224 , (temp_output_1_0_g2224).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g2204 = appendResult9_g2224;
				#else
				float4 staticSwitch17_g2204 = staticSwitch10_g2204;
				#endif
				float4 temp_output_1_0_g2222 = staticSwitch17_g2204;
				float3 temp_output_34_0_g2222 = (temp_output_1_0_g2222).rgb;
				float mulTime31_g2222 = _TimeParameters.x * _ShiftHueSpeed;
				float3 hsvTorgb15_g2222 = RGBToHSV( temp_output_34_0_g2222 );
				float3 hsvTorgb19_g2222 = HSVToRGB( float3(( mulTime31_g2222 + hsvTorgb15_g2222.x ),hsvTorgb15_g2222.y,hsvTorgb15_g2222.z) );
				float2 uv_ShiftHueShaderMask = IN.texCoord0.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g2223 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g2222 = lerp( temp_output_34_0_g2222 , hsvTorgb19_g2222 , ( _ShiftHueFade * ( tex2DNode3_g2223.r * tex2DNode3_g2223.a ) ));
				float4 appendResult6_g2222 = (float4(lerpResult33_g2222 , temp_output_1_0_g2222.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g2204 = appendResult6_g2222;
				#else
				float4 staticSwitch19_g2204 = staticSwitch17_g2204;
				#endif
				float mulTime28_g2218 = _TimeParameters.x * _AddHueSpeed;
				float3 hsvTorgb3_g2219 = HSVToRGB( float3(mulTime28_g2218,1.0,1.0) );
				float3 hsvTorgb15_g2218 = RGBToHSV( hsvTorgb3_g2219 );
				float3 hsvTorgb19_g2218 = HSVToRGB( float3(hsvTorgb15_g2218.x,_AddHueSaturation,( hsvTorgb15_g2218.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g2218 = staticSwitch19_g2204;
				float4 break2_g2220 = temp_output_1_0_g2218;
				float saferPower27_g2218 = max( ( ( break2_g2220.x + break2_g2220.y + break2_g2220.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.texCoord0.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g2221 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g2218 = (float4(( ( hsvTorgb19_g2218 * pow( saferPower27_g2218 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g2221.r * tex2DNode3_g2221.a ) ) ) + (temp_output_1_0_g2218).rgb ) , temp_output_1_0_g2218.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g2204 = appendResult6_g2218;
				#else
				float4 staticSwitch23_g2204 = staticSwitch19_g2204;
				#endif
				float4 temp_output_1_0_g2209 = staticSwitch23_g2204;
				float4 break2_g2212 = temp_output_1_0_g2209;
				float temp_output_9_0_g2211 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g2211 = max( ( ( ( break2_g2212.x + break2_g2212.y + break2_g2212.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2211 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.texCoord0.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g2210 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float mulTime15_g2209 = _TimeParameters.x * _SineGlowFrequency;
				float4 appendResult21_g2209 = (float4(( (temp_output_1_0_g2209).rgb + ( pow( saferPower7_g2211 , temp_output_9_0_g2211 ) * ( _SineGlowFade * ( tex2DNode3_g2210.r * tex2DNode3_g2210.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( mulTime15_g2209 ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g2209.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g2204 = appendResult21_g2209;
				#else
				float4 staticSwitch28_g2204 = staticSwitch23_g2204;
				#endif
				float4 temp_output_15_0_g2213 = staticSwitch28_g2204;
				float2 temp_output_1_0_g2204 = lerpResult130;
				float2 temp_output_7_0_g2213 = temp_output_1_0_g2204;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g2213 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g2213 ) * _InnerOutlineNoiseScale ) ).r - 0.25 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g2213 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2213 = ( staticSwitch169_g2213 + temp_output_7_0_g2213 );
				float2 appendResult2_g2214 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2213 = ( 100.0 / appendResult2_g2214 );
				float temp_output_161_0_g2213 = (temp_output_15_0_g2213).a;
				float temp_output_151_0_g2213 = ( ( _InnerOutlineColor.a * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2213 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) ) * temp_output_161_0_g2213 ) * ( _InnerOutlineFade * min( ( _InnerOutlineWidth * 100.0 ) , 1.0 ) ) );
				float4 appendResult84_g2213 = (float4((_InnerOutlineColor).rgb , temp_output_151_0_g2213));
				float4 lerpResult43_g2213 = lerp( temp_output_15_0_g2213 , appendResult84_g2213 , temp_output_151_0_g2213);
				float4 appendResult162_g2213 = (float4((lerpResult43_g2213).xyz , temp_output_161_0_g2213));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g2204 = appendResult162_g2213;
				#else
				float4 staticSwitch12_g2204 = staticSwitch28_g2204;
				#endif
				float4 temp_output_15_0_g2232 = staticSwitch12_g2204;
				float temp_output_31_0_g2232 = (temp_output_15_0_g2232).a;
				float2 temp_output_7_0_g2232 = temp_output_1_0_g2204;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g2232 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g2232 ) * _OuterOutlineNoiseScale ) ).r - 0.25 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g2232 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2232 = ( staticSwitch157_g2232 + temp_output_7_0_g2232 );
				float2 appendResult2_g2233 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2232 = ( 100.0 / appendResult2_g2233 );
				float temp_output_83_0_g2232 = ( _OuterOutlineColor.a * min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2232 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) * 3.0 ) , 1.0 ) );
				float lerpResult152_g2232 = lerp( temp_output_31_0_g2232 , temp_output_83_0_g2232 , ( temp_output_83_0_g2232 * _OuterOutlineFade ));
				float4 appendResult84_g2232 = (float4((_OuterOutlineColor).rgb , lerpResult152_g2232));
				float4 lerpResult43_g2232 = lerp( appendResult84_g2232 , temp_output_15_0_g2232 , ( 1.0 - ( min( ( _OuterOutlineFade * 10.0 ) , 1.0 ) * ( 1.0 - temp_output_31_0_g2232 ) ) ));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g2204 = lerpResult43_g2232;
				#else
				float4 staticSwitch13_g2204 = staticSwitch12_g2204;
				#endif
				float4 temp_output_108_0 = staticSwitch13_g2204;
				float4 temp_output_1_0_g2238 = temp_output_108_0;
				float4 break2_g2239 = temp_output_1_0_g2238;
				float temp_output_9_0_g2240 = max( _HologramContrast , 0.0 );
				float saferPower7_g2240 = max( ( ( ( break2_g2239.x + break2_g2239.y + break2_g2239.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2240 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g2238 = (float4(( (_HologramTint).rgb * pow( saferPower7_g2240 , temp_output_9_0_g2240 ) ) , ( max( pow( abs( sin( ( ( ( ( _TimeParameters.x * _HologramLineSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g2238.a )));
				float4 lerpResult37_g2238 = lerp( temp_output_1_0_g2238 , appendResult22_g2238 , _HologramFade);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g2238;
				#else
				float4 staticSwitch56 = temp_output_108_0;
				#endif
				float4 temp_output_1_0_g2241 = staticSwitch56;
				float4 break2_g2243 = temp_output_1_0_g2241;
				float mulTime14_g2241 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g2244 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g2241 ),1.0,1.0) );
				float3 lerpResult23_g2241 = lerp( (temp_output_1_0_g2241).rgb , ( ( ( break2_g2243.x + break2_g2243.y + break2_g2243.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g2244 ) , temp_output_102_15);
				float4 appendResult27_g2241 = (float4(lerpResult23_g2241 , temp_output_1_0_g2241.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g2241;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g2245 = staticSwitch57;
				float4 temp_output_1_0_g2281 = temp_output_3_0_g2245;
				float2 appendResult2_g2286 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2285 = 0;
				if( _CamouflageSpace > 1.0 )
				ifLocalVar2_g2285 = (ase_worldPos).xy;
				else if( _CamouflageSpace == 1.0 )
				ifLocalVar2_g2285 = (IN.ase_texcoord4.xyz).xy;
				else if( _CamouflageSpace < 1.0 )
				ifLocalVar2_g2285 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2286 ) );
				float2 temp_output_42_0_g2281 = ifLocalVar2_g2285;
				float clampResult52_g2281 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2281 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2281 ) ):( temp_output_42_0_g2281 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g2281 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g2281 ) , clampResult52_g2281);
				float clampResult65_g2281 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2281 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2281 ) ):( temp_output_42_0_g2281 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g2281 = lerp( lerpResult55_g2281 , ( _CamouflageColorB * clampResult65_g2281 ) , clampResult65_g2281);
				float4 break2_g2282 = temp_output_1_0_g2281;
				float temp_output_9_0_g2289 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g2289 = max( ( ( ( break2_g2282.x + break2_g2282.y + break2_g2282.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2289 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.texCoord0.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g2284 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g2281 = lerp( (temp_output_1_0_g2281).rgb , ( (lerpResult68_g2281).rgb * pow( saferPower7_g2289 , temp_output_9_0_g2289 ) ) , ( _CamouflageFade * ( tex2DNode3_g2284.r * tex2DNode3_g2284.a ) ));
				float4 appendResult7_g2281 = (float4(lerpResult4_g2281 , temp_output_1_0_g2281.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g2245 = appendResult7_g2281;
				#else
				float4 staticSwitch26_g2245 = temp_output_3_0_g2245;
				#endif
				float4 temp_output_1_0_g2273 = staticSwitch26_g2245;
				float2 appendResult2_g2280 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2279 = 0;
				if( _MetalSpace > 1.0 )
				ifLocalVar2_g2279 = (ase_worldPos).xy;
				else if( _MetalSpace == 1.0 )
				ifLocalVar2_g2279 = (IN.ase_texcoord4.xyz).xy;
				else if( _MetalSpace < 1.0 )
				ifLocalVar2_g2279 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2280 ) );
				float2 temp_output_16_0_g2273 = ifLocalVar2_g2279;
				float4 break2_g2274 = temp_output_1_0_g2273;
				float temp_output_5_0_g2273 = ( ( break2_g2274.x + break2_g2274.y + break2_g2274.z ) / 3.0 );
				float temp_output_9_0_g2277 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g2277 = max( ( temp_output_5_0_g2273 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2277 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g2273 = max( temp_output_5_0_g2273 , 0.0001 );
				float2 uv_MetalShaderMask = IN.texCoord0.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g2278 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g2273 = lerp( temp_output_1_0_g2273 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _MetalNoiseDistortionSpeed ) + temp_output_16_0_g2273 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( _TimeParameters.x * _MetalNoiseSpeed ) + temp_output_16_0_g2273 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g2277 , temp_output_9_0_g2277 ) ) + ( pow( saferPower2_g2273 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g2278.r * tex2DNode3_g2278.a ) ));
				float4 appendResult8_g2273 = (float4((lerpResult45_g2273).rgb , (temp_output_1_0_g2273).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g2245 = appendResult8_g2273;
				#else
				float4 staticSwitch28_g2245 = staticSwitch26_g2245;
				#endif
				float4 temp_output_1_0_g2265 = staticSwitch28_g2245;
				float4 break2_g2268 = temp_output_1_0_g2265;
				float temp_output_7_0_g2265 = ( ( break2_g2268.x + break2_g2268.y + break2_g2268.z ) / 3.0 );
				float temp_output_9_0_g2272 = max( _FrozenContrast , 0.0 );
				float saferPower7_g2272 = max( ( temp_output_7_0_g2265 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2272 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g2265 = max( temp_output_7_0_g2265 , 0.0001 );
				float2 appendResult2_g2271 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2270 = 0;
				if( _FrozenSpace > 1.0 )
				ifLocalVar2_g2270 = (ase_worldPos).xy;
				else if( _FrozenSpace == 1.0 )
				ifLocalVar2_g2270 = (IN.ase_texcoord4.xyz).xy;
				else if( _FrozenSpace < 1.0 )
				ifLocalVar2_g2270 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2271 ) );
				float2 temp_output_3_0_g2265 = ifLocalVar2_g2270;
				float saferPower42_g2265 = max( temp_output_7_0_g2265 , 0.0001 );
				float3 lerpResult57_g2265 = lerp( (temp_output_1_0_g2265).rgb , ( ( pow( saferPower7_g2272 , temp_output_9_0_g2272 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g2265 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_3_0_g2265 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FrozenHighlightDistortionSpeed ) + temp_output_3_0_g2265 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( _TimeParameters.x * _FrozenHighlightSpeed ) + temp_output_3_0_g2265 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g2265 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g2265 = (float4(lerpResult57_g2265 , temp_output_1_0_g2265.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g2245 = appendResult26_g2265;
				#else
				float4 staticSwitch29_g2245 = staticSwitch28_g2245;
				#endif
				float4 temp_output_1_0_g2258 = staticSwitch29_g2245;
				float3 temp_output_28_0_g2258 = (temp_output_1_0_g2258).rgb;
				float4 break2_g2259 = float4( temp_output_28_0_g2258 , 0.0 );
				float saferPower21_g2258 = max( ( ( break2_g2259.x + break2_g2259.y + break2_g2259.z ) / 3.0 ) , 0.0001 );
				float2 appendResult2_g2263 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2262 = 0;
				if( (int)_BurnSpace > 1.0 )
				ifLocalVar2_g2262 = (ase_worldPos).xy;
				else if( (int)_BurnSpace == 1.0 )
				ifLocalVar2_g2262 = (IN.ase_texcoord4.xyz).xy;
				else if( (int)_BurnSpace < 1.0 )
				ifLocalVar2_g2262 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2263 ) );
				float2 temp_output_3_0_g2258 = ifLocalVar2_g2262;
				float clampResult68_g2258 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2258 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_3_0_g2258 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g2258 = ( ( ( _BurnRadius - distance( temp_output_3_0_g2258 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2258 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g2258 = clamp( temp_output_15_0_g2258 , 0.0 , 1.0 );
				float3 lerpResult29_g2258 = lerp( temp_output_28_0_g2258 , ( pow( saferPower21_g2258 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g2258 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g2258);
				float3 lerpResult40_g2258 = lerp( temp_output_28_0_g2258 , ( lerpResult29_g2258 + ( ( step( temp_output_15_0_g2258 , 1.0 ) * step( 0.0 , temp_output_15_0_g2258 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g2258 = (float4(lerpResult40_g2258 , temp_output_1_0_g2258.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g2245 = appendResult43_g2258;
				#else
				float4 staticSwitch32_g2245 = staticSwitch29_g2245;
				#endif
				float2 appendResult2_g2257 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2256 = 0;
				if( (int)_RainbowSpace > 1.0 )
				ifLocalVar2_g2256 = (ase_worldPos).xy;
				else if( (int)_RainbowSpace == 1.0 )
				ifLocalVar2_g2256 = (IN.ase_texcoord4.xyz).xy;
				else if( (int)_RainbowSpace < 1.0 )
				ifLocalVar2_g2256 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2257 ) );
				float2 temp_output_3_0_g2251 = ifLocalVar2_g2256;
				float mulTime14_g2251 = _TimeParameters.x * _RainbowSpeed;
				float3 hsvTorgb3_g2254 = HSVToRGB( float3(( ( ( distance( temp_output_3_0_g2251 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2251 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + mulTime14_g2251 ),1.0,1.0) );
				float3 hsvTorgb36_g2251 = RGBToHSV( hsvTorgb3_g2254 );
				float3 hsvTorgb37_g2251 = HSVToRGB( float3(hsvTorgb36_g2251.x,_RainbowSaturation,( hsvTorgb36_g2251.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g2251 = staticSwitch32_g2245;
				float4 break2_g2253 = temp_output_1_0_g2251;
				float saferPower24_g2251 = max( ( ( break2_g2253.x + break2_g2253.y + break2_g2253.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.texCoord0.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g2252 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g2251 = (float4(( ( hsvTorgb37_g2251 * pow( saferPower24_g2251 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g2252.r * tex2DNode3_g2252.a ) ) ) + (temp_output_1_0_g2251).rgb ) , temp_output_1_0_g2251.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g2245 = appendResult29_g2251;
				#else
				float4 staticSwitch34_g2245 = staticSwitch32_g2245;
				#endif
				float4 temp_output_1_0_g2246 = staticSwitch34_g2245;
				float4 break2_g2247 = temp_output_1_0_g2246;
				float saferPower83_g2246 = max( ( ( break2_g2247.x + break2_g2247.y + break2_g2247.z ) / 3.0 ) , 0.0001 );
				float mulTime86_g2246 = _TimeParameters.x * _ShineSpeed;
				float2 appendResult2_g2249 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2248 = 0;
				if( _ShineSpace > 1.0 )
				ifLocalVar2_g2248 = (ase_worldPos).xy;
				else if( _ShineSpace == 1.0 )
				ifLocalVar2_g2248 = (IN.ase_texcoord4.xyz).xy;
				else if( _ShineSpace < 1.0 )
				ifLocalVar2_g2248 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2249 ) );
				float3 rotatedValue69_g2246 = RotateAroundAxis( float3( 0,0,0 ), float3( ( mulTime86_g2246 + ( _ShineScale * ifLocalVar2_g2248 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g2246 = rotatedValue69_g2246;
				float clampResult80_g2246 = clamp( ( ( ( sin( ( ( break67_g2246.x + break67_g2246.y ) * 10.0 ) ) + _ShineDensity ) * ( 2.0 - _ShineDensity ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.texCoord0.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g2250 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g2246 = (float4(( (temp_output_1_0_g2246).rgb + ( ( pow( saferPower83_g2246 , max( _ShineContrast , 0.001 ) ) * (_ShineColor).rgb ) * clampResult80_g2246 * ( _ShineFade * ( tex2DNode3_g2250.r * tex2DNode3_g2250.a ) ) ) ) , (temp_output_1_0_g2246).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g2245 = appendResult8_g2246;
				#else
				float4 staticSwitch36_g2245 = staticSwitch34_g2245;
				#endif
				float2 appendResult2_g2293 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2292 = 0;
				if( (int)_PoisonSpace > 1.0 )
				ifLocalVar2_g2292 = (ase_worldPos).xy;
				else if( (int)_PoisonSpace == 1.0 )
				ifLocalVar2_g2292 = (IN.ase_texcoord4.xyz).xy;
				else if( (int)_PoisonSpace < 1.0 )
				ifLocalVar2_g2292 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2293 ) );
				float mulTime15_g2290 = _TimeParameters.x * _PoisonShiftSpeed;
				float saferPower19_g2290 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _PoisonNoiseSpeed ) + ifLocalVar2_g2292 ) * _PoisonNoiseScale ) ).r + mulTime15_g2290 ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g2290 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g2290 = staticSwitch36_g2245;
				float3 temp_output_28_0_g2290 = (temp_output_1_0_g2290).rgb;
				float4 break2_g2294 = float4( temp_output_28_0_g2290 , 0.0 );
				float3 lerpResult32_g2290 = lerp( temp_output_28_0_g2290 , ( temp_output_24_0_g2290 * ( ( break2_g2294.x + break2_g2294.y + break2_g2294.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g2290 = (float4(( ( max( pow( saferPower19_g2290 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g2290 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g2290 ) , temp_output_1_0_g2290.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g2245 = appendResult27_g2290;
				#else
				float4 staticSwitch39_g2245 = staticSwitch36_g2245;
				#endif
				float4 temp_output_109_0 = staticSwitch39_g2245;
				float4 break4_g2295 = temp_output_109_0;
				float4 appendResult5_g2295 = (float4(break4_g2295.r , break4_g2295.g , break4_g2295.b , ( break4_g2295.a * _FullDistortionFade )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g2295;
				#else
				float4 staticSwitch77 = temp_output_109_0;
				#endif
				float4 break4_g2296 = staticSwitch77;
				float4 appendResult5_g2296 = (float4(break4_g2296.r , break4_g2296.g , break4_g2296.b , ( break4_g2296.a * (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g1199 ) ):( clampResult154_g1199 )) )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g2296;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g2327 = staticSwitch75;
				float4 temp_output_1_0_g2328 = temp_output_1_0_g2327;
				float temp_output_53_0_g2328 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 appendResult2_g2331 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2330 = 0;
				if( _FullAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2330 = (ase_worldPos).xy;
				else if( _FullAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2330 = (IN.ase_texcoord4.xyz).xy;
				else if( _FullAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2330 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2331 ) );
				float clampResult17_g2328 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g2328 ) ) - tex2D( _UberNoiseTexture, ( ifLocalVar2_g2330 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g2328 ) , 0.0 , 1.0 );
				float4 appendResult3_g2328 = (float4((temp_output_1_0_g2328).rgb , ( temp_output_1_0_g2328.a * clampResult17_g2328 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g2327 = appendResult3_g2328;
				#else
				float4 staticSwitch3_g2327 = temp_output_1_0_g2327;
				#endif
				float2 appendResult2_g2342 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2341 = 0;
				if( _FullGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2341 = (ase_worldPos).xy;
				else if( _FullGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2341 = (IN.ase_texcoord4.xyz).xy;
				else if( _FullGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2341 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2342 ) );
				float temp_output_5_0_g2340 = tex2D( _UberNoiseTexture, ( ifLocalVar2_g2341 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g2340 = step( temp_output_5_0_g2340 , _FullGlowDissolveFade );
				float temp_output_53_0_g2340 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g2340 = staticSwitch3_g2327;
				float4 appendResult3_g2340 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g2340 - step( temp_output_5_0_g2340 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g2340 ) ) - temp_output_53_0_g2340 ) ) ) ) + (temp_output_1_0_g2340).rgb ) , ( temp_output_1_0_g2340.a * temp_output_61_0_g2340 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g2327 = appendResult3_g2340;
				#else
				float4 staticSwitch5_g2327 = staticSwitch3_g2327;
				#endif
				float4 temp_output_1_0_g2336 = staticSwitch5_g2327;
				float2 appendResult2_g2339 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2338 = 0;
				if( _SourceAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2338 = (ase_worldPos).xy;
				else if( _SourceAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2338 = (IN.ase_texcoord4.xyz).xy;
				else if( _SourceAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2338 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2339 ) );
				float2 temp_output_7_0_g2336 = ifLocalVar2_g2338;
				float clampResult17_g2336 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_7_0_g2336 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2336 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2336 = (float4((temp_output_1_0_g2336).rgb , ( temp_output_1_0_g2336.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g2336 ) ):( clampResult17_g2336 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g2327 = appendResult3_g2336;
				#else
				float4 staticSwitch8_g2327 = staticSwitch5_g2327;
				#endif
				float2 appendResult2_g2346 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2345 = 0;
				if( _SourceGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2345 = (ase_worldPos).xy;
				else if( _SourceGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2345 = (IN.ase_texcoord4.xyz).xy;
				else if( _SourceGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2345 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2346 ) );
				float2 temp_output_7_0_g2344 = ifLocalVar2_g2345;
				float temp_output_65_0_g2344 = ( distance( _SourceGlowDissolvePosition , temp_output_7_0_g2344 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2344 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g2344 = step( temp_output_65_0_g2344 , _SourceGlowDissolveFade );
				float temp_output_76_0_g2344 = step( temp_output_65_0_g2344 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g2344 = staticSwitch8_g2327;
				float4 appendResult3_g2344 = (float4(( ( max( ( temp_output_75_0_g2344 - temp_output_76_0_g2344 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g2344).rgb ) , ( temp_output_1_0_g2344.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g2344 ) ):( temp_output_75_0_g2344 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g2327 = appendResult3_g2344;
				#else
				float4 staticSwitch9_g2327 = staticSwitch8_g2327;
				#endif
				float4 temp_output_1_0_g2352 = staticSwitch9_g2327;
				float2 appendResult2_g2355 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2354 = 0;
				if( _DirectionalAlphaFadeSpace > 1.0 )
				ifLocalVar2_g2354 = (ase_worldPos).xy;
				else if( _DirectionalAlphaFadeSpace == 1.0 )
				ifLocalVar2_g2354 = (IN.ase_texcoord4.xyz).xy;
				else if( _DirectionalAlphaFadeSpace < 1.0 )
				ifLocalVar2_g2354 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2355 ) );
				float2 temp_output_7_0_g2352 = ifLocalVar2_g2354;
				float3 rotatedValue136_g2352 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2352 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2352 = rotatedValue136_g2352;
				float clampResult154_g2352 = clamp( ( ( break130_g2352.x + break130_g2352.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2352 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2352 = (float4((temp_output_1_0_g2352).rgb , ( temp_output_1_0_g2352.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g2352 ) ):( clampResult154_g2352 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g2327 = appendResult3_g2352;
				#else
				float4 staticSwitch11_g2327 = staticSwitch9_g2327;
				#endif
				float2 appendResult2_g2351 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2350 = 0;
				if( _DirectionalGlowFadeSpace > 1.0 )
				ifLocalVar2_g2350 = (ase_worldPos).xy;
				else if( _DirectionalGlowFadeSpace == 1.0 )
				ifLocalVar2_g2350 = (IN.ase_texcoord4.xyz).xy;
				else if( _DirectionalGlowFadeSpace < 1.0 )
				ifLocalVar2_g2350 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2351 ) );
				float2 temp_output_7_0_g2348 = ifLocalVar2_g2350;
				float3 rotatedValue136_g2348 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2348 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2348 = rotatedValue136_g2348;
				float temp_output_168_0_g2348 = max( ( ( break130_g2348.x + break130_g2348.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2348 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g2348 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2348 ) ):( temp_output_168_0_g2348 )) );
				float4 temp_output_1_0_g2348 = staticSwitch11_g2327;
				float clampResult154_g2348 = clamp( temp_output_161_0_g2348 , 0.0 , 1.0 );
				float4 appendResult3_g2348 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g2348 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2348 ) ):( temp_output_168_0_g2348 )) ) ) ) + (temp_output_1_0_g2348).rgb ) , ( temp_output_1_0_g2348.a * clampResult154_g2348 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g2327 = appendResult3_g2348;
				#else
				float4 staticSwitch15_g2327 = staticSwitch11_g2327;
				#endif
				float4 temp_output_1_0_g2332 = staticSwitch15_g2327;
				float2 appendResult2_g2335 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2334 = 0;
				if( _HalftoneSpace > 1.0 )
				ifLocalVar2_g2334 = (ase_worldPos).xy;
				else if( _HalftoneSpace == 1.0 )
				ifLocalVar2_g2334 = (IN.ase_texcoord4.xyz).xy;
				else if( _HalftoneSpace < 1.0 )
				ifLocalVar2_g2334 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2335 ) );
				float2 temp_output_7_0_g2332 = ifLocalVar2_g2334;
				float temp_output_121_0_g2332 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_7_0_g2332 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g2333 = (float2(temp_output_121_0_g2332 , temp_output_121_0_g2332));
				float temp_output_17_0_g2333 = length( ( (( ( abs( temp_output_7_0_g2332 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g2333 ) );
				float clampResult17_g2332 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g2333 ) / fwidth( temp_output_17_0_g2333 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2332 = (float4((temp_output_1_0_g2332).rgb , ( temp_output_1_0_g2332.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g2332 ) ):( clampResult17_g2332 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g2327 = appendResult3_g2332;
				#else
				float4 staticSwitch13_g2327 = staticSwitch15_g2327;
				#endif
				float4 temp_output_1_0_g2358 = staticSwitch13_g2327;
				float4 break2_g2360 = temp_output_1_0_g2358;
				float temp_output_9_0_g2359 = max( _AddColorContrast , 0.0 );
				float saferPower7_g2359 = max( ( ( ( break2_g2360.x + break2_g2360.y + break2_g2360.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2359 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g2358 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g2359 , temp_output_9_0_g2359 ) * _AddColorFade ) + (temp_output_1_0_g2358).rgb ) , temp_output_1_0_g2358.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g2357 = appendResult6_g2358;
				#else
				float4 staticSwitch5_g2357 = staticSwitch13_g2327;
				#endif
				float4 temp_output_1_0_g2361 = staticSwitch5_g2357;
				float saferPower11_g2361 = max( ( 1.0 - temp_output_1_0_g2361.a ) , 0.0001 );
				float3 lerpResult4_g2361 = lerp( (temp_output_1_0_g2361).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g2361 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g2361.a ) ));
				float4 appendResult13_g2361 = (float4(lerpResult4_g2361 , temp_output_1_0_g2361.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g2357 = appendResult13_g2361;
				#else
				float4 staticSwitch11_g2357 = staticSwitch5_g2357;
				#endif
				float4 temp_output_1_0_g2362 = staticSwitch11_g2357;
				float4 break2_g2363 = temp_output_1_0_g2362;
				float temp_output_9_0_g2364 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g2364 = max( ( ( ( break2_g2363.x + break2_g2363.y + break2_g2363.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2364 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g2362 = lerp( (temp_output_1_0_g2362).rgb , ( pow( saferPower7_g2364 , temp_output_9_0_g2364 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g2362 = (float4(lerpResult7_g2362 , (temp_output_1_0_g2362).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g2357 = appendResult9_g2362;
				#else
				float4 staticSwitch7_g2357 = staticSwitch11_g2357;
				#endif
				float4 lerpResult125 = lerp( tex2DNode31 , staticSwitch7_g2357 , fullFade123);
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g2195 = _White;
				#else
				float4 staticSwitch8_g2195 = IN.ase_color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g2195 = _White;
				#else
				float4 staticSwitch9_g2195 = staticSwitch8_g2195;
				#endif
				float4 lerpResult126 = lerp( IN.ase_color , staticSwitch9_g2195 , fullFade123);
				
				float2 temp_output_8_0_g2368 = lerpResult130;
				
				float3 unpack14_g2368 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g2368 ), _NormalIntensity );
				unpack14_g2368.z = lerp( 1, unpack14_g2368.z, saturate(_NormalIntensity) );
				
				float4 Color = ( lerpResult125 * lerpResult126 );
				float Mask = tex2D( _MaskMap, temp_output_8_0_g2368 ).r;
				float3 Normal = unpack14_g2368;

				#if ETC1_EXTERNAL_ALPHA
					float4 alpha = SAMPLE_TEXTURE2D(_AlphaTex, sampler_AlphaTex, IN.texCoord0.xy);
					Color.a = lerp ( Color.a, alpha.r, _EnableAlphaTexture);
				#endif
				
				Color *= IN.color;

				return CombinedShapeLightShared( Color, Mask, IN.screenPosition.xy / IN.screenPosition.w );
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Sprite Normal"
			Tags { "LightMode"="NormalsRendering" }
			
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZTest LEqual
			ZWrite Off
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define ASE_SRP_VERSION 70403

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define _SURFACE_TYPE_TRANSPARENT 1
			#define SHADERPASS_SPRITENORMAL

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Shaders/2D/Include/NormalsRenderingShared.hlsl"
			
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
			#pragma multi_compile_local __ _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma multi_compile_local __ _OUTEROUTLINEDISTORTIONTOGGLE_ON


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
			CBUFFER_START( UnityPerMaterial )
			float4 _ShineShaderMask_ST;
			float4 _CamouflageBaseColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _FrozenHighlightColor;
			float4 _HologramTint;
			float4 _FullGlowDissolveEdgeColor;
			float4 _OuterOutlineColor;
			float4 _BurnInsideNoiseColor;
			float4 _PoisonColor;
			float4 _ColorReplaceColor;
			float4 _ColorReplaceTargetColor;
			float4 _MetalHighlightColor;
			float4 _InnerOutlineColor;
			float4 _SplitToningShadowsColor;
			float4 _SplitToningHighlightsColor;
			float4 _CamouflageColorA;
			float4 _SineGlowColor;
			float4 _BlackTintColor;
			float4 _ShineColor;
			float4 _RecolorTintAreas_ST;
			float4 _RecolorPurpleTint;
			float4 _RecolorBlueTint;
			float4 _RecolorCyanTint;
			float4 _RecolorGreenTint;
			float4 _RecolorYellowTint;
			float4 _RecolorRedTint;
			float4 _RainbowMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _BurnInsideColor;
			float4 _InkSpreadColor;
			float4 _ShiftHueShaderMask_ST;
			float4 _SineGlowShaderMask_ST;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _BurnEdgeColor;
			float4 _CamouflageShaderMask_ST;
			float4 _MetalShaderMask_ST;
			float4 _MainTex_TexelSize;
			float4 _CamouflageColorB;
			float4 _AddColorColor;
			float4 _MetalColor;
			float4 _AlphaTintColor;
			float4 _WindDistortionMask_ST;
			float4 _FrozenTint;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _FrozenSnowColor;
			float2 _CamouflageNoiseScaleB;
			float2 _OuterOutlineDistortionIntensity;
			float2 _WindToDistortion;
			float2 _PoisonNoiseSpeed;
			float2 _OuterOutlineNoiseSpeed;
			float2 _WindDistortionSpeed;
			float2 _FlameSpeed;
			float2 _WindDistortionScale;
			float2 _InnerOutlineNoiseSpeed;
			float2 _WindFromDistortion;
			float2 _InnerOutlineNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _FlameNoiseScale;
			float2 _PoisonNoiseScale;
			float2 _SqueezeCenter;
			float2 _CustomFadeNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _RainbowCenter;
			float2 _InkSpreadPosition;
			float2 _RainbowNoiseScale;
			float2 _MetalNoiseScale;
			float2 _BurnEdgeNoiseScale;
			float2 _BurnPosition;
			float2 _MetalNoiseSpeed;
			float2 _SineMoveFrequency;
			float2 _SineMoveOffset;
			float2 _MetalNoiseDistortion;
			float2 _MetalNoiseDistortionScale;
			float2 _MetalNoiseDistortionSpeed;
			float2 _BurnInsideNoiseScale;
			float2 _HalftonePosition;
			float2 _BurnSwirlNoiseScale;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _OuterOutlineNoiseScale;
			float2 _GlitchNoiseSpeed;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _GlitchNoiseScale;
			float2 _DirectionalDistortionDistortion;
			float2 _DirectionalDistortionDistortionScale;
			float2 _UVDistortSpeed;
			float2 _FullDistortionDistortion;
			float2 _FullDistortionNoiseScale;
			float2 _UVDistortNoiseScale;
			float2 _DirectionalDistortionNoiseScale;
			float2 _FrozenSnowScale;
			float2 _UVRotatePivot;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _SineRotatePivot;
			float2 _CamouflageAnimationSpeed;
			float2 _CamouflageDistortionScale;
			float2 _CamouflageDistortionIntensity;
			float2 _SqueezeScale;
			float2 _CamouflageNoiseScaleA;
			float2 _UVScrollSpeed;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _FrozenHighlightSpeed;
			float2 _GlitchDistortion;
			float2 _UVDistortTo;
			float2 _GlitchMaskSpeed;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortionSpeed;
			float2 _SourceAlphaDissolvePosition;
			float2 _GlitchMaskScale;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _FrozenHighlightDistortion;
			float2 _FrozenHighlightDistortionScale;
			float2 _UVDistortFrom;
			float2 _SourceGlowDissolvePosition;
			float2 _FullGlowDissolveNoiseScale;
			float2 _FrozenHighlightScale;
			float _BurnEdgeNoiseFactor;
			float _FrozenSnowContrast;
			float _FrozenHighlightContrast;
			float _BurnInsideContrast;
			float _BurnSpace;
			float _BurnRadius;
			int _FrozenSpace;
			float _BurnWidth;
			float _MetalFade;
			float _FrozenHighlightDensity;
			float _BurnSwirlFactor;
			float _FrozenContrast;
			float _BurnInsideNoiseFactor;
			float _FrozenSnowDensity;
			float _FrozenFade;
			float _SquishStretch;
			float _RainbowSpace;
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
			float _DirectionalGlowFadeInvert;
			float _DirectionalGlowFadeRotation;
			float _SourceAlphaDissolveWidth;
			int _DirectionalGlowFadeSpace;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeWidth;
			float _HalftoneInvert;
			int _HalftoneSpace;
			float _HalftoneTiling;
			float _HalftoneFade;
			float _HalftoneFadeWidth;
			float _AddColorContrast;
			float _AddColorFade;
			float _AlphaTintPower;
			float _AlphaTintFade;
			float _AlphaTintMinAlpha;
			float _StrongTintContrast;
			float _DirectionalGlowFadeFade;
			float _BurnFade;
			float _SourceAlphaDissolveNoiseFactor;
			float _SourceAlphaDissolveFade;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineContrast;
			float _ShineRotation;
			float _ShineSpeed;
			float _ShineScale;
			int _ShineSpace;
			float _ShineDensity;
			int _SourceAlphaDissolveSpace;
			float _ShineSmoothness;
			float _PoisonSpace;
			float _PoisonShiftSpeed;
			float _PoisonDensity;
			float _PoisonFade;
			float _PoisonNoiseBrightness;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			int _FullAlphaDissolveSpace;
			int _FullGlowDissolveSpace;
			float _FullGlowDissolveFade;
			float _FullGlowDissolveWidth;
			float _SourceAlphaDissolveInvert;
			float _ShineFade;
			float _MetalContrast;
			float _OuterOutlineWidth;
			int _MetalSpace;
			int _DirectionalDistortionSpace;
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
			int _FullDistortionSpace;
			int _GlitchSpace;
			float _GlitchFade;
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
			float _GlitchMaskMin;
			float _FlameNoiseHeightFactor;
			float _FullDistortionFade;
			float _UVRotateSpeed;
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
			float _UVRotateScale;
			float _WindFlip;
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
			float _WindSquishFactor;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _AddHueFade;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _InnerOutlineWidth;
			float _InnerOutlineFade;
			float _StrongTintFade;
			float _OuterOutlineFade;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _AddHueContrast;
			float _HologramLineFrequency;
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
			float _HologramLineGap;
			float _AddHueBrightness;
			float _AddHueSaturation;
			float _AddHueSpeed;
			float _FlameBrightness;
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
			float _MetalHighlightContrast;
			float _NormalIntensity;
			CBUFFER_END


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 color : COLOR;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 texCoord0 : TEXCOORD0;
				float4 color : TEXCOORD1;
				float3 normalWS : TEXCOORD2;
				float4 tangentWS : TEXCOORD3;
				float3 bitangentWS : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

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
			

			VertexOutput vert ( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord39 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g2356 = texCoord39;
				float2 appendResult72_g2356 = (float2(( _SquishStretch * ( break77_g2356.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g2356.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH_ON
				float2 staticSwitch96 = ( appendResult72_g2356 + float2( 0,0 ) );
				#else
				float2 staticSwitch96 = float2( 0,0 );
				#endif
				float2 temp_output_2_0_g2365 = staticSwitch96;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g2365 = ( ( sin( ( _TimeParameters.x * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g2365 );
				#else
				float2 staticSwitch4_g2365 = temp_output_2_0_g2365;
				#endif
				float mulTime27_g2367 = _TimeParameters.x * _VibrateFrequency;
				float3 rotatedValue21_g2367 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( _VibrateRotation * _TimeParameters.x ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g2365 = ( ( sin( mulTime27_g2367 ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g2367).xy ) + staticSwitch4_g2365 );
				#else
				float2 staticSwitch6_g2365 = staticSwitch4_g2365;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult121 = lerp( float2( 0,0 ) , staticSwitch6_g2365 , fullFade123);
				
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				o.ase_texcoord5.xyz = ase_worldPos;
				
				o.ase_texcoord6 = v.vertex;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.w = 0;
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
				v.normal = v.normal;
				v.tangent.xyz = v.tangent.xyz;

				VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);

				o.texCoord0 = v.uv0;
				o.color = v.color;
				o.clipPos = vertexInput.positionCS;

				float3 normalWS = TransformObjectToWorldNormal( v.normal );
				o.normalWS = NormalizeNormalPerVertex( normalWS );
				float4 tangentWS = float4( TransformObjectToWorldDir( v.tangent.xyz ), v.tangent.w );
				o.tangentWS = normalize( tangentWS );
				o.bitangentWS = cross( normalWS, tangentWS.xyz ) * tangentWS.w;
				return o;
			}

			half4 frag ( VertexOutput IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				float2 texCoord131 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord39 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g1175 = texCoord39;
				float4 transform62_g1176 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g1176 = GradientNoise(( ( (transform62_g1176).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g1176 = gradientNoise95_g1176*0.5 + 0.5;
				float lerpResult86_g1176 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g1176);
				float clampResult29_g1176 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g1176 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g1176 = temp_output_3_0_g1175;
				float temp_output_39_0_g1176 = ( temp_output_1_0_g1176.y + _WindFlip );
				float3 appendResult43_g1176 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g1176 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g1176 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g1176 )));
				float3 ase_worldPos = IN.ase_texcoord5.xyz;
				float2 appendResult2_g1178 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1177 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g1177 = (ase_worldPos).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g1177 = (IN.ase_texcoord6.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g1177 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1178 ) );
				float lerpResult78_g1176 = lerp( 1.0 , lerpResult86_g1176 , _WindDistortionWindFactor);
				float2 lerpResult75_g1176 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g1177 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g1176 ));
				float2 uv_WindDistortionMask = IN.texCoord0.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g1180 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g1176 = RotateAroundAxis( appendResult43_g1176, float3( ( appendResult27_g1176 + ( ( lerpResult75_g1176 * ( 1.0 * ( tex2DNode3_g1180.r * tex2DNode3_g1180.a ) ) ) + temp_output_1_0_g1176 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g1176 * temp_output_39_0_g1176 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g1175 = (rotatedValue19_g1176).xy;
				#else
				float2 staticSwitch4_g1175 = temp_output_3_0_g1175;
				#endif
				float2 temp_output_1_0_g1181 = staticSwitch4_g1175;
				float2 appendResult2_g1193 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_22_0_g1192 = ( float2( 1,1 ) / ( 100.0 / appendResult2_g1193 ) );
				float temp_output_25_0_g1192 = ( 1.0 / max( _PixelateFade , 0.0001 ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g1181 = ( ( ( round( ( temp_output_1_0_g1181 * _PixelatePixelDensity * temp_output_22_0_g1192 * temp_output_25_0_g1192 ) ) / _PixelatePixelDensity ) / temp_output_22_0_g1192 ) / temp_output_25_0_g1192 );
				#else
				float2 staticSwitch4_g1181 = temp_output_1_0_g1181;
				#endif
				float2 appendResult2_g1184 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1183 = 0;
				if( _UVDistortSpace > 1.0 )
				ifLocalVar2_g1183 = (ase_worldPos).xy;
				else if( _UVDistortSpace == 1.0 )
				ifLocalVar2_g1183 = (IN.ase_texcoord6.xyz).xy;
				else if( _UVDistortSpace < 1.0 )
				ifLocalVar2_g1183 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1184 ) );
				float2 lerpResult21_g1182 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g1183 + ( _UVDistortSpeed * _TimeParameters.x ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g1186 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.texCoord0.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g1185 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g1181 = ( staticSwitch4_g1181 + ( lerpResult21_g1182 * ( 100.0 / appendResult2_g1186 ) * ( _UVDistortFade * ( tex2DNode3_g1185.r * tex2DNode3_g1185.a ) ) ) );
				#else
				float2 staticSwitch5_g1181 = staticSwitch4_g1181;
				#endif
				float2 temp_output_1_0_g1188 = staticSwitch5_g1181;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g1181 = ( temp_output_1_0_g1188 + ( ( temp_output_1_0_g1188 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g1188 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g1181 = staticSwitch5_g1181;
				#endif
				float mulTime43_g1189 = _TimeParameters.x * _SineRotateFrequency;
				float3 rotatedValue36_g1189 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g1181 ,  0.0 ), float3( 0,0,1 ), ( sin( mulTime43_g1189 ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g1181 = ( ( ( (rotatedValue36_g1189).xy - float2( 0.5,0.5 ) ) / max( _SineRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch9_g1181 = staticSwitch7_g1181;
				#endif
				float mulTime6_g1190 = _TimeParameters.x * _UVRotateSpeed;
				float3 rotatedValue8_g1190 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g1181 ,  0.0 ), float3( 0,0,1 ), ( mulTime6_g1190 * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g1181 = ( ( ( (rotatedValue8_g1190).xy - float2( 0.5,0.5 ) ) / max( _UVRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch16_g1181 = staticSwitch9_g1181;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g1181 = ( ( ( _UVScrollSpeed * _TimeParameters.x ) + staticSwitch16_g1181 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g1181 = staticSwitch16_g1181;
				#endif
				float2 appendResult2_g1198 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1197 = 0;
				if( _FullDistortionSpace > 1.0 )
				ifLocalVar2_g1197 = (ase_worldPos).xy;
				else if( _FullDistortionSpace == 1.0 )
				ifLocalVar2_g1197 = (IN.ase_texcoord6.xyz).xy;
				else if( _FullDistortionSpace < 1.0 )
				ifLocalVar2_g1197 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1198 ) );
				float2 temp_output_7_0_g1194 = ifLocalVar2_g1197;
				float2 appendResult189_g1194 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_7_0_g1194 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_7_0_g1194 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch14_g1181 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g1194 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch14_g1181;
				#endif
				float2 appendResult2_g1202 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1201 = 0;
				if( _DirectionalDistortionSpace > 1.0 )
				ifLocalVar2_g1201 = (ase_worldPos).xy;
				else if( _DirectionalDistortionSpace == 1.0 )
				ifLocalVar2_g1201 = (IN.ase_texcoord6.xyz).xy;
				else if( _DirectionalDistortionSpace < 1.0 )
				ifLocalVar2_g1201 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1202 ) );
				float2 temp_output_7_0_g1199 = ifLocalVar2_g1201;
				float3 rotatedValue168_g1199 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g1199 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g1199 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g1199 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g1199 = rotatedValue136_g1199;
				float clampResult154_g1199 = clamp( ( ( break130_g1199.x + break130_g1199.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g1199 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g1199).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g1199 ) ):( clampResult154_g1199 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float temp_output_8_0_g1205 = ( ( ( _TimeParameters.x * _HologramDistortionSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y );
				float2 temp_cast_7 = (temp_output_8_0_g1205).xx;
				float2 temp_cast_8 = (_HologramDistortionDensity).xx;
				float clampResult75_g1205 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_7 * temp_cast_8 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_9 = (temp_output_8_0_g1205).xx;
				float2 temp_cast_10 = (_HologramDistortionScale).xx;
				float2 appendResult2_g1206 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 appendResult44_g1205 = (float2(( ( ( clampResult75_g1205 * ( tex2D( _UberNoiseTexture, ( temp_cast_9 * temp_cast_10 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g1206 ).x ) * _HologramFade ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g1205 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 appendResult2_g1336 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1335 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g1335 = (ase_worldPos).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g1335 = (IN.ase_texcoord6.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g1335 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1336 ) );
				float2 temp_output_3_0_g1334 = ifLocalVar2_g1335;
				float2 temp_output_102_0 = temp_output_3_0_g1334;
				float temp_output_102_15 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_3_0_g1334 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_102_15 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult130 = lerp( texCoord131 , staticSwitch62 , fullFade123);
				float4 tex2DNode31 = tex2D( _MainTex, lerpResult130 );
				float4 temp_output_1_0_g2195 = tex2DNode31;
				float4 temp_output_1_0_g2198 = temp_output_1_0_g2195;
				float2 temp_output_7_0_g2195 = lerpResult130;
				float2 temp_output_43_0_g2198 = temp_output_7_0_g2195;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g2198 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g2198 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.color.a / 2.5 ) - distance( temp_output_43_0_g2198 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g2198 = lerp( ( (temp_output_1_0_g2198).rgb * (IN.color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g2198 ) * _SmokeDarkEdge ));
				float4 appendResult31_g2198 = (float4(lerpResult34_g2198 , ( clampResult28_g2198 * _SmokeAlpha * temp_output_1_0_g2198.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g2195 = appendResult31_g2198;
				#else
				float4 staticSwitch2_g2195 = temp_output_1_0_g2195;
				#endif
				float4 temp_output_1_0_g2196 = staticSwitch2_g2195;
				float2 temp_output_57_0_g2196 = temp_output_7_0_g2195;
				float4 tex2DNode3_g2196 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g2196 );
				float clampResult37_g2196 = clamp( ( ( ( IN.color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g2196.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g2196 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g2196 = (float4(( float4( (IN.color).rgb , 0.0 ) * temp_output_1_0_g2196 ).rgb , ( temp_output_1_0_g2196.a * pow( clampResult37_g2196 , ( _CustomFadeSmoothness / max( tex2DNode3_g2196.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g2195 = appendResult13_g2196;
				#else
				float4 staticSwitch3_g2195 = staticSwitch2_g2195;
				#endif
				float4 temp_output_1_0_g2200 = staticSwitch3_g2195;
				float4 temp_output_1_0_g2201 = temp_output_1_0_g2200;
				float2 appendResult4_g2201 = (float2(ase_worldPos.x , ase_worldPos.y));
				float2 temp_output_44_0_g2201 = ( appendResult4_g2201 * _CheckerboardTiling * 0.5 );
				float2 break12_g2201 = step( ( ceil( temp_output_44_0_g2201 ) - temp_output_44_0_g2201 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g2201.x + break12_g2201.y ) ) )).xxx;
				float4 appendResult42_g2201 = (float4(( (temp_output_1_0_g2201).rgb - temp_cast_16 ) , temp_output_1_0_g2201.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g2200 = appendResult42_g2201;
				#else
				float4 staticSwitch2_g2200 = temp_output_1_0_g2200;
				#endif
				float2 temp_output_75_0_g2202 = lerpResult130;
				float saferPower57_g2202 = max( max( ( temp_output_75_0_g2202.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g2202 = max( _FlameRadius , 0.01 );
				float clampResult70_g2202 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FlameSpeed ) + temp_output_75_0_g2202 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g2202 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g2202 - distance( temp_output_75_0_g2202 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g2202 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g2202 = ( clampResult70_g2202 * _FlameBrightness );
				float4 appendResult31_g2202 = (float4(temp_output_63_0_g2202 , temp_output_63_0_g2202 , temp_output_63_0_g2202 , clampResult70_g2202));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g2200 = ( appendResult31_g2202 * staticSwitch2_g2200 );
				#else
				float4 staticSwitch6_g2200 = staticSwitch2_g2200;
				#endif
				float4 temp_output_3_0_g2204 = staticSwitch6_g2200;
				float4 temp_output_1_0_g2205 = temp_output_3_0_g2204;
				float3 temp_output_2_0_g2205 = (temp_output_1_0_g2205).rgb;
				float4 break2_g2206 = float4( temp_output_2_0_g2205 , 0.0 );
				float temp_output_9_0_g2207 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g2207 = max( ( ( ( break2_g2206.x + break2_g2206.y + break2_g2206.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2207 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g2205 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g2205 = RGBToHSV( temp_output_2_0_g2205 );
				float clampResult35_g2205 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g2205.x , hsvTorgb5_g2205.x ) , distance( hsvTorgb7_g2205.x , ( hsvTorgb5_g2205.x + 1.0 ) ) ) , distance( hsvTorgb7_g2205.x , ( hsvTorgb5_g2205.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g2205 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2205.y , hsvTorgb5_g2205.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g2205 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2205.z , hsvTorgb5_g2205.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g2205 = max( ( clampResult35_g2205 * clampResult30_g2205 * clampResult40_g2205 ) , 0.0001 );
				float3 lerpResult23_g2205 = lerp( temp_output_2_0_g2205 , ( pow( saferPower7_g2207 , temp_output_9_0_g2207 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g2205 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g2205 = (float4(lerpResult23_g2205 , temp_output_1_0_g2205.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g2204 = appendResult4_g2205;
				#else
				float4 staticSwitch29_g2204 = temp_output_3_0_g2204;
				#endif
				float4 temp_output_1_0_g2235 = staticSwitch29_g2204;
				float4 break2_g2236 = temp_output_1_0_g2235;
				float temp_output_3_0_g2235 = ( ( break2_g2236.x + break2_g2236.y + break2_g2236.z ) / 3.0 );
				float clampResult25_g2235 = clamp( ( ( ( ( temp_output_3_0_g2235 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g2235 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g2235);
				float temp_output_9_0_g2237 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g2237 = max( ( temp_output_3_0_g2235 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2237 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g2235 = lerp( (temp_output_1_0_g2235).rgb , ( lerpResult6_g2235 * pow( saferPower7_g2237 , temp_output_9_0_g2237 ) ) , _SplitToningFade);
				float4 appendResult18_g2235 = (float4(lerpResult11_g2235 , temp_output_1_0_g2235.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g2204 = appendResult18_g2235;
				#else
				float4 staticSwitch30_g2204 = staticSwitch29_g2204;
				#endif
				float4 temp_output_1_0_g2208 = staticSwitch30_g2204;
				float3 temp_output_4_0_g2208 = (temp_output_1_0_g2208).rgb;
				float4 break12_g2208 = temp_output_1_0_g2208;
				float3 lerpResult7_g2208 = lerp( temp_output_4_0_g2208 , ( temp_output_4_0_g2208 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g2208.r , break12_g2208.g ) , break12_g2208.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g2208 = lerp( temp_output_4_0_g2208 , lerpResult7_g2208 , _BlackTintFade);
				float4 appendResult11_g2208 = (float4(lerpResult13_g2208 , break12_g2208.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g2204 = appendResult11_g2208;
				#else
				float4 staticSwitch20_g2204 = staticSwitch30_g2204;
				#endif
				float4 temp_output_1_0_g2230 = staticSwitch20_g2204;
				float2 uv_RecolorTintAreas = IN.texCoord0.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g2230 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g2230 = ( ( hsvTorgb33_g2230.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g2230 = 0;
				if( temp_output_43_0_g2230 >= 0.8333333 )
				ifLocalVar46_g2230 = _RecolorPurpleTint;
				else
				ifLocalVar46_g2230 = _RecolorBlueTint;
				float4 ifLocalVar44_g2230 = 0;
				if( temp_output_43_0_g2230 <= 0.6666667 )
				ifLocalVar44_g2230 = _RecolorCyanTint;
				else
				ifLocalVar44_g2230 = ifLocalVar46_g2230;
				float4 ifLocalVar47_g2230 = 0;
				if( temp_output_43_0_g2230 <= 0.3333333 )
				ifLocalVar47_g2230 = _RecolorYellowTint;
				else
				ifLocalVar47_g2230 = _RecolorGreenTint;
				float4 ifLocalVar45_g2230 = 0;
				if( temp_output_43_0_g2230 <= 0.1666667 )
				ifLocalVar45_g2230 = _RecolorRedTint;
				else
				ifLocalVar45_g2230 = ifLocalVar47_g2230;
				float4 ifLocalVar35_g2230 = 0;
				if( temp_output_43_0_g2230 >= 0.5 )
				ifLocalVar35_g2230 = ifLocalVar44_g2230;
				else
				ifLocalVar35_g2230 = ifLocalVar45_g2230;
				float4 break55_g2230 = ifLocalVar35_g2230;
				float3 appendResult56_g2230 = (float3(break55_g2230.r , break55_g2230.g , break55_g2230.b));
				float4 break2_g2231 = temp_output_1_0_g2230;
				float saferPower57_g2230 = max( ( ( break2_g2231.x + break2_g2231.y + break2_g2231.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g2230 = lerp( (temp_output_1_0_g2230).rgb , ( appendResult56_g2230 * pow( saferPower57_g2230 , max( ( break55_g2230.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g2230.z * _RecolorFade ));
				float4 appendResult30_g2230 = (float4(lerpResult26_g2230 , temp_output_1_0_g2230.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g2204 = appendResult30_g2230;
				#else
				float4 staticSwitch9_g2204 = staticSwitch20_g2204;
				#endif
				float4 break2_g2216 = staticSwitch9_g2204;
				float3 appendResult4_g2216 = (float3(break2_g2216.r , break2_g2216.g , break2_g2216.b));
				float3 hsvTorgb16_g2216 = RGBToHSV( appendResult4_g2216 );
				float clampResult18_g2216 = clamp( ( hsvTorgb16_g2216.y * _AdjustColorSaturation ) , 0.0 , 1.0 );
				float temp_output_9_0_g2217 = max( _AdjustColorContrast , 0.0 );
				float saferPower7_g2217 = max( ( hsvTorgb16_g2216.z + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2217 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb24_g2216 = HSVToRGB( float3(( hsvTorgb16_g2216.x + _AdjustColorHueShift ),clampResult18_g2216,( pow( saferPower7_g2217 , temp_output_9_0_g2217 ) * _AdjustColorBrightness )) );
				float3 lerpResult9_g2216 = lerp( appendResult4_g2216 , hsvTorgb24_g2216 , _AdjustColorFade);
				float4 appendResult3_g2216 = (float4(lerpResult9_g2216 , break2_g2216.a));
				#ifdef _ENABLEADJUSTCOLOR_ON
				float4 staticSwitch10_g2204 = appendResult3_g2216;
				#else
				float4 staticSwitch10_g2204 = staticSwitch9_g2204;
				#endif
				float4 temp_output_1_0_g2224 = staticSwitch10_g2204;
				float4 break2_g2226 = temp_output_1_0_g2224;
				float temp_output_9_0_g2227 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g2227 = max( ( ( ( break2_g2226.x + break2_g2226.y + break2_g2226.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2227 ) , 0.0 ) ) ) , 0.0001 );
				float2 appendResult2_g2229 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2228 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g2228 = (ase_worldPos).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g2228 = (IN.ase_texcoord6.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g2228 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2229 ) );
				float2 temp_output_19_0_g2224 = ifLocalVar2_g2228;
				float clampResult53_g2224 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g2224 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_19_0_g2224 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g2224 = lerp( (temp_output_1_0_g2224).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g2227 , temp_output_9_0_g2227 ) ) , ( _InkSpreadFade * clampResult53_g2224 ));
				float4 appendResult9_g2224 = (float4(lerpResult7_g2224 , (temp_output_1_0_g2224).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g2204 = appendResult9_g2224;
				#else
				float4 staticSwitch17_g2204 = staticSwitch10_g2204;
				#endif
				float4 temp_output_1_0_g2222 = staticSwitch17_g2204;
				float3 temp_output_34_0_g2222 = (temp_output_1_0_g2222).rgb;
				float mulTime31_g2222 = _TimeParameters.x * _ShiftHueSpeed;
				float3 hsvTorgb15_g2222 = RGBToHSV( temp_output_34_0_g2222 );
				float3 hsvTorgb19_g2222 = HSVToRGB( float3(( mulTime31_g2222 + hsvTorgb15_g2222.x ),hsvTorgb15_g2222.y,hsvTorgb15_g2222.z) );
				float2 uv_ShiftHueShaderMask = IN.texCoord0.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g2223 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g2222 = lerp( temp_output_34_0_g2222 , hsvTorgb19_g2222 , ( _ShiftHueFade * ( tex2DNode3_g2223.r * tex2DNode3_g2223.a ) ));
				float4 appendResult6_g2222 = (float4(lerpResult33_g2222 , temp_output_1_0_g2222.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g2204 = appendResult6_g2222;
				#else
				float4 staticSwitch19_g2204 = staticSwitch17_g2204;
				#endif
				float mulTime28_g2218 = _TimeParameters.x * _AddHueSpeed;
				float3 hsvTorgb3_g2219 = HSVToRGB( float3(mulTime28_g2218,1.0,1.0) );
				float3 hsvTorgb15_g2218 = RGBToHSV( hsvTorgb3_g2219 );
				float3 hsvTorgb19_g2218 = HSVToRGB( float3(hsvTorgb15_g2218.x,_AddHueSaturation,( hsvTorgb15_g2218.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g2218 = staticSwitch19_g2204;
				float4 break2_g2220 = temp_output_1_0_g2218;
				float saferPower27_g2218 = max( ( ( break2_g2220.x + break2_g2220.y + break2_g2220.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.texCoord0.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g2221 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g2218 = (float4(( ( hsvTorgb19_g2218 * pow( saferPower27_g2218 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g2221.r * tex2DNode3_g2221.a ) ) ) + (temp_output_1_0_g2218).rgb ) , temp_output_1_0_g2218.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g2204 = appendResult6_g2218;
				#else
				float4 staticSwitch23_g2204 = staticSwitch19_g2204;
				#endif
				float4 temp_output_1_0_g2209 = staticSwitch23_g2204;
				float4 break2_g2212 = temp_output_1_0_g2209;
				float temp_output_9_0_g2211 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g2211 = max( ( ( ( break2_g2212.x + break2_g2212.y + break2_g2212.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2211 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.texCoord0.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g2210 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float mulTime15_g2209 = _TimeParameters.x * _SineGlowFrequency;
				float4 appendResult21_g2209 = (float4(( (temp_output_1_0_g2209).rgb + ( pow( saferPower7_g2211 , temp_output_9_0_g2211 ) * ( _SineGlowFade * ( tex2DNode3_g2210.r * tex2DNode3_g2210.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( mulTime15_g2209 ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g2209.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g2204 = appendResult21_g2209;
				#else
				float4 staticSwitch28_g2204 = staticSwitch23_g2204;
				#endif
				float4 temp_output_15_0_g2213 = staticSwitch28_g2204;
				float2 temp_output_1_0_g2204 = lerpResult130;
				float2 temp_output_7_0_g2213 = temp_output_1_0_g2204;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g2213 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g2213 ) * _InnerOutlineNoiseScale ) ).r - 0.25 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g2213 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2213 = ( staticSwitch169_g2213 + temp_output_7_0_g2213 );
				float2 appendResult2_g2214 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2213 = ( 100.0 / appendResult2_g2214 );
				float temp_output_161_0_g2213 = (temp_output_15_0_g2213).a;
				float temp_output_151_0_g2213 = ( ( _InnerOutlineColor.a * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2213 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) ) * temp_output_161_0_g2213 ) * ( _InnerOutlineFade * min( ( _InnerOutlineWidth * 100.0 ) , 1.0 ) ) );
				float4 appendResult84_g2213 = (float4((_InnerOutlineColor).rgb , temp_output_151_0_g2213));
				float4 lerpResult43_g2213 = lerp( temp_output_15_0_g2213 , appendResult84_g2213 , temp_output_151_0_g2213);
				float4 appendResult162_g2213 = (float4((lerpResult43_g2213).xyz , temp_output_161_0_g2213));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g2204 = appendResult162_g2213;
				#else
				float4 staticSwitch12_g2204 = staticSwitch28_g2204;
				#endif
				float4 temp_output_15_0_g2232 = staticSwitch12_g2204;
				float temp_output_31_0_g2232 = (temp_output_15_0_g2232).a;
				float2 temp_output_7_0_g2232 = temp_output_1_0_g2204;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g2232 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g2232 ) * _OuterOutlineNoiseScale ) ).r - 0.25 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g2232 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2232 = ( staticSwitch157_g2232 + temp_output_7_0_g2232 );
				float2 appendResult2_g2233 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2232 = ( 100.0 / appendResult2_g2233 );
				float temp_output_83_0_g2232 = ( _OuterOutlineColor.a * min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2232 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) * 3.0 ) , 1.0 ) );
				float lerpResult152_g2232 = lerp( temp_output_31_0_g2232 , temp_output_83_0_g2232 , ( temp_output_83_0_g2232 * _OuterOutlineFade ));
				float4 appendResult84_g2232 = (float4((_OuterOutlineColor).rgb , lerpResult152_g2232));
				float4 lerpResult43_g2232 = lerp( appendResult84_g2232 , temp_output_15_0_g2232 , ( 1.0 - ( min( ( _OuterOutlineFade * 10.0 ) , 1.0 ) * ( 1.0 - temp_output_31_0_g2232 ) ) ));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g2204 = lerpResult43_g2232;
				#else
				float4 staticSwitch13_g2204 = staticSwitch12_g2204;
				#endif
				float4 temp_output_108_0 = staticSwitch13_g2204;
				float4 temp_output_1_0_g2238 = temp_output_108_0;
				float4 break2_g2239 = temp_output_1_0_g2238;
				float temp_output_9_0_g2240 = max( _HologramContrast , 0.0 );
				float saferPower7_g2240 = max( ( ( ( break2_g2239.x + break2_g2239.y + break2_g2239.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2240 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g2238 = (float4(( (_HologramTint).rgb * pow( saferPower7_g2240 , temp_output_9_0_g2240 ) ) , ( max( pow( abs( sin( ( ( ( ( _TimeParameters.x * _HologramLineSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g2238.a )));
				float4 lerpResult37_g2238 = lerp( temp_output_1_0_g2238 , appendResult22_g2238 , _HologramFade);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g2238;
				#else
				float4 staticSwitch56 = temp_output_108_0;
				#endif
				float4 temp_output_1_0_g2241 = staticSwitch56;
				float4 break2_g2243 = temp_output_1_0_g2241;
				float mulTime14_g2241 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g2244 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g2241 ),1.0,1.0) );
				float3 lerpResult23_g2241 = lerp( (temp_output_1_0_g2241).rgb , ( ( ( break2_g2243.x + break2_g2243.y + break2_g2243.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g2244 ) , temp_output_102_15);
				float4 appendResult27_g2241 = (float4(lerpResult23_g2241 , temp_output_1_0_g2241.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g2241;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g2245 = staticSwitch57;
				float4 temp_output_1_0_g2281 = temp_output_3_0_g2245;
				float2 appendResult2_g2286 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2285 = 0;
				if( _CamouflageSpace > 1.0 )
				ifLocalVar2_g2285 = (ase_worldPos).xy;
				else if( _CamouflageSpace == 1.0 )
				ifLocalVar2_g2285 = (IN.ase_texcoord6.xyz).xy;
				else if( _CamouflageSpace < 1.0 )
				ifLocalVar2_g2285 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2286 ) );
				float2 temp_output_42_0_g2281 = ifLocalVar2_g2285;
				float clampResult52_g2281 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2281 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2281 ) ):( temp_output_42_0_g2281 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g2281 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g2281 ) , clampResult52_g2281);
				float clampResult65_g2281 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2281 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2281 ) ):( temp_output_42_0_g2281 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g2281 = lerp( lerpResult55_g2281 , ( _CamouflageColorB * clampResult65_g2281 ) , clampResult65_g2281);
				float4 break2_g2282 = temp_output_1_0_g2281;
				float temp_output_9_0_g2289 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g2289 = max( ( ( ( break2_g2282.x + break2_g2282.y + break2_g2282.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2289 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.texCoord0.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g2284 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g2281 = lerp( (temp_output_1_0_g2281).rgb , ( (lerpResult68_g2281).rgb * pow( saferPower7_g2289 , temp_output_9_0_g2289 ) ) , ( _CamouflageFade * ( tex2DNode3_g2284.r * tex2DNode3_g2284.a ) ));
				float4 appendResult7_g2281 = (float4(lerpResult4_g2281 , temp_output_1_0_g2281.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g2245 = appendResult7_g2281;
				#else
				float4 staticSwitch26_g2245 = temp_output_3_0_g2245;
				#endif
				float4 temp_output_1_0_g2273 = staticSwitch26_g2245;
				float2 appendResult2_g2280 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2279 = 0;
				if( _MetalSpace > 1.0 )
				ifLocalVar2_g2279 = (ase_worldPos).xy;
				else if( _MetalSpace == 1.0 )
				ifLocalVar2_g2279 = (IN.ase_texcoord6.xyz).xy;
				else if( _MetalSpace < 1.0 )
				ifLocalVar2_g2279 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2280 ) );
				float2 temp_output_16_0_g2273 = ifLocalVar2_g2279;
				float4 break2_g2274 = temp_output_1_0_g2273;
				float temp_output_5_0_g2273 = ( ( break2_g2274.x + break2_g2274.y + break2_g2274.z ) / 3.0 );
				float temp_output_9_0_g2277 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g2277 = max( ( temp_output_5_0_g2273 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2277 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g2273 = max( temp_output_5_0_g2273 , 0.0001 );
				float2 uv_MetalShaderMask = IN.texCoord0.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g2278 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g2273 = lerp( temp_output_1_0_g2273 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _MetalNoiseDistortionSpeed ) + temp_output_16_0_g2273 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( _TimeParameters.x * _MetalNoiseSpeed ) + temp_output_16_0_g2273 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g2277 , temp_output_9_0_g2277 ) ) + ( pow( saferPower2_g2273 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g2278.r * tex2DNode3_g2278.a ) ));
				float4 appendResult8_g2273 = (float4((lerpResult45_g2273).rgb , (temp_output_1_0_g2273).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g2245 = appendResult8_g2273;
				#else
				float4 staticSwitch28_g2245 = staticSwitch26_g2245;
				#endif
				float4 temp_output_1_0_g2265 = staticSwitch28_g2245;
				float4 break2_g2268 = temp_output_1_0_g2265;
				float temp_output_7_0_g2265 = ( ( break2_g2268.x + break2_g2268.y + break2_g2268.z ) / 3.0 );
				float temp_output_9_0_g2272 = max( _FrozenContrast , 0.0 );
				float saferPower7_g2272 = max( ( temp_output_7_0_g2265 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2272 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g2265 = max( temp_output_7_0_g2265 , 0.0001 );
				float2 appendResult2_g2271 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2270 = 0;
				if( _FrozenSpace > 1.0 )
				ifLocalVar2_g2270 = (ase_worldPos).xy;
				else if( _FrozenSpace == 1.0 )
				ifLocalVar2_g2270 = (IN.ase_texcoord6.xyz).xy;
				else if( _FrozenSpace < 1.0 )
				ifLocalVar2_g2270 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2271 ) );
				float2 temp_output_3_0_g2265 = ifLocalVar2_g2270;
				float saferPower42_g2265 = max( temp_output_7_0_g2265 , 0.0001 );
				float3 lerpResult57_g2265 = lerp( (temp_output_1_0_g2265).rgb , ( ( pow( saferPower7_g2272 , temp_output_9_0_g2272 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g2265 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_3_0_g2265 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FrozenHighlightDistortionSpeed ) + temp_output_3_0_g2265 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( _TimeParameters.x * _FrozenHighlightSpeed ) + temp_output_3_0_g2265 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g2265 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g2265 = (float4(lerpResult57_g2265 , temp_output_1_0_g2265.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g2245 = appendResult26_g2265;
				#else
				float4 staticSwitch29_g2245 = staticSwitch28_g2245;
				#endif
				float4 temp_output_1_0_g2258 = staticSwitch29_g2245;
				float3 temp_output_28_0_g2258 = (temp_output_1_0_g2258).rgb;
				float4 break2_g2259 = float4( temp_output_28_0_g2258 , 0.0 );
				float saferPower21_g2258 = max( ( ( break2_g2259.x + break2_g2259.y + break2_g2259.z ) / 3.0 ) , 0.0001 );
				float2 appendResult2_g2263 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2262 = 0;
				if( (int)_BurnSpace > 1.0 )
				ifLocalVar2_g2262 = (ase_worldPos).xy;
				else if( (int)_BurnSpace == 1.0 )
				ifLocalVar2_g2262 = (IN.ase_texcoord6.xyz).xy;
				else if( (int)_BurnSpace < 1.0 )
				ifLocalVar2_g2262 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2263 ) );
				float2 temp_output_3_0_g2258 = ifLocalVar2_g2262;
				float clampResult68_g2258 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2258 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_3_0_g2258 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g2258 = ( ( ( _BurnRadius - distance( temp_output_3_0_g2258 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2258 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g2258 = clamp( temp_output_15_0_g2258 , 0.0 , 1.0 );
				float3 lerpResult29_g2258 = lerp( temp_output_28_0_g2258 , ( pow( saferPower21_g2258 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g2258 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g2258);
				float3 lerpResult40_g2258 = lerp( temp_output_28_0_g2258 , ( lerpResult29_g2258 + ( ( step( temp_output_15_0_g2258 , 1.0 ) * step( 0.0 , temp_output_15_0_g2258 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g2258 = (float4(lerpResult40_g2258 , temp_output_1_0_g2258.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g2245 = appendResult43_g2258;
				#else
				float4 staticSwitch32_g2245 = staticSwitch29_g2245;
				#endif
				float2 appendResult2_g2257 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2256 = 0;
				if( (int)_RainbowSpace > 1.0 )
				ifLocalVar2_g2256 = (ase_worldPos).xy;
				else if( (int)_RainbowSpace == 1.0 )
				ifLocalVar2_g2256 = (IN.ase_texcoord6.xyz).xy;
				else if( (int)_RainbowSpace < 1.0 )
				ifLocalVar2_g2256 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2257 ) );
				float2 temp_output_3_0_g2251 = ifLocalVar2_g2256;
				float mulTime14_g2251 = _TimeParameters.x * _RainbowSpeed;
				float3 hsvTorgb3_g2254 = HSVToRGB( float3(( ( ( distance( temp_output_3_0_g2251 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2251 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + mulTime14_g2251 ),1.0,1.0) );
				float3 hsvTorgb36_g2251 = RGBToHSV( hsvTorgb3_g2254 );
				float3 hsvTorgb37_g2251 = HSVToRGB( float3(hsvTorgb36_g2251.x,_RainbowSaturation,( hsvTorgb36_g2251.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g2251 = staticSwitch32_g2245;
				float4 break2_g2253 = temp_output_1_0_g2251;
				float saferPower24_g2251 = max( ( ( break2_g2253.x + break2_g2253.y + break2_g2253.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.texCoord0.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g2252 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g2251 = (float4(( ( hsvTorgb37_g2251 * pow( saferPower24_g2251 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g2252.r * tex2DNode3_g2252.a ) ) ) + (temp_output_1_0_g2251).rgb ) , temp_output_1_0_g2251.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g2245 = appendResult29_g2251;
				#else
				float4 staticSwitch34_g2245 = staticSwitch32_g2245;
				#endif
				float4 temp_output_1_0_g2246 = staticSwitch34_g2245;
				float4 break2_g2247 = temp_output_1_0_g2246;
				float saferPower83_g2246 = max( ( ( break2_g2247.x + break2_g2247.y + break2_g2247.z ) / 3.0 ) , 0.0001 );
				float mulTime86_g2246 = _TimeParameters.x * _ShineSpeed;
				float2 appendResult2_g2249 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2248 = 0;
				if( _ShineSpace > 1.0 )
				ifLocalVar2_g2248 = (ase_worldPos).xy;
				else if( _ShineSpace == 1.0 )
				ifLocalVar2_g2248 = (IN.ase_texcoord6.xyz).xy;
				else if( _ShineSpace < 1.0 )
				ifLocalVar2_g2248 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2249 ) );
				float3 rotatedValue69_g2246 = RotateAroundAxis( float3( 0,0,0 ), float3( ( mulTime86_g2246 + ( _ShineScale * ifLocalVar2_g2248 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g2246 = rotatedValue69_g2246;
				float clampResult80_g2246 = clamp( ( ( ( sin( ( ( break67_g2246.x + break67_g2246.y ) * 10.0 ) ) + _ShineDensity ) * ( 2.0 - _ShineDensity ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.texCoord0.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g2250 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g2246 = (float4(( (temp_output_1_0_g2246).rgb + ( ( pow( saferPower83_g2246 , max( _ShineContrast , 0.001 ) ) * (_ShineColor).rgb ) * clampResult80_g2246 * ( _ShineFade * ( tex2DNode3_g2250.r * tex2DNode3_g2250.a ) ) ) ) , (temp_output_1_0_g2246).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g2245 = appendResult8_g2246;
				#else
				float4 staticSwitch36_g2245 = staticSwitch34_g2245;
				#endif
				float2 appendResult2_g2293 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2292 = 0;
				if( (int)_PoisonSpace > 1.0 )
				ifLocalVar2_g2292 = (ase_worldPos).xy;
				else if( (int)_PoisonSpace == 1.0 )
				ifLocalVar2_g2292 = (IN.ase_texcoord6.xyz).xy;
				else if( (int)_PoisonSpace < 1.0 )
				ifLocalVar2_g2292 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2293 ) );
				float mulTime15_g2290 = _TimeParameters.x * _PoisonShiftSpeed;
				float saferPower19_g2290 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _PoisonNoiseSpeed ) + ifLocalVar2_g2292 ) * _PoisonNoiseScale ) ).r + mulTime15_g2290 ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g2290 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g2290 = staticSwitch36_g2245;
				float3 temp_output_28_0_g2290 = (temp_output_1_0_g2290).rgb;
				float4 break2_g2294 = float4( temp_output_28_0_g2290 , 0.0 );
				float3 lerpResult32_g2290 = lerp( temp_output_28_0_g2290 , ( temp_output_24_0_g2290 * ( ( break2_g2294.x + break2_g2294.y + break2_g2294.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g2290 = (float4(( ( max( pow( saferPower19_g2290 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g2290 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g2290 ) , temp_output_1_0_g2290.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g2245 = appendResult27_g2290;
				#else
				float4 staticSwitch39_g2245 = staticSwitch36_g2245;
				#endif
				float4 temp_output_109_0 = staticSwitch39_g2245;
				float4 break4_g2295 = temp_output_109_0;
				float4 appendResult5_g2295 = (float4(break4_g2295.r , break4_g2295.g , break4_g2295.b , ( break4_g2295.a * _FullDistortionFade )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g2295;
				#else
				float4 staticSwitch77 = temp_output_109_0;
				#endif
				float4 break4_g2296 = staticSwitch77;
				float4 appendResult5_g2296 = (float4(break4_g2296.r , break4_g2296.g , break4_g2296.b , ( break4_g2296.a * (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g1199 ) ):( clampResult154_g1199 )) )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g2296;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g2327 = staticSwitch75;
				float4 temp_output_1_0_g2328 = temp_output_1_0_g2327;
				float temp_output_53_0_g2328 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 appendResult2_g2331 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2330 = 0;
				if( _FullAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2330 = (ase_worldPos).xy;
				else if( _FullAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2330 = (IN.ase_texcoord6.xyz).xy;
				else if( _FullAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2330 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2331 ) );
				float clampResult17_g2328 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g2328 ) ) - tex2D( _UberNoiseTexture, ( ifLocalVar2_g2330 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g2328 ) , 0.0 , 1.0 );
				float4 appendResult3_g2328 = (float4((temp_output_1_0_g2328).rgb , ( temp_output_1_0_g2328.a * clampResult17_g2328 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g2327 = appendResult3_g2328;
				#else
				float4 staticSwitch3_g2327 = temp_output_1_0_g2327;
				#endif
				float2 appendResult2_g2342 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2341 = 0;
				if( _FullGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2341 = (ase_worldPos).xy;
				else if( _FullGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2341 = (IN.ase_texcoord6.xyz).xy;
				else if( _FullGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2341 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2342 ) );
				float temp_output_5_0_g2340 = tex2D( _UberNoiseTexture, ( ifLocalVar2_g2341 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g2340 = step( temp_output_5_0_g2340 , _FullGlowDissolveFade );
				float temp_output_53_0_g2340 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g2340 = staticSwitch3_g2327;
				float4 appendResult3_g2340 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g2340 - step( temp_output_5_0_g2340 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g2340 ) ) - temp_output_53_0_g2340 ) ) ) ) + (temp_output_1_0_g2340).rgb ) , ( temp_output_1_0_g2340.a * temp_output_61_0_g2340 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g2327 = appendResult3_g2340;
				#else
				float4 staticSwitch5_g2327 = staticSwitch3_g2327;
				#endif
				float4 temp_output_1_0_g2336 = staticSwitch5_g2327;
				float2 appendResult2_g2339 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2338 = 0;
				if( _SourceAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2338 = (ase_worldPos).xy;
				else if( _SourceAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2338 = (IN.ase_texcoord6.xyz).xy;
				else if( _SourceAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2338 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2339 ) );
				float2 temp_output_7_0_g2336 = ifLocalVar2_g2338;
				float clampResult17_g2336 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_7_0_g2336 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2336 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2336 = (float4((temp_output_1_0_g2336).rgb , ( temp_output_1_0_g2336.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g2336 ) ):( clampResult17_g2336 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g2327 = appendResult3_g2336;
				#else
				float4 staticSwitch8_g2327 = staticSwitch5_g2327;
				#endif
				float2 appendResult2_g2346 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2345 = 0;
				if( _SourceGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2345 = (ase_worldPos).xy;
				else if( _SourceGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2345 = (IN.ase_texcoord6.xyz).xy;
				else if( _SourceGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2345 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2346 ) );
				float2 temp_output_7_0_g2344 = ifLocalVar2_g2345;
				float temp_output_65_0_g2344 = ( distance( _SourceGlowDissolvePosition , temp_output_7_0_g2344 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2344 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g2344 = step( temp_output_65_0_g2344 , _SourceGlowDissolveFade );
				float temp_output_76_0_g2344 = step( temp_output_65_0_g2344 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g2344 = staticSwitch8_g2327;
				float4 appendResult3_g2344 = (float4(( ( max( ( temp_output_75_0_g2344 - temp_output_76_0_g2344 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g2344).rgb ) , ( temp_output_1_0_g2344.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g2344 ) ):( temp_output_75_0_g2344 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g2327 = appendResult3_g2344;
				#else
				float4 staticSwitch9_g2327 = staticSwitch8_g2327;
				#endif
				float4 temp_output_1_0_g2352 = staticSwitch9_g2327;
				float2 appendResult2_g2355 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2354 = 0;
				if( _DirectionalAlphaFadeSpace > 1.0 )
				ifLocalVar2_g2354 = (ase_worldPos).xy;
				else if( _DirectionalAlphaFadeSpace == 1.0 )
				ifLocalVar2_g2354 = (IN.ase_texcoord6.xyz).xy;
				else if( _DirectionalAlphaFadeSpace < 1.0 )
				ifLocalVar2_g2354 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2355 ) );
				float2 temp_output_7_0_g2352 = ifLocalVar2_g2354;
				float3 rotatedValue136_g2352 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2352 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2352 = rotatedValue136_g2352;
				float clampResult154_g2352 = clamp( ( ( break130_g2352.x + break130_g2352.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2352 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2352 = (float4((temp_output_1_0_g2352).rgb , ( temp_output_1_0_g2352.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g2352 ) ):( clampResult154_g2352 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g2327 = appendResult3_g2352;
				#else
				float4 staticSwitch11_g2327 = staticSwitch9_g2327;
				#endif
				float2 appendResult2_g2351 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2350 = 0;
				if( _DirectionalGlowFadeSpace > 1.0 )
				ifLocalVar2_g2350 = (ase_worldPos).xy;
				else if( _DirectionalGlowFadeSpace == 1.0 )
				ifLocalVar2_g2350 = (IN.ase_texcoord6.xyz).xy;
				else if( _DirectionalGlowFadeSpace < 1.0 )
				ifLocalVar2_g2350 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2351 ) );
				float2 temp_output_7_0_g2348 = ifLocalVar2_g2350;
				float3 rotatedValue136_g2348 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2348 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2348 = rotatedValue136_g2348;
				float temp_output_168_0_g2348 = max( ( ( break130_g2348.x + break130_g2348.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2348 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g2348 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2348 ) ):( temp_output_168_0_g2348 )) );
				float4 temp_output_1_0_g2348 = staticSwitch11_g2327;
				float clampResult154_g2348 = clamp( temp_output_161_0_g2348 , 0.0 , 1.0 );
				float4 appendResult3_g2348 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g2348 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2348 ) ):( temp_output_168_0_g2348 )) ) ) ) + (temp_output_1_0_g2348).rgb ) , ( temp_output_1_0_g2348.a * clampResult154_g2348 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g2327 = appendResult3_g2348;
				#else
				float4 staticSwitch15_g2327 = staticSwitch11_g2327;
				#endif
				float4 temp_output_1_0_g2332 = staticSwitch15_g2327;
				float2 appendResult2_g2335 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2334 = 0;
				if( _HalftoneSpace > 1.0 )
				ifLocalVar2_g2334 = (ase_worldPos).xy;
				else if( _HalftoneSpace == 1.0 )
				ifLocalVar2_g2334 = (IN.ase_texcoord6.xyz).xy;
				else if( _HalftoneSpace < 1.0 )
				ifLocalVar2_g2334 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2335 ) );
				float2 temp_output_7_0_g2332 = ifLocalVar2_g2334;
				float temp_output_121_0_g2332 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_7_0_g2332 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g2333 = (float2(temp_output_121_0_g2332 , temp_output_121_0_g2332));
				float temp_output_17_0_g2333 = length( ( (( ( abs( temp_output_7_0_g2332 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g2333 ) );
				float clampResult17_g2332 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g2333 ) / fwidth( temp_output_17_0_g2333 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2332 = (float4((temp_output_1_0_g2332).rgb , ( temp_output_1_0_g2332.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g2332 ) ):( clampResult17_g2332 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g2327 = appendResult3_g2332;
				#else
				float4 staticSwitch13_g2327 = staticSwitch15_g2327;
				#endif
				float4 temp_output_1_0_g2358 = staticSwitch13_g2327;
				float4 break2_g2360 = temp_output_1_0_g2358;
				float temp_output_9_0_g2359 = max( _AddColorContrast , 0.0 );
				float saferPower7_g2359 = max( ( ( ( break2_g2360.x + break2_g2360.y + break2_g2360.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2359 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g2358 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g2359 , temp_output_9_0_g2359 ) * _AddColorFade ) + (temp_output_1_0_g2358).rgb ) , temp_output_1_0_g2358.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g2357 = appendResult6_g2358;
				#else
				float4 staticSwitch5_g2357 = staticSwitch13_g2327;
				#endif
				float4 temp_output_1_0_g2361 = staticSwitch5_g2357;
				float saferPower11_g2361 = max( ( 1.0 - temp_output_1_0_g2361.a ) , 0.0001 );
				float3 lerpResult4_g2361 = lerp( (temp_output_1_0_g2361).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g2361 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g2361.a ) ));
				float4 appendResult13_g2361 = (float4(lerpResult4_g2361 , temp_output_1_0_g2361.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g2357 = appendResult13_g2361;
				#else
				float4 staticSwitch11_g2357 = staticSwitch5_g2357;
				#endif
				float4 temp_output_1_0_g2362 = staticSwitch11_g2357;
				float4 break2_g2363 = temp_output_1_0_g2362;
				float temp_output_9_0_g2364 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g2364 = max( ( ( ( break2_g2363.x + break2_g2363.y + break2_g2363.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2364 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g2362 = lerp( (temp_output_1_0_g2362).rgb , ( pow( saferPower7_g2364 , temp_output_9_0_g2364 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g2362 = (float4(lerpResult7_g2362 , (temp_output_1_0_g2362).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g2357 = appendResult9_g2362;
				#else
				float4 staticSwitch7_g2357 = staticSwitch11_g2357;
				#endif
				float4 lerpResult125 = lerp( tex2DNode31 , staticSwitch7_g2357 , fullFade123);
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g2195 = _White;
				#else
				float4 staticSwitch8_g2195 = IN.color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g2195 = _White;
				#else
				float4 staticSwitch9_g2195 = staticSwitch8_g2195;
				#endif
				float4 lerpResult126 = lerp( IN.color , staticSwitch9_g2195 , fullFade123);
				
				float2 temp_output_8_0_g2368 = lerpResult130;
				float3 unpack14_g2368 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g2368 ), _NormalIntensity );
				unpack14_g2368.z = lerp( 1, unpack14_g2368.z, saturate(_NormalIntensity) );
				
				float4 Color = ( lerpResult125 * lerpResult126 );
				float3 Normal = unpack14_g2368;
				
				Color *= IN.color;

				return NormalsRenderingShared( Color, Normal, IN.tangentWS.xyz, IN.bitangentWS, IN.normalWS);
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Sprite Forward"
			Tags { "LightMode"="UniversalForward" }

			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZTest LEqual
			ZWrite Off
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define ASE_SRP_VERSION 70403

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#pragma multi_compile _ ETC1_EXTERNAL_ALPHA

			#define _SURFACE_TYPE_TRANSPARENT 1
			#define SHADERPASS_SPRITEFORWARD

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

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
			#pragma multi_compile_local __ _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma multi_compile_local __ _OUTEROUTLINEDISTORTIONTOGGLE_ON


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
			CBUFFER_START( UnityPerMaterial )
			float4 _ShineShaderMask_ST;
			float4 _CamouflageBaseColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _FrozenHighlightColor;
			float4 _HologramTint;
			float4 _FullGlowDissolveEdgeColor;
			float4 _OuterOutlineColor;
			float4 _BurnInsideNoiseColor;
			float4 _PoisonColor;
			float4 _ColorReplaceColor;
			float4 _ColorReplaceTargetColor;
			float4 _MetalHighlightColor;
			float4 _InnerOutlineColor;
			float4 _SplitToningShadowsColor;
			float4 _SplitToningHighlightsColor;
			float4 _CamouflageColorA;
			float4 _SineGlowColor;
			float4 _BlackTintColor;
			float4 _ShineColor;
			float4 _RecolorTintAreas_ST;
			float4 _RecolorPurpleTint;
			float4 _RecolorBlueTint;
			float4 _RecolorCyanTint;
			float4 _RecolorGreenTint;
			float4 _RecolorYellowTint;
			float4 _RecolorRedTint;
			float4 _RainbowMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _BurnInsideColor;
			float4 _InkSpreadColor;
			float4 _ShiftHueShaderMask_ST;
			float4 _SineGlowShaderMask_ST;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _BurnEdgeColor;
			float4 _CamouflageShaderMask_ST;
			float4 _MetalShaderMask_ST;
			float4 _MainTex_TexelSize;
			float4 _CamouflageColorB;
			float4 _AddColorColor;
			float4 _MetalColor;
			float4 _AlphaTintColor;
			float4 _WindDistortionMask_ST;
			float4 _FrozenTint;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _FrozenSnowColor;
			float2 _CamouflageNoiseScaleB;
			float2 _OuterOutlineDistortionIntensity;
			float2 _WindToDistortion;
			float2 _PoisonNoiseSpeed;
			float2 _OuterOutlineNoiseSpeed;
			float2 _WindDistortionSpeed;
			float2 _FlameSpeed;
			float2 _WindDistortionScale;
			float2 _InnerOutlineNoiseSpeed;
			float2 _WindFromDistortion;
			float2 _InnerOutlineNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _FlameNoiseScale;
			float2 _PoisonNoiseScale;
			float2 _SqueezeCenter;
			float2 _CustomFadeNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _RainbowCenter;
			float2 _InkSpreadPosition;
			float2 _RainbowNoiseScale;
			float2 _MetalNoiseScale;
			float2 _BurnEdgeNoiseScale;
			float2 _BurnPosition;
			float2 _MetalNoiseSpeed;
			float2 _SineMoveFrequency;
			float2 _SineMoveOffset;
			float2 _MetalNoiseDistortion;
			float2 _MetalNoiseDistortionScale;
			float2 _MetalNoiseDistortionSpeed;
			float2 _BurnInsideNoiseScale;
			float2 _HalftonePosition;
			float2 _BurnSwirlNoiseScale;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _OuterOutlineNoiseScale;
			float2 _GlitchNoiseSpeed;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _GlitchNoiseScale;
			float2 _DirectionalDistortionDistortion;
			float2 _DirectionalDistortionDistortionScale;
			float2 _UVDistortSpeed;
			float2 _FullDistortionDistortion;
			float2 _FullDistortionNoiseScale;
			float2 _UVDistortNoiseScale;
			float2 _DirectionalDistortionNoiseScale;
			float2 _FrozenSnowScale;
			float2 _UVRotatePivot;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _SineRotatePivot;
			float2 _CamouflageAnimationSpeed;
			float2 _CamouflageDistortionScale;
			float2 _CamouflageDistortionIntensity;
			float2 _SqueezeScale;
			float2 _CamouflageNoiseScaleA;
			float2 _UVScrollSpeed;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _FrozenHighlightSpeed;
			float2 _GlitchDistortion;
			float2 _UVDistortTo;
			float2 _GlitchMaskSpeed;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortionSpeed;
			float2 _SourceAlphaDissolvePosition;
			float2 _GlitchMaskScale;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _FrozenHighlightDistortion;
			float2 _FrozenHighlightDistortionScale;
			float2 _UVDistortFrom;
			float2 _SourceGlowDissolvePosition;
			float2 _FullGlowDissolveNoiseScale;
			float2 _FrozenHighlightScale;
			float _BurnEdgeNoiseFactor;
			float _FrozenSnowContrast;
			float _FrozenHighlightContrast;
			float _BurnInsideContrast;
			float _BurnSpace;
			float _BurnRadius;
			int _FrozenSpace;
			float _BurnWidth;
			float _MetalFade;
			float _FrozenHighlightDensity;
			float _BurnSwirlFactor;
			float _FrozenContrast;
			float _BurnInsideNoiseFactor;
			float _FrozenSnowDensity;
			float _FrozenFade;
			float _SquishStretch;
			float _RainbowSpace;
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
			float _DirectionalGlowFadeInvert;
			float _DirectionalGlowFadeRotation;
			float _SourceAlphaDissolveWidth;
			int _DirectionalGlowFadeSpace;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeWidth;
			float _HalftoneInvert;
			int _HalftoneSpace;
			float _HalftoneTiling;
			float _HalftoneFade;
			float _HalftoneFadeWidth;
			float _AddColorContrast;
			float _AddColorFade;
			float _AlphaTintPower;
			float _AlphaTintFade;
			float _AlphaTintMinAlpha;
			float _StrongTintContrast;
			float _DirectionalGlowFadeFade;
			float _BurnFade;
			float _SourceAlphaDissolveNoiseFactor;
			float _SourceAlphaDissolveFade;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineContrast;
			float _ShineRotation;
			float _ShineSpeed;
			float _ShineScale;
			int _ShineSpace;
			float _ShineDensity;
			int _SourceAlphaDissolveSpace;
			float _ShineSmoothness;
			float _PoisonSpace;
			float _PoisonShiftSpeed;
			float _PoisonDensity;
			float _PoisonFade;
			float _PoisonNoiseBrightness;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			int _FullAlphaDissolveSpace;
			int _FullGlowDissolveSpace;
			float _FullGlowDissolveFade;
			float _FullGlowDissolveWidth;
			float _SourceAlphaDissolveInvert;
			float _ShineFade;
			float _MetalContrast;
			float _OuterOutlineWidth;
			int _MetalSpace;
			int _DirectionalDistortionSpace;
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
			int _FullDistortionSpace;
			int _GlitchSpace;
			float _GlitchFade;
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
			float _GlitchMaskMin;
			float _FlameNoiseHeightFactor;
			float _FullDistortionFade;
			float _UVRotateSpeed;
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
			float _UVRotateScale;
			float _WindFlip;
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
			float _WindSquishFactor;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _AddHueFade;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _InnerOutlineWidth;
			float _InnerOutlineFade;
			float _StrongTintFade;
			float _OuterOutlineFade;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _AddHueContrast;
			float _HologramLineFrequency;
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
			float _HologramLineGap;
			float _AddHueBrightness;
			float _AddHueSaturation;
			float _AddHueSpeed;
			float _FlameBrightness;
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
			float _MetalHighlightContrast;
			float _NormalIntensity;
			CBUFFER_END


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 color : COLOR;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 texCoord0 : TEXCOORD0;
				float4 color : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#if ETC1_EXTERNAL_ALPHA
				TEXTURE2D( _AlphaTex ); SAMPLER( sampler_AlphaTex );
				float _EnableAlphaTexture;
			#endif

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
			

			VertexOutput vert( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 texCoord39 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g2356 = texCoord39;
				float2 appendResult72_g2356 = (float2(( _SquishStretch * ( break77_g2356.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g2356.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH_ON
				float2 staticSwitch96 = ( appendResult72_g2356 + float2( 0,0 ) );
				#else
				float2 staticSwitch96 = float2( 0,0 );
				#endif
				float2 temp_output_2_0_g2365 = staticSwitch96;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g2365 = ( ( sin( ( _TimeParameters.x * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g2365 );
				#else
				float2 staticSwitch4_g2365 = temp_output_2_0_g2365;
				#endif
				float mulTime27_g2367 = _TimeParameters.x * _VibrateFrequency;
				float3 rotatedValue21_g2367 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( _VibrateRotation * _TimeParameters.x ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g2365 = ( ( sin( mulTime27_g2367 ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g2367).xy ) + staticSwitch4_g2365 );
				#else
				float2 staticSwitch6_g2365 = staticSwitch4_g2365;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult121 = lerp( float2( 0,0 ) , staticSwitch6_g2365 , fullFade123);
				
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				
				o.ase_texcoord3 = v.vertex;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = float3( lerpResult121 ,  0.0 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.normal = v.normal;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.vertex.xyz );

				o.texCoord0 = v.uv0;
				o.color = v.color;
				o.clipPos = vertexInput.positionCS;

				return o;
			}

			half4 frag( VertexOutput IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				float2 texCoord131 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord39 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g1175 = texCoord39;
				float4 transform62_g1176 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g1176 = GradientNoise(( ( (transform62_g1176).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g1176 = gradientNoise95_g1176*0.5 + 0.5;
				float lerpResult86_g1176 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g1176);
				float clampResult29_g1176 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g1176 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g1176 = temp_output_3_0_g1175;
				float temp_output_39_0_g1176 = ( temp_output_1_0_g1176.y + _WindFlip );
				float3 appendResult43_g1176 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g1176 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g1176 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g1176 )));
				float3 ase_worldPos = IN.ase_texcoord2.xyz;
				float2 appendResult2_g1178 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1177 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g1177 = (ase_worldPos).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g1177 = (IN.ase_texcoord3.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g1177 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1178 ) );
				float lerpResult78_g1176 = lerp( 1.0 , lerpResult86_g1176 , _WindDistortionWindFactor);
				float2 lerpResult75_g1176 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g1177 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g1176 ));
				float2 uv_WindDistortionMask = IN.texCoord0.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g1180 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g1176 = RotateAroundAxis( appendResult43_g1176, float3( ( appendResult27_g1176 + ( ( lerpResult75_g1176 * ( 1.0 * ( tex2DNode3_g1180.r * tex2DNode3_g1180.a ) ) ) + temp_output_1_0_g1176 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g1176 * temp_output_39_0_g1176 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g1175 = (rotatedValue19_g1176).xy;
				#else
				float2 staticSwitch4_g1175 = temp_output_3_0_g1175;
				#endif
				float2 temp_output_1_0_g1181 = staticSwitch4_g1175;
				float2 appendResult2_g1193 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_22_0_g1192 = ( float2( 1,1 ) / ( 100.0 / appendResult2_g1193 ) );
				float temp_output_25_0_g1192 = ( 1.0 / max( _PixelateFade , 0.0001 ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g1181 = ( ( ( round( ( temp_output_1_0_g1181 * _PixelatePixelDensity * temp_output_22_0_g1192 * temp_output_25_0_g1192 ) ) / _PixelatePixelDensity ) / temp_output_22_0_g1192 ) / temp_output_25_0_g1192 );
				#else
				float2 staticSwitch4_g1181 = temp_output_1_0_g1181;
				#endif
				float2 appendResult2_g1184 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1183 = 0;
				if( _UVDistortSpace > 1.0 )
				ifLocalVar2_g1183 = (ase_worldPos).xy;
				else if( _UVDistortSpace == 1.0 )
				ifLocalVar2_g1183 = (IN.ase_texcoord3.xyz).xy;
				else if( _UVDistortSpace < 1.0 )
				ifLocalVar2_g1183 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1184 ) );
				float2 lerpResult21_g1182 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( ifLocalVar2_g1183 + ( _UVDistortSpeed * _TimeParameters.x ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g1186 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.texCoord0.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g1185 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g1181 = ( staticSwitch4_g1181 + ( lerpResult21_g1182 * ( 100.0 / appendResult2_g1186 ) * ( _UVDistortFade * ( tex2DNode3_g1185.r * tex2DNode3_g1185.a ) ) ) );
				#else
				float2 staticSwitch5_g1181 = staticSwitch4_g1181;
				#endif
				float2 temp_output_1_0_g1188 = staticSwitch5_g1181;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g1181 = ( temp_output_1_0_g1188 + ( ( temp_output_1_0_g1188 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g1188 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g1181 = staticSwitch5_g1181;
				#endif
				float mulTime43_g1189 = _TimeParameters.x * _SineRotateFrequency;
				float3 rotatedValue36_g1189 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g1181 ,  0.0 ), float3( 0,0,1 ), ( sin( mulTime43_g1189 ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g1181 = ( ( ( (rotatedValue36_g1189).xy - float2( 0.5,0.5 ) ) / max( _SineRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch9_g1181 = staticSwitch7_g1181;
				#endif
				float mulTime6_g1190 = _TimeParameters.x * _UVRotateSpeed;
				float3 rotatedValue8_g1190 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g1181 ,  0.0 ), float3( 0,0,1 ), ( mulTime6_g1190 * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g1181 = ( ( ( (rotatedValue8_g1190).xy - float2( 0.5,0.5 ) ) / max( _UVRotateScale , 0.01 ) ) + float2( 0.5,0.5 ) );
				#else
				float2 staticSwitch16_g1181 = staticSwitch9_g1181;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g1181 = ( ( ( _UVScrollSpeed * _TimeParameters.x ) + staticSwitch16_g1181 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g1181 = staticSwitch16_g1181;
				#endif
				float2 appendResult2_g1198 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1197 = 0;
				if( _FullDistortionSpace > 1.0 )
				ifLocalVar2_g1197 = (ase_worldPos).xy;
				else if( _FullDistortionSpace == 1.0 )
				ifLocalVar2_g1197 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullDistortionSpace < 1.0 )
				ifLocalVar2_g1197 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1198 ) );
				float2 temp_output_7_0_g1194 = ifLocalVar2_g1197;
				float2 appendResult189_g1194 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_7_0_g1194 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_7_0_g1194 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch14_g1181 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g1194 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch14_g1181;
				#endif
				float2 appendResult2_g1202 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1201 = 0;
				if( _DirectionalDistortionSpace > 1.0 )
				ifLocalVar2_g1201 = (ase_worldPos).xy;
				else if( _DirectionalDistortionSpace == 1.0 )
				ifLocalVar2_g1201 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalDistortionSpace < 1.0 )
				ifLocalVar2_g1201 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1202 ) );
				float2 temp_output_7_0_g1199 = ifLocalVar2_g1201;
				float3 rotatedValue168_g1199 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g1199 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g1199 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g1199 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g1199 = rotatedValue136_g1199;
				float clampResult154_g1199 = clamp( ( ( break130_g1199.x + break130_g1199.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g1199 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g1199).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g1199 ) ):( clampResult154_g1199 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float temp_output_8_0_g1205 = ( ( ( _TimeParameters.x * _HologramDistortionSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y );
				float2 temp_cast_7 = (temp_output_8_0_g1205).xx;
				float2 temp_cast_8 = (_HologramDistortionDensity).xx;
				float clampResult75_g1205 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_7 * temp_cast_8 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_9 = (temp_output_8_0_g1205).xx;
				float2 temp_cast_10 = (_HologramDistortionScale).xx;
				float2 appendResult2_g1206 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 appendResult44_g1205 = (float2(( ( ( clampResult75_g1205 * ( tex2D( _UberNoiseTexture, ( temp_cast_9 * temp_cast_10 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g1206 ).x ) * _HologramFade ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g1205 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 appendResult2_g1336 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g1335 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g1335 = (ase_worldPos).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g1335 = (IN.ase_texcoord3.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g1335 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g1336 ) );
				float2 temp_output_3_0_g1334 = ifLocalVar2_g1335;
				float2 temp_output_102_0 = temp_output_3_0_g1334;
				float temp_output_102_15 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_3_0_g1334 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_102_15 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float fullFade123 = _FullFade;
				float2 lerpResult130 = lerp( texCoord131 , staticSwitch62 , fullFade123);
				float4 tex2DNode31 = tex2D( _MainTex, lerpResult130 );
				float4 temp_output_1_0_g2195 = tex2DNode31;
				float4 temp_output_1_0_g2198 = temp_output_1_0_g2195;
				float2 temp_output_7_0_g2195 = lerpResult130;
				float2 temp_output_43_0_g2198 = temp_output_7_0_g2195;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g2198 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g2198 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.color.a / 2.5 ) - distance( temp_output_43_0_g2198 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g2198 = lerp( ( (temp_output_1_0_g2198).rgb * (IN.color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g2198 ) * _SmokeDarkEdge ));
				float4 appendResult31_g2198 = (float4(lerpResult34_g2198 , ( clampResult28_g2198 * _SmokeAlpha * temp_output_1_0_g2198.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g2195 = appendResult31_g2198;
				#else
				float4 staticSwitch2_g2195 = temp_output_1_0_g2195;
				#endif
				float4 temp_output_1_0_g2196 = staticSwitch2_g2195;
				float2 temp_output_57_0_g2196 = temp_output_7_0_g2195;
				float4 tex2DNode3_g2196 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g2196 );
				float clampResult37_g2196 = clamp( ( ( ( IN.color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g2196.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g2196 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g2196 = (float4(( float4( (IN.color).rgb , 0.0 ) * temp_output_1_0_g2196 ).rgb , ( temp_output_1_0_g2196.a * pow( clampResult37_g2196 , ( _CustomFadeSmoothness / max( tex2DNode3_g2196.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g2195 = appendResult13_g2196;
				#else
				float4 staticSwitch3_g2195 = staticSwitch2_g2195;
				#endif
				float4 temp_output_1_0_g2200 = staticSwitch3_g2195;
				float4 temp_output_1_0_g2201 = temp_output_1_0_g2200;
				float2 appendResult4_g2201 = (float2(ase_worldPos.x , ase_worldPos.y));
				float2 temp_output_44_0_g2201 = ( appendResult4_g2201 * _CheckerboardTiling * 0.5 );
				float2 break12_g2201 = step( ( ceil( temp_output_44_0_g2201 ) - temp_output_44_0_g2201 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g2201.x + break12_g2201.y ) ) )).xxx;
				float4 appendResult42_g2201 = (float4(( (temp_output_1_0_g2201).rgb - temp_cast_16 ) , temp_output_1_0_g2201.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g2200 = appendResult42_g2201;
				#else
				float4 staticSwitch2_g2200 = temp_output_1_0_g2200;
				#endif
				float2 temp_output_75_0_g2202 = lerpResult130;
				float saferPower57_g2202 = max( max( ( temp_output_75_0_g2202.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g2202 = max( _FlameRadius , 0.01 );
				float clampResult70_g2202 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FlameSpeed ) + temp_output_75_0_g2202 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g2202 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g2202 - distance( temp_output_75_0_g2202 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g2202 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g2202 = ( clampResult70_g2202 * _FlameBrightness );
				float4 appendResult31_g2202 = (float4(temp_output_63_0_g2202 , temp_output_63_0_g2202 , temp_output_63_0_g2202 , clampResult70_g2202));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g2200 = ( appendResult31_g2202 * staticSwitch2_g2200 );
				#else
				float4 staticSwitch6_g2200 = staticSwitch2_g2200;
				#endif
				float4 temp_output_3_0_g2204 = staticSwitch6_g2200;
				float4 temp_output_1_0_g2205 = temp_output_3_0_g2204;
				float3 temp_output_2_0_g2205 = (temp_output_1_0_g2205).rgb;
				float4 break2_g2206 = float4( temp_output_2_0_g2205 , 0.0 );
				float temp_output_9_0_g2207 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g2207 = max( ( ( ( break2_g2206.x + break2_g2206.y + break2_g2206.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2207 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g2205 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g2205 = RGBToHSV( temp_output_2_0_g2205 );
				float clampResult35_g2205 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g2205.x , hsvTorgb5_g2205.x ) , distance( hsvTorgb7_g2205.x , ( hsvTorgb5_g2205.x + 1.0 ) ) ) , distance( hsvTorgb7_g2205.x , ( hsvTorgb5_g2205.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g2205 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2205.y , hsvTorgb5_g2205.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g2205 = clamp( ( 1.0 - ( distance( hsvTorgb7_g2205.z , hsvTorgb5_g2205.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g2205 = max( ( clampResult35_g2205 * clampResult30_g2205 * clampResult40_g2205 ) , 0.0001 );
				float3 lerpResult23_g2205 = lerp( temp_output_2_0_g2205 , ( pow( saferPower7_g2207 , temp_output_9_0_g2207 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g2205 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g2205 = (float4(lerpResult23_g2205 , temp_output_1_0_g2205.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g2204 = appendResult4_g2205;
				#else
				float4 staticSwitch29_g2204 = temp_output_3_0_g2204;
				#endif
				float4 temp_output_1_0_g2235 = staticSwitch29_g2204;
				float4 break2_g2236 = temp_output_1_0_g2235;
				float temp_output_3_0_g2235 = ( ( break2_g2236.x + break2_g2236.y + break2_g2236.z ) / 3.0 );
				float clampResult25_g2235 = clamp( ( ( ( ( temp_output_3_0_g2235 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g2235 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g2235);
				float temp_output_9_0_g2237 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g2237 = max( ( temp_output_3_0_g2235 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2237 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g2235 = lerp( (temp_output_1_0_g2235).rgb , ( lerpResult6_g2235 * pow( saferPower7_g2237 , temp_output_9_0_g2237 ) ) , _SplitToningFade);
				float4 appendResult18_g2235 = (float4(lerpResult11_g2235 , temp_output_1_0_g2235.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g2204 = appendResult18_g2235;
				#else
				float4 staticSwitch30_g2204 = staticSwitch29_g2204;
				#endif
				float4 temp_output_1_0_g2208 = staticSwitch30_g2204;
				float3 temp_output_4_0_g2208 = (temp_output_1_0_g2208).rgb;
				float4 break12_g2208 = temp_output_1_0_g2208;
				float3 lerpResult7_g2208 = lerp( temp_output_4_0_g2208 , ( temp_output_4_0_g2208 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g2208.r , break12_g2208.g ) , break12_g2208.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g2208 = lerp( temp_output_4_0_g2208 , lerpResult7_g2208 , _BlackTintFade);
				float4 appendResult11_g2208 = (float4(lerpResult13_g2208 , break12_g2208.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g2204 = appendResult11_g2208;
				#else
				float4 staticSwitch20_g2204 = staticSwitch30_g2204;
				#endif
				float4 temp_output_1_0_g2230 = staticSwitch20_g2204;
				float2 uv_RecolorTintAreas = IN.texCoord0.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g2230 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g2230 = ( ( hsvTorgb33_g2230.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g2230 = 0;
				if( temp_output_43_0_g2230 >= 0.8333333 )
				ifLocalVar46_g2230 = _RecolorPurpleTint;
				else
				ifLocalVar46_g2230 = _RecolorBlueTint;
				float4 ifLocalVar44_g2230 = 0;
				if( temp_output_43_0_g2230 <= 0.6666667 )
				ifLocalVar44_g2230 = _RecolorCyanTint;
				else
				ifLocalVar44_g2230 = ifLocalVar46_g2230;
				float4 ifLocalVar47_g2230 = 0;
				if( temp_output_43_0_g2230 <= 0.3333333 )
				ifLocalVar47_g2230 = _RecolorYellowTint;
				else
				ifLocalVar47_g2230 = _RecolorGreenTint;
				float4 ifLocalVar45_g2230 = 0;
				if( temp_output_43_0_g2230 <= 0.1666667 )
				ifLocalVar45_g2230 = _RecolorRedTint;
				else
				ifLocalVar45_g2230 = ifLocalVar47_g2230;
				float4 ifLocalVar35_g2230 = 0;
				if( temp_output_43_0_g2230 >= 0.5 )
				ifLocalVar35_g2230 = ifLocalVar44_g2230;
				else
				ifLocalVar35_g2230 = ifLocalVar45_g2230;
				float4 break55_g2230 = ifLocalVar35_g2230;
				float3 appendResult56_g2230 = (float3(break55_g2230.r , break55_g2230.g , break55_g2230.b));
				float4 break2_g2231 = temp_output_1_0_g2230;
				float saferPower57_g2230 = max( ( ( break2_g2231.x + break2_g2231.y + break2_g2231.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g2230 = lerp( (temp_output_1_0_g2230).rgb , ( appendResult56_g2230 * pow( saferPower57_g2230 , max( ( break55_g2230.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g2230.z * _RecolorFade ));
				float4 appendResult30_g2230 = (float4(lerpResult26_g2230 , temp_output_1_0_g2230.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g2204 = appendResult30_g2230;
				#else
				float4 staticSwitch9_g2204 = staticSwitch20_g2204;
				#endif
				float4 break2_g2216 = staticSwitch9_g2204;
				float3 appendResult4_g2216 = (float3(break2_g2216.r , break2_g2216.g , break2_g2216.b));
				float3 hsvTorgb16_g2216 = RGBToHSV( appendResult4_g2216 );
				float clampResult18_g2216 = clamp( ( hsvTorgb16_g2216.y * _AdjustColorSaturation ) , 0.0 , 1.0 );
				float temp_output_9_0_g2217 = max( _AdjustColorContrast , 0.0 );
				float saferPower7_g2217 = max( ( hsvTorgb16_g2216.z + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2217 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb24_g2216 = HSVToRGB( float3(( hsvTorgb16_g2216.x + _AdjustColorHueShift ),clampResult18_g2216,( pow( saferPower7_g2217 , temp_output_9_0_g2217 ) * _AdjustColorBrightness )) );
				float3 lerpResult9_g2216 = lerp( appendResult4_g2216 , hsvTorgb24_g2216 , _AdjustColorFade);
				float4 appendResult3_g2216 = (float4(lerpResult9_g2216 , break2_g2216.a));
				#ifdef _ENABLEADJUSTCOLOR_ON
				float4 staticSwitch10_g2204 = appendResult3_g2216;
				#else
				float4 staticSwitch10_g2204 = staticSwitch9_g2204;
				#endif
				float4 temp_output_1_0_g2224 = staticSwitch10_g2204;
				float4 break2_g2226 = temp_output_1_0_g2224;
				float temp_output_9_0_g2227 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g2227 = max( ( ( ( break2_g2226.x + break2_g2226.y + break2_g2226.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2227 ) , 0.0 ) ) ) , 0.0001 );
				float2 appendResult2_g2229 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2228 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g2228 = (ase_worldPos).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g2228 = (IN.ase_texcoord3.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g2228 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2229 ) );
				float2 temp_output_19_0_g2224 = ifLocalVar2_g2228;
				float clampResult53_g2224 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g2224 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_19_0_g2224 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g2224 = lerp( (temp_output_1_0_g2224).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g2227 , temp_output_9_0_g2227 ) ) , ( _InkSpreadFade * clampResult53_g2224 ));
				float4 appendResult9_g2224 = (float4(lerpResult7_g2224 , (temp_output_1_0_g2224).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g2204 = appendResult9_g2224;
				#else
				float4 staticSwitch17_g2204 = staticSwitch10_g2204;
				#endif
				float4 temp_output_1_0_g2222 = staticSwitch17_g2204;
				float3 temp_output_34_0_g2222 = (temp_output_1_0_g2222).rgb;
				float mulTime31_g2222 = _TimeParameters.x * _ShiftHueSpeed;
				float3 hsvTorgb15_g2222 = RGBToHSV( temp_output_34_0_g2222 );
				float3 hsvTorgb19_g2222 = HSVToRGB( float3(( mulTime31_g2222 + hsvTorgb15_g2222.x ),hsvTorgb15_g2222.y,hsvTorgb15_g2222.z) );
				float2 uv_ShiftHueShaderMask = IN.texCoord0.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g2223 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g2222 = lerp( temp_output_34_0_g2222 , hsvTorgb19_g2222 , ( _ShiftHueFade * ( tex2DNode3_g2223.r * tex2DNode3_g2223.a ) ));
				float4 appendResult6_g2222 = (float4(lerpResult33_g2222 , temp_output_1_0_g2222.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g2204 = appendResult6_g2222;
				#else
				float4 staticSwitch19_g2204 = staticSwitch17_g2204;
				#endif
				float mulTime28_g2218 = _TimeParameters.x * _AddHueSpeed;
				float3 hsvTorgb3_g2219 = HSVToRGB( float3(mulTime28_g2218,1.0,1.0) );
				float3 hsvTorgb15_g2218 = RGBToHSV( hsvTorgb3_g2219 );
				float3 hsvTorgb19_g2218 = HSVToRGB( float3(hsvTorgb15_g2218.x,_AddHueSaturation,( hsvTorgb15_g2218.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g2218 = staticSwitch19_g2204;
				float4 break2_g2220 = temp_output_1_0_g2218;
				float saferPower27_g2218 = max( ( ( break2_g2220.x + break2_g2220.y + break2_g2220.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.texCoord0.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g2221 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g2218 = (float4(( ( hsvTorgb19_g2218 * pow( saferPower27_g2218 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g2221.r * tex2DNode3_g2221.a ) ) ) + (temp_output_1_0_g2218).rgb ) , temp_output_1_0_g2218.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g2204 = appendResult6_g2218;
				#else
				float4 staticSwitch23_g2204 = staticSwitch19_g2204;
				#endif
				float4 temp_output_1_0_g2209 = staticSwitch23_g2204;
				float4 break2_g2212 = temp_output_1_0_g2209;
				float temp_output_9_0_g2211 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g2211 = max( ( ( ( break2_g2212.x + break2_g2212.y + break2_g2212.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2211 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.texCoord0.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g2210 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float mulTime15_g2209 = _TimeParameters.x * _SineGlowFrequency;
				float4 appendResult21_g2209 = (float4(( (temp_output_1_0_g2209).rgb + ( pow( saferPower7_g2211 , temp_output_9_0_g2211 ) * ( _SineGlowFade * ( tex2DNode3_g2210.r * tex2DNode3_g2210.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( mulTime15_g2209 ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g2209.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g2204 = appendResult21_g2209;
				#else
				float4 staticSwitch28_g2204 = staticSwitch23_g2204;
				#endif
				float4 temp_output_15_0_g2213 = staticSwitch28_g2204;
				float2 temp_output_1_0_g2204 = lerpResult130;
				float2 temp_output_7_0_g2213 = temp_output_1_0_g2204;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g2213 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g2213 ) * _InnerOutlineNoiseScale ) ).r - 0.25 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g2213 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2213 = ( staticSwitch169_g2213 + temp_output_7_0_g2213 );
				float2 appendResult2_g2214 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2213 = ( 100.0 / appendResult2_g2214 );
				float temp_output_161_0_g2213 = (temp_output_15_0_g2213).a;
				float temp_output_151_0_g2213 = ( ( _InnerOutlineColor.a * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2213 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2213 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2213 ) ) ).a ) ) * temp_output_161_0_g2213 ) * ( _InnerOutlineFade * min( ( _InnerOutlineWidth * 100.0 ) , 1.0 ) ) );
				float4 appendResult84_g2213 = (float4((_InnerOutlineColor).rgb , temp_output_151_0_g2213));
				float4 lerpResult43_g2213 = lerp( temp_output_15_0_g2213 , appendResult84_g2213 , temp_output_151_0_g2213);
				float4 appendResult162_g2213 = (float4((lerpResult43_g2213).xyz , temp_output_161_0_g2213));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g2204 = appendResult162_g2213;
				#else
				float4 staticSwitch12_g2204 = staticSwitch28_g2204;
				#endif
				float4 temp_output_15_0_g2232 = staticSwitch12_g2204;
				float temp_output_31_0_g2232 = (temp_output_15_0_g2232).a;
				float2 temp_output_7_0_g2232 = temp_output_1_0_g2204;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g2232 = ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g2232 ) * _OuterOutlineNoiseScale ) ).r - 0.25 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g2232 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g2232 = ( staticSwitch157_g2232 + temp_output_7_0_g2232 );
				float2 appendResult2_g2233 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g2232 = ( 100.0 / appendResult2_g2233 );
				float temp_output_83_0_g2232 = ( _OuterOutlineColor.a * min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g2232 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g2232 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g2232 ) ) ).a ) * 3.0 ) , 1.0 ) );
				float lerpResult152_g2232 = lerp( temp_output_31_0_g2232 , temp_output_83_0_g2232 , ( temp_output_83_0_g2232 * _OuterOutlineFade ));
				float4 appendResult84_g2232 = (float4((_OuterOutlineColor).rgb , lerpResult152_g2232));
				float4 lerpResult43_g2232 = lerp( appendResult84_g2232 , temp_output_15_0_g2232 , ( 1.0 - ( min( ( _OuterOutlineFade * 10.0 ) , 1.0 ) * ( 1.0 - temp_output_31_0_g2232 ) ) ));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g2204 = lerpResult43_g2232;
				#else
				float4 staticSwitch13_g2204 = staticSwitch12_g2204;
				#endif
				float4 temp_output_108_0 = staticSwitch13_g2204;
				float4 temp_output_1_0_g2238 = temp_output_108_0;
				float4 break2_g2239 = temp_output_1_0_g2238;
				float temp_output_9_0_g2240 = max( _HologramContrast , 0.0 );
				float saferPower7_g2240 = max( ( ( ( break2_g2239.x + break2_g2239.y + break2_g2239.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2240 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g2238 = (float4(( (_HologramTint).rgb * pow( saferPower7_g2240 , temp_output_9_0_g2240 ) ) , ( max( pow( abs( sin( ( ( ( ( _TimeParameters.x * _HologramLineSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g2238.a )));
				float4 lerpResult37_g2238 = lerp( temp_output_1_0_g2238 , appendResult22_g2238 , _HologramFade);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g2238;
				#else
				float4 staticSwitch56 = temp_output_108_0;
				#endif
				float4 temp_output_1_0_g2241 = staticSwitch56;
				float4 break2_g2243 = temp_output_1_0_g2241;
				float mulTime14_g2241 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g2244 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( temp_output_102_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g2241 ),1.0,1.0) );
				float3 lerpResult23_g2241 = lerp( (temp_output_1_0_g2241).rgb , ( ( ( break2_g2243.x + break2_g2243.y + break2_g2243.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g2244 ) , temp_output_102_15);
				float4 appendResult27_g2241 = (float4(lerpResult23_g2241 , temp_output_1_0_g2241.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g2241;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g2245 = staticSwitch57;
				float4 temp_output_1_0_g2281 = temp_output_3_0_g2245;
				float2 appendResult2_g2286 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2285 = 0;
				if( _CamouflageSpace > 1.0 )
				ifLocalVar2_g2285 = (ase_worldPos).xy;
				else if( _CamouflageSpace == 1.0 )
				ifLocalVar2_g2285 = (IN.ase_texcoord3.xyz).xy;
				else if( _CamouflageSpace < 1.0 )
				ifLocalVar2_g2285 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2286 ) );
				float2 temp_output_42_0_g2281 = ifLocalVar2_g2285;
				float clampResult52_g2281 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2281 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2281 ) ):( temp_output_42_0_g2281 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g2281 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g2281 ) , clampResult52_g2281);
				float clampResult65_g2281 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _CamouflageAnimationSpeed ) + temp_output_42_0_g2281 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_42_0_g2281 ) ):( temp_output_42_0_g2281 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g2281 = lerp( lerpResult55_g2281 , ( _CamouflageColorB * clampResult65_g2281 ) , clampResult65_g2281);
				float4 break2_g2282 = temp_output_1_0_g2281;
				float temp_output_9_0_g2289 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g2289 = max( ( ( ( break2_g2282.x + break2_g2282.y + break2_g2282.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2289 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.texCoord0.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g2284 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g2281 = lerp( (temp_output_1_0_g2281).rgb , ( (lerpResult68_g2281).rgb * pow( saferPower7_g2289 , temp_output_9_0_g2289 ) ) , ( _CamouflageFade * ( tex2DNode3_g2284.r * tex2DNode3_g2284.a ) ));
				float4 appendResult7_g2281 = (float4(lerpResult4_g2281 , temp_output_1_0_g2281.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g2245 = appendResult7_g2281;
				#else
				float4 staticSwitch26_g2245 = temp_output_3_0_g2245;
				#endif
				float4 temp_output_1_0_g2273 = staticSwitch26_g2245;
				float2 appendResult2_g2280 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2279 = 0;
				if( _MetalSpace > 1.0 )
				ifLocalVar2_g2279 = (ase_worldPos).xy;
				else if( _MetalSpace == 1.0 )
				ifLocalVar2_g2279 = (IN.ase_texcoord3.xyz).xy;
				else if( _MetalSpace < 1.0 )
				ifLocalVar2_g2279 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2280 ) );
				float2 temp_output_16_0_g2273 = ifLocalVar2_g2279;
				float4 break2_g2274 = temp_output_1_0_g2273;
				float temp_output_5_0_g2273 = ( ( break2_g2274.x + break2_g2274.y + break2_g2274.z ) / 3.0 );
				float temp_output_9_0_g2277 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g2277 = max( ( temp_output_5_0_g2273 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2277 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g2273 = max( temp_output_5_0_g2273 , 0.0001 );
				float2 uv_MetalShaderMask = IN.texCoord0.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g2278 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g2273 = lerp( temp_output_1_0_g2273 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _MetalNoiseDistortionSpeed ) + temp_output_16_0_g2273 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( _TimeParameters.x * _MetalNoiseSpeed ) + temp_output_16_0_g2273 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g2277 , temp_output_9_0_g2277 ) ) + ( pow( saferPower2_g2273 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g2278.r * tex2DNode3_g2278.a ) ));
				float4 appendResult8_g2273 = (float4((lerpResult45_g2273).rgb , (temp_output_1_0_g2273).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g2245 = appendResult8_g2273;
				#else
				float4 staticSwitch28_g2245 = staticSwitch26_g2245;
				#endif
				float4 temp_output_1_0_g2265 = staticSwitch28_g2245;
				float4 break2_g2268 = temp_output_1_0_g2265;
				float temp_output_7_0_g2265 = ( ( break2_g2268.x + break2_g2268.y + break2_g2268.z ) / 3.0 );
				float temp_output_9_0_g2272 = max( _FrozenContrast , 0.0 );
				float saferPower7_g2272 = max( ( temp_output_7_0_g2265 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2272 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g2265 = max( temp_output_7_0_g2265 , 0.0001 );
				float2 appendResult2_g2271 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2270 = 0;
				if( _FrozenSpace > 1.0 )
				ifLocalVar2_g2270 = (ase_worldPos).xy;
				else if( _FrozenSpace == 1.0 )
				ifLocalVar2_g2270 = (IN.ase_texcoord3.xyz).xy;
				else if( _FrozenSpace < 1.0 )
				ifLocalVar2_g2270 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2271 ) );
				float2 temp_output_3_0_g2265 = ifLocalVar2_g2270;
				float saferPower42_g2265 = max( temp_output_7_0_g2265 , 0.0001 );
				float3 lerpResult57_g2265 = lerp( (temp_output_1_0_g2265).rgb , ( ( pow( saferPower7_g2272 , temp_output_9_0_g2272 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g2265 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_3_0_g2265 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _FrozenHighlightDistortionSpeed ) + temp_output_3_0_g2265 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( _TimeParameters.x * _FrozenHighlightSpeed ) + temp_output_3_0_g2265 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g2265 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g2265 = (float4(lerpResult57_g2265 , temp_output_1_0_g2265.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g2245 = appendResult26_g2265;
				#else
				float4 staticSwitch29_g2245 = staticSwitch28_g2245;
				#endif
				float4 temp_output_1_0_g2258 = staticSwitch29_g2245;
				float3 temp_output_28_0_g2258 = (temp_output_1_0_g2258).rgb;
				float4 break2_g2259 = float4( temp_output_28_0_g2258 , 0.0 );
				float saferPower21_g2258 = max( ( ( break2_g2259.x + break2_g2259.y + break2_g2259.z ) / 3.0 ) , 0.0001 );
				float2 appendResult2_g2263 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2262 = 0;
				if( (int)_BurnSpace > 1.0 )
				ifLocalVar2_g2262 = (ase_worldPos).xy;
				else if( (int)_BurnSpace == 1.0 )
				ifLocalVar2_g2262 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_BurnSpace < 1.0 )
				ifLocalVar2_g2262 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2263 ) );
				float2 temp_output_3_0_g2258 = ifLocalVar2_g2262;
				float clampResult68_g2258 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2258 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_3_0_g2258 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g2258 = ( ( ( _BurnRadius - distance( temp_output_3_0_g2258 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2258 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g2258 = clamp( temp_output_15_0_g2258 , 0.0 , 1.0 );
				float3 lerpResult29_g2258 = lerp( temp_output_28_0_g2258 , ( pow( saferPower21_g2258 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g2258 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g2258);
				float3 lerpResult40_g2258 = lerp( temp_output_28_0_g2258 , ( lerpResult29_g2258 + ( ( step( temp_output_15_0_g2258 , 1.0 ) * step( 0.0 , temp_output_15_0_g2258 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g2258 = (float4(lerpResult40_g2258 , temp_output_1_0_g2258.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g2245 = appendResult43_g2258;
				#else
				float4 staticSwitch32_g2245 = staticSwitch29_g2245;
				#endif
				float2 appendResult2_g2257 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2256 = 0;
				if( (int)_RainbowSpace > 1.0 )
				ifLocalVar2_g2256 = (ase_worldPos).xy;
				else if( (int)_RainbowSpace == 1.0 )
				ifLocalVar2_g2256 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_RainbowSpace < 1.0 )
				ifLocalVar2_g2256 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2257 ) );
				float2 temp_output_3_0_g2251 = ifLocalVar2_g2256;
				float mulTime14_g2251 = _TimeParameters.x * _RainbowSpeed;
				float3 hsvTorgb3_g2254 = HSVToRGB( float3(( ( ( distance( temp_output_3_0_g2251 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_3_0_g2251 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + mulTime14_g2251 ),1.0,1.0) );
				float3 hsvTorgb36_g2251 = RGBToHSV( hsvTorgb3_g2254 );
				float3 hsvTorgb37_g2251 = HSVToRGB( float3(hsvTorgb36_g2251.x,_RainbowSaturation,( hsvTorgb36_g2251.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g2251 = staticSwitch32_g2245;
				float4 break2_g2253 = temp_output_1_0_g2251;
				float saferPower24_g2251 = max( ( ( break2_g2253.x + break2_g2253.y + break2_g2253.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.texCoord0.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g2252 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g2251 = (float4(( ( hsvTorgb37_g2251 * pow( saferPower24_g2251 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g2252.r * tex2DNode3_g2252.a ) ) ) + (temp_output_1_0_g2251).rgb ) , temp_output_1_0_g2251.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g2245 = appendResult29_g2251;
				#else
				float4 staticSwitch34_g2245 = staticSwitch32_g2245;
				#endif
				float4 temp_output_1_0_g2246 = staticSwitch34_g2245;
				float4 break2_g2247 = temp_output_1_0_g2246;
				float saferPower83_g2246 = max( ( ( break2_g2247.x + break2_g2247.y + break2_g2247.z ) / 3.0 ) , 0.0001 );
				float mulTime86_g2246 = _TimeParameters.x * _ShineSpeed;
				float2 appendResult2_g2249 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2248 = 0;
				if( _ShineSpace > 1.0 )
				ifLocalVar2_g2248 = (ase_worldPos).xy;
				else if( _ShineSpace == 1.0 )
				ifLocalVar2_g2248 = (IN.ase_texcoord3.xyz).xy;
				else if( _ShineSpace < 1.0 )
				ifLocalVar2_g2248 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2249 ) );
				float3 rotatedValue69_g2246 = RotateAroundAxis( float3( 0,0,0 ), float3( ( mulTime86_g2246 + ( _ShineScale * ifLocalVar2_g2248 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g2246 = rotatedValue69_g2246;
				float clampResult80_g2246 = clamp( ( ( ( sin( ( ( break67_g2246.x + break67_g2246.y ) * 10.0 ) ) + _ShineDensity ) * ( 2.0 - _ShineDensity ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.texCoord0.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g2250 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g2246 = (float4(( (temp_output_1_0_g2246).rgb + ( ( pow( saferPower83_g2246 , max( _ShineContrast , 0.001 ) ) * (_ShineColor).rgb ) * clampResult80_g2246 * ( _ShineFade * ( tex2DNode3_g2250.r * tex2DNode3_g2250.a ) ) ) ) , (temp_output_1_0_g2246).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g2245 = appendResult8_g2246;
				#else
				float4 staticSwitch36_g2245 = staticSwitch34_g2245;
				#endif
				float2 appendResult2_g2293 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2292 = 0;
				if( (int)_PoisonSpace > 1.0 )
				ifLocalVar2_g2292 = (ase_worldPos).xy;
				else if( (int)_PoisonSpace == 1.0 )
				ifLocalVar2_g2292 = (IN.ase_texcoord3.xyz).xy;
				else if( (int)_PoisonSpace < 1.0 )
				ifLocalVar2_g2292 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2293 ) );
				float mulTime15_g2290 = _TimeParameters.x * _PoisonShiftSpeed;
				float saferPower19_g2290 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( _TimeParameters.x * _PoisonNoiseSpeed ) + ifLocalVar2_g2292 ) * _PoisonNoiseScale ) ).r + mulTime15_g2290 ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g2290 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g2290 = staticSwitch36_g2245;
				float3 temp_output_28_0_g2290 = (temp_output_1_0_g2290).rgb;
				float4 break2_g2294 = float4( temp_output_28_0_g2290 , 0.0 );
				float3 lerpResult32_g2290 = lerp( temp_output_28_0_g2290 , ( temp_output_24_0_g2290 * ( ( break2_g2294.x + break2_g2294.y + break2_g2294.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g2290 = (float4(( ( max( pow( saferPower19_g2290 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g2290 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g2290 ) , temp_output_1_0_g2290.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g2245 = appendResult27_g2290;
				#else
				float4 staticSwitch39_g2245 = staticSwitch36_g2245;
				#endif
				float4 temp_output_109_0 = staticSwitch39_g2245;
				float4 break4_g2295 = temp_output_109_0;
				float4 appendResult5_g2295 = (float4(break4_g2295.r , break4_g2295.g , break4_g2295.b , ( break4_g2295.a * _FullDistortionFade )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g2295;
				#else
				float4 staticSwitch77 = temp_output_109_0;
				#endif
				float4 break4_g2296 = staticSwitch77;
				float4 appendResult5_g2296 = (float4(break4_g2296.r , break4_g2296.g , break4_g2296.b , ( break4_g2296.a * (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g1199 ) ):( clampResult154_g1199 )) )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g2296;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g2327 = staticSwitch75;
				float4 temp_output_1_0_g2328 = temp_output_1_0_g2327;
				float temp_output_53_0_g2328 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 appendResult2_g2331 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2330 = 0;
				if( _FullAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2330 = (ase_worldPos).xy;
				else if( _FullAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2330 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2330 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2331 ) );
				float clampResult17_g2328 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g2328 ) ) - tex2D( _UberNoiseTexture, ( ifLocalVar2_g2330 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g2328 ) , 0.0 , 1.0 );
				float4 appendResult3_g2328 = (float4((temp_output_1_0_g2328).rgb , ( temp_output_1_0_g2328.a * clampResult17_g2328 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g2327 = appendResult3_g2328;
				#else
				float4 staticSwitch3_g2327 = temp_output_1_0_g2327;
				#endif
				float2 appendResult2_g2342 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2341 = 0;
				if( _FullGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2341 = (ase_worldPos).xy;
				else if( _FullGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2341 = (IN.ase_texcoord3.xyz).xy;
				else if( _FullGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2341 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2342 ) );
				float temp_output_5_0_g2340 = tex2D( _UberNoiseTexture, ( ifLocalVar2_g2341 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g2340 = step( temp_output_5_0_g2340 , _FullGlowDissolveFade );
				float temp_output_53_0_g2340 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g2340 = staticSwitch3_g2327;
				float4 appendResult3_g2340 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g2340 - step( temp_output_5_0_g2340 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g2340 ) ) - temp_output_53_0_g2340 ) ) ) ) + (temp_output_1_0_g2340).rgb ) , ( temp_output_1_0_g2340.a * temp_output_61_0_g2340 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g2327 = appendResult3_g2340;
				#else
				float4 staticSwitch5_g2327 = staticSwitch3_g2327;
				#endif
				float4 temp_output_1_0_g2336 = staticSwitch5_g2327;
				float2 appendResult2_g2339 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2338 = 0;
				if( _SourceAlphaDissolveSpace > 1.0 )
				ifLocalVar2_g2338 = (ase_worldPos).xy;
				else if( _SourceAlphaDissolveSpace == 1.0 )
				ifLocalVar2_g2338 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceAlphaDissolveSpace < 1.0 )
				ifLocalVar2_g2338 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2339 ) );
				float2 temp_output_7_0_g2336 = ifLocalVar2_g2338;
				float clampResult17_g2336 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_7_0_g2336 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2336 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2336 = (float4((temp_output_1_0_g2336).rgb , ( temp_output_1_0_g2336.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g2336 ) ):( clampResult17_g2336 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g2327 = appendResult3_g2336;
				#else
				float4 staticSwitch8_g2327 = staticSwitch5_g2327;
				#endif
				float2 appendResult2_g2346 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2345 = 0;
				if( _SourceGlowDissolveSpace > 1.0 )
				ifLocalVar2_g2345 = (ase_worldPos).xy;
				else if( _SourceGlowDissolveSpace == 1.0 )
				ifLocalVar2_g2345 = (IN.ase_texcoord3.xyz).xy;
				else if( _SourceGlowDissolveSpace < 1.0 )
				ifLocalVar2_g2345 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2346 ) );
				float2 temp_output_7_0_g2344 = ifLocalVar2_g2345;
				float temp_output_65_0_g2344 = ( distance( _SourceGlowDissolvePosition , temp_output_7_0_g2344 ) + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2344 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g2344 = step( temp_output_65_0_g2344 , _SourceGlowDissolveFade );
				float temp_output_76_0_g2344 = step( temp_output_65_0_g2344 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g2344 = staticSwitch8_g2327;
				float4 appendResult3_g2344 = (float4(( ( max( ( temp_output_75_0_g2344 - temp_output_76_0_g2344 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g2344).rgb ) , ( temp_output_1_0_g2344.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g2344 ) ):( temp_output_75_0_g2344 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g2327 = appendResult3_g2344;
				#else
				float4 staticSwitch9_g2327 = staticSwitch8_g2327;
				#endif
				float4 temp_output_1_0_g2352 = staticSwitch9_g2327;
				float2 appendResult2_g2355 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2354 = 0;
				if( _DirectionalAlphaFadeSpace > 1.0 )
				ifLocalVar2_g2354 = (ase_worldPos).xy;
				else if( _DirectionalAlphaFadeSpace == 1.0 )
				ifLocalVar2_g2354 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalAlphaFadeSpace < 1.0 )
				ifLocalVar2_g2354 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2355 ) );
				float2 temp_output_7_0_g2352 = ifLocalVar2_g2354;
				float3 rotatedValue136_g2352 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2352 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2352 = rotatedValue136_g2352;
				float clampResult154_g2352 = clamp( ( ( break130_g2352.x + break130_g2352.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2352 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2352 = (float4((temp_output_1_0_g2352).rgb , ( temp_output_1_0_g2352.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g2352 ) ):( clampResult154_g2352 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g2327 = appendResult3_g2352;
				#else
				float4 staticSwitch11_g2327 = staticSwitch9_g2327;
				#endif
				float2 appendResult2_g2351 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2350 = 0;
				if( _DirectionalGlowFadeSpace > 1.0 )
				ifLocalVar2_g2350 = (ase_worldPos).xy;
				else if( _DirectionalGlowFadeSpace == 1.0 )
				ifLocalVar2_g2350 = (IN.ase_texcoord3.xyz).xy;
				else if( _DirectionalGlowFadeSpace < 1.0 )
				ifLocalVar2_g2350 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2351 ) );
				float2 temp_output_7_0_g2348 = ifLocalVar2_g2350;
				float3 rotatedValue136_g2348 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_7_0_g2348 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g2348 = rotatedValue136_g2348;
				float temp_output_168_0_g2348 = max( ( ( break130_g2348.x + break130_g2348.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_7_0_g2348 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g2348 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2348 ) ):( temp_output_168_0_g2348 )) );
				float4 temp_output_1_0_g2348 = staticSwitch11_g2327;
				float clampResult154_g2348 = clamp( temp_output_161_0_g2348 , 0.0 , 1.0 );
				float4 appendResult3_g2348 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g2348 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g2348 ) ):( temp_output_168_0_g2348 )) ) ) ) + (temp_output_1_0_g2348).rgb ) , ( temp_output_1_0_g2348.a * clampResult154_g2348 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g2327 = appendResult3_g2348;
				#else
				float4 staticSwitch15_g2327 = staticSwitch11_g2327;
				#endif
				float4 temp_output_1_0_g2332 = staticSwitch15_g2327;
				float2 appendResult2_g2335 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g2334 = 0;
				if( _HalftoneSpace > 1.0 )
				ifLocalVar2_g2334 = (ase_worldPos).xy;
				else if( _HalftoneSpace == 1.0 )
				ifLocalVar2_g2334 = (IN.ase_texcoord3.xyz).xy;
				else if( _HalftoneSpace < 1.0 )
				ifLocalVar2_g2334 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g2335 ) );
				float2 temp_output_7_0_g2332 = ifLocalVar2_g2334;
				float temp_output_121_0_g2332 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_7_0_g2332 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g2333 = (float2(temp_output_121_0_g2332 , temp_output_121_0_g2332));
				float temp_output_17_0_g2333 = length( ( (( ( abs( temp_output_7_0_g2332 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g2333 ) );
				float clampResult17_g2332 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g2333 ) / fwidth( temp_output_17_0_g2333 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g2332 = (float4((temp_output_1_0_g2332).rgb , ( temp_output_1_0_g2332.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g2332 ) ):( clampResult17_g2332 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g2327 = appendResult3_g2332;
				#else
				float4 staticSwitch13_g2327 = staticSwitch15_g2327;
				#endif
				float4 temp_output_1_0_g2358 = staticSwitch13_g2327;
				float4 break2_g2360 = temp_output_1_0_g2358;
				float temp_output_9_0_g2359 = max( _AddColorContrast , 0.0 );
				float saferPower7_g2359 = max( ( ( ( break2_g2360.x + break2_g2360.y + break2_g2360.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2359 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g2358 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g2359 , temp_output_9_0_g2359 ) * _AddColorFade ) + (temp_output_1_0_g2358).rgb ) , temp_output_1_0_g2358.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g2357 = appendResult6_g2358;
				#else
				float4 staticSwitch5_g2357 = staticSwitch13_g2327;
				#endif
				float4 temp_output_1_0_g2361 = staticSwitch5_g2357;
				float saferPower11_g2361 = max( ( 1.0 - temp_output_1_0_g2361.a ) , 0.0001 );
				float3 lerpResult4_g2361 = lerp( (temp_output_1_0_g2361).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g2361 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g2361.a ) ));
				float4 appendResult13_g2361 = (float4(lerpResult4_g2361 , temp_output_1_0_g2361.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g2357 = appendResult13_g2361;
				#else
				float4 staticSwitch11_g2357 = staticSwitch5_g2357;
				#endif
				float4 temp_output_1_0_g2362 = staticSwitch11_g2357;
				float4 break2_g2363 = temp_output_1_0_g2362;
				float temp_output_9_0_g2364 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g2364 = max( ( ( ( break2_g2363.x + break2_g2363.y + break2_g2363.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g2364 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g2362 = lerp( (temp_output_1_0_g2362).rgb , ( pow( saferPower7_g2364 , temp_output_9_0_g2364 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g2362 = (float4(lerpResult7_g2362 , (temp_output_1_0_g2362).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g2357 = appendResult9_g2362;
				#else
				float4 staticSwitch7_g2357 = staticSwitch11_g2357;
				#endif
				float4 lerpResult125 = lerp( tex2DNode31 , staticSwitch7_g2357 , fullFade123);
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g2195 = _White;
				#else
				float4 staticSwitch8_g2195 = IN.color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g2195 = _White;
				#else
				float4 staticSwitch9_g2195 = staticSwitch8_g2195;
				#endif
				float4 lerpResult126 = lerp( IN.color , staticSwitch9_g2195 , fullFade123);
				
				float4 Color = ( lerpResult125 * lerpResult126 );

				#if ETC1_EXTERNAL_ALPHA
					float4 alpha = SAMPLE_TEXTURE2D( _AlphaTex, sampler_AlphaTex, IN.texCoord0.xy );
					Color.a = lerp( Color.a, alpha.r, _EnableAlphaTexture );
				#endif

				Color *= IN.color;

				return Color;
			}

			ENDHLSL
		}
		
	}
	CustomEditor "SpriteShadersUltimate.UberShaderGUI"
	
	
}
/*ASEBEGIN
Version=18800
15;198;1374;821;7531.546;482.49;1;True;True
Node;AmplifyShaderEditor.TexturePropertyNode;101;-7164.425,-997.4631;Inherit;True;Property;_UberNoiseTexture;Uber Noise Texture;6;0;Create;True;0;0;0;False;0;False;6b7b4a61603088549ac748de5e4e6d8c;6b7b4a61603088549ac748de5e4e6d8c;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;135;-7225.999,-184.7587;Inherit;True;Property;_MainTex;MainTex;0;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RelayNode;99;-6841.94,-898.0886;Inherit;False;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RelayNode;105;-6931.1,-28.98383;Inherit;False;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;39;-6503.466,-2014.261;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;95;-6086.266,-1877.294;Inherit;False;_UberInteractive;399;;1175;f8a4d7008519ad249b29e4a9381f963f;0;3;9;SAMPLER2D;0,0;False;2;SAMPLER2D;0;False;3;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;93;-5726.133,-1869.814;Inherit;False;_UberTransformUV;351;;1181;894b1de51a5f4c74cbe7828262f1344b;0;3;1;FLOAT2;0,0;False;18;SAMPLER2D;0;False;3;SAMPLER2D;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RelayNode;84;-5455.61,-1860.612;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;79;-4821.681,-1346.285;Inherit;False;_FullDistortion;345;;1194;62960fe27c1c398408207bb462ffd10e;0;3;160;FLOAT2;0,0;False;194;SAMPLER2D;;False;6;SAMPLER2D;0;False;2;FLOAT2;174;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;83;-4439.266,-1465.582;Inherit;False;Property;_EnableShine;Enable Shine;344;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;77;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;81;-4047.438,-1306.412;Inherit;False;_DirectionalDistortion;332;;1199;30e6ac39427ee11419083602d572972f;0;3;160;FLOAT2;0,0;False;181;SAMPLER2D;;False;6;SAMPLER2D;0;False;2;FLOAT2;174;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;82;-3730.236,-1441.193;Inherit;False;Property;_EnableShine;Enable Shine;331;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;75;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;53;-3011.915,-1200.063;Inherit;False;Property;_HologramFade;Hologram: Fade;120;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;38;-3256.692,-1121.087;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;52;-2856.382,-933.5969;Inherit;False;_HologramUV;128;;1205;7c71b1b031ffcbe48805e17b94671163;0;4;55;FLOAT;0;False;76;SAMPLER2D;;False;37;FLOAT2;0,0;False;39;SAMPLER2D;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;102;-2340.493,-1142.616;Inherit;False;_GlitchPre;135;;1334;b8ad29d751d87bd4d9cbf14898be6163;0;2;1;SAMPLER2D;0,0;False;16;SAMPLER2D;;False;2;FLOAT;15;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;59;-2453.853,-1017.059;Inherit;False;Property;_EnableShine;Enable Shine;119;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;56;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;122;4180.248,1061.212;Inherit;False;Property;_FullFade;Full Fade;5;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;103;-2101.074,-915.8625;Inherit;False;_GlitchUV;148;;1338;2addb21417fb5d745a5abfe02cbcd453;0;4;13;FLOAT2;0,0;False;22;SAMPLER2D;;False;3;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;123;4563.568,1088.314;Inherit;False;fullFade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;62;-1753.86,-988.5486;Inherit;False;Property;_EnableShine;Enable Shine;134;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;57;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;131;-1731.761,-754.4016;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;129;-1730.062,-578.5414;Inherit;False;123;fullFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;130;-1431.125,-649.6713;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RelayNode;54;-1264.974,-426.9949;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;31;-1112.336,-203.742;Inherit;True;Property;_TextureSample1;Texture Sample 1;0;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;120;-737.796,35.8288;Inherit;False;_UberCustomAlpha;436;;2195;d68af6e3188f53845b23cf6e39df15fe;0;3;1;COLOR;0,0,0,0;False;6;SAMPLER2D;0;False;7;FLOAT2;0,0;False;2;COLOR;12;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;115;-404.7228,-125.1053;Inherit;False;_UberGenerated;421;;2200;52defa3f7cca25740a6a77f065edb382;0;3;8;SAMPLER2D;0;False;7;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;108;-136.8644,-329.1863;Inherit;False;_UberColor;24;;2204;db48f560e502b78409f7fbe481a93597;0;4;1;FLOAT2;0,0;False;24;SAMPLER2D;0;False;3;COLOR;0,0,0,0;False;5;SAMPLER2D;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;51;183.7499,-168.0946;Inherit;False;_Hologram;121;;2238;76082a965d84d0e4da33b2cff51b3691;0;2;40;FLOAT;0;False;1;COLOR;1,1,1,1;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;56;488.4655,-401.1591;Inherit;False;Property;_EnableHologram;Enable Hologram;119;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;104;891.7633,-197.4055;Inherit;False;_Glitch;142;;2241;97a01281f94bcc04fbb9a7c1cd328f08;0;4;31;FLOAT2;0,0;False;33;SAMPLER2D;;False;29;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;57;1278.486,-397.6114;Inherit;False;Property;_EnableGlitch;Enable Glitch;134;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;109;1656.25,-345.9998;Inherit;False;_UberEffect;153;;2245;93c7a07f758a0814998210619e8ad1cb;0;3;3;COLOR;0,0,0,0;False;37;SAMPLER2D;0;False;5;SAMPLER2D;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;78;2112.179,-244.1776;Inherit;False;AlphaMult;-1;;2295;d24974f7959982d48aab81e9e7692f35;0;2;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;77;2492.977,-348.4961;Inherit;False;Property;_EnableFullDistortion;Enable Full Distortion;344;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;76;3014.405,-219.2272;Inherit;False;AlphaMult;-1;;2296;d24974f7959982d48aab81e9e7692f35;0;2;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;75;3434.708,-336.5002;Inherit;False;Property;_EnableDirectionalDistortion;Enable Directional Distortion;331;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;97;4200.187,769.8402;Inherit;False;_Squish;416;;2356;6d6a73cc3433bad4186f7028cad3d98c;0;2;82;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;98;4287.869,614.1028;Inherit;False;Constant;_ZeroOffset;Zero Offset;53;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.FunctionNode;87;3929.017,-74.64402;Inherit;False;_UberFading;265;;2327;f8f5d1f402d6b694f9c47ef65b4ae91d;0;3;1;COLOR;0,0,0,0;False;17;SAMPLER2D;0;False;2;SAMPLER2D;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;128;4529.681,280.2438;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;124;4546.206,-102.1136;Inherit;False;123;fullFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;117;4244.284,-85.79267;Inherit;False;_UberColorFinal;7;;2357;6ac57aba23ea6404ba71b6806ea93971;0;1;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;96;4490.183,668.8401;Inherit;False;Property;_EnableSquish;Enable Squish;415;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;92;4760.852,615.6682;Inherit;False;_UberTransformOffset;387;;2365;ee5e9e731457b2342bdb306bdb8d2401;0;1;2;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;126;4804.681,181.2438;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;125;4812.62,45.53989;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;136;5086.669,305.9875;Inherit;False;LitHandler;1;;2368;851662d67a92ce04d84817ff63c501f2;0;1;8;FLOAT2;0,0;False;2;COLOR;0;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;121;5056.864,629.9413;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;119;5045.964,132.1348;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;133;5405.575,239.1301;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Normal;0;1;Sprite Normal;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=NormalsRendering;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;132;5405.575,239.1301;Float;False;True;-1;2;SpriteShadersUltimate.UberShaderGUI;0;12;Sprite Shaders Ultimate/Uber/URP Lit Uber;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Lit;0;0;Sprite Lit;6;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Universal2D;False;0;;0;0;Standard;1;Vertex Position;1;0;3;True;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;134;5405.575,239.1301;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Forward;0;2;Sprite Forward;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=UniversalForward;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
WireConnection;99;0;101;0
WireConnection;105;0;135;0
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
WireConnection;102;1;105;0
WireConnection;102;16;99;0
WireConnection;59;1;38;0
WireConnection;59;0;52;0
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
WireConnection;97;1;39;0
WireConnection;87;1;75;0
WireConnection;87;17;99;0
WireConnection;87;2;105;0
WireConnection;117;3;87;0
WireConnection;96;1;98;0
WireConnection;96;0;97;0
WireConnection;92;2;96;0
WireConnection;126;0;128;0
WireConnection;126;1;120;12
WireConnection;126;2;124;0
WireConnection;125;0;31;0
WireConnection;125;1;117;0
WireConnection;125;2;124;0
WireConnection;136;8;54;0
WireConnection;121;1;92;0
WireConnection;121;2;123;0
WireConnection;119;0;125;0
WireConnection;119;1;126;0
WireConnection;132;1;119;0
WireConnection;132;2;136;0
WireConnection;132;3;136;5
WireConnection;132;4;121;0
ASEEND*/
//CHKSM=E7E6E00D52945B5B32232E79A8DEB21B2E91B859