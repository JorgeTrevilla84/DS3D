// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/URP Lit/Effect/Glitch Lit"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin]_MainTex("MainTex", 2D) = "white" {}
		_MaskMap("Mask Map", 2D) = "white" {}
		_NormalMap("Normal Map", 2D) = "bump" {}
		_NormalIntensity("Normal Intensity", Range( 0 , 3)) = 1
		_GlitchFade("Glitch: Fade", Range( 0 , 1)) = 1
		_GlitchSpace("Glitch: Space", Int) = 0
		_GlitchMaskMin("Glitch: Mask Min", Range( 0 , 1)) = 0.4
		_GlitchMaskScale("Glitch: Mask Scale", Vector) = (0,0.2,0,0)
		_GlitchMaskSpeed("Glitch: Mask Speed", Vector) = (0,4,0,0)
		_GlitchMaskNoise("Glitch: Mask Noise", 2D) = "white" {}
		_GlitchHueSpeed("Glitch: Hue Speed", Float) = 1
		_GlitchBrightness("Glitch: Brightness", Float) = 4
		_GlitchNoiseScale("Glitch: Noise Scale", Vector) = (0,3,0,0)
		_GlitchNoiseSpeed("Glitch: Noise Speed", Vector) = (0,1,0,0)
		_GlitchNoiseTexture("Glitch: Noise Texture", 2D) = "white" {}
		_GlitchDistortion("Glitch: Distortion", Vector) = (0.1,0,0,0)
		_GlitchDistortionScale("Glitch: Distortion Scale", Vector) = (0,3,0,0)
		_GlitchDistortionTexture("Glitch: Distortion Texture", 2D) = "white" {}
		[ASEEnd]_GlitchDistortionSpeed("Glitch: Distortion Speed", Vector) = (0,1,0,0)

	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Transparent" "Queue"="Transparent" "PreviewType"="Plane" }

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

			

			sampler2D _MainTex;
			sampler2D _GlitchDistortionTexture;
			sampler2D _GlitchMaskNoise;
			sampler2D _GlitchNoiseTexture;
			sampler2D _MaskMap;
			sampler2D _NormalMap;
			CBUFFER_START( UnityPerMaterial )
			float4 _MainTex_TexelSize;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortion;
			float2 _GlitchMaskSpeed;
			float2 _GlitchMaskScale;
			float2 _GlitchNoiseSpeed;
			float2 _GlitchNoiseScale;
			int _GlitchSpace;
			float _GlitchMaskMin;
			float _GlitchFade;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
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
				float3 vertexValue = defaultVertexValue;
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

				float2 texCoord95 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_worldPos = IN.ase_texcoord3.xyz;
				float2 appendResult2_g412 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g411 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g411 = (ase_worldPos).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g411 = (IN.ase_texcoord4.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g411 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g412 ) );
				float2 temp_output_3_0_g235 = ifLocalVar2_g411;
				float2 temp_output_93_0 = temp_output_3_0_g235;
				float temp_output_93_15 = ( max( tex2D( _GlitchMaskNoise, ( ( temp_output_3_0_g235 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				float2 temp_output_94_0 = ( texCoord95 + ( ( tex2D( _GlitchDistortionTexture, ( ( temp_output_93_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_93_15 ) );
				float4 temp_output_1_0_g416 = tex2D( _MainTex, temp_output_94_0 );
				float4 break2_g418 = temp_output_1_0_g416;
				float mulTime14_g416 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g417 = HSVToRGB( float3(( tex2D( _GlitchNoiseTexture, ( ( temp_output_93_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g416 ),1.0,1.0) );
				float3 lerpResult23_g416 = lerp( (temp_output_1_0_g416).rgb , ( ( ( break2_g418.x + break2_g418.y + break2_g418.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g417 ) , temp_output_93_15);
				float4 appendResult27_g416 = (float4(lerpResult23_g416 , temp_output_1_0_g416.a));
				
				float2 temp_output_8_0_g421 = temp_output_94_0;
				
				float3 unpack14_g421 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g421 ), _NormalIntensity );
				unpack14_g421.z = lerp( 1, unpack14_g421.z, saturate(_NormalIntensity) );
				
				float4 Color = ( appendResult27_g416 * IN.ase_color );
				float Mask = tex2D( _MaskMap, temp_output_8_0_g421 ).r;
				float3 Normal = unpack14_g421;

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
			
			#define ASE_NEEDS_FRAG_COLOR


			sampler2D _MainTex;
			sampler2D _GlitchDistortionTexture;
			sampler2D _GlitchMaskNoise;
			sampler2D _GlitchNoiseTexture;
			sampler2D _NormalMap;
			CBUFFER_START( UnityPerMaterial )
			float4 _MainTex_TexelSize;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortion;
			float2 _GlitchMaskSpeed;
			float2 _GlitchMaskScale;
			float2 _GlitchNoiseSpeed;
			float2 _GlitchNoiseScale;
			int _GlitchSpace;
			float _GlitchMaskMin;
			float _GlitchFade;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
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
				float3 vertexValue = defaultVertexValue;
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

				float2 texCoord95 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_worldPos = IN.ase_texcoord5.xyz;
				float2 appendResult2_g412 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g411 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g411 = (ase_worldPos).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g411 = (IN.ase_texcoord6.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g411 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g412 ) );
				float2 temp_output_3_0_g235 = ifLocalVar2_g411;
				float2 temp_output_93_0 = temp_output_3_0_g235;
				float temp_output_93_15 = ( max( tex2D( _GlitchMaskNoise, ( ( temp_output_3_0_g235 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				float2 temp_output_94_0 = ( texCoord95 + ( ( tex2D( _GlitchDistortionTexture, ( ( temp_output_93_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_93_15 ) );
				float4 temp_output_1_0_g416 = tex2D( _MainTex, temp_output_94_0 );
				float4 break2_g418 = temp_output_1_0_g416;
				float mulTime14_g416 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g417 = HSVToRGB( float3(( tex2D( _GlitchNoiseTexture, ( ( temp_output_93_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g416 ),1.0,1.0) );
				float3 lerpResult23_g416 = lerp( (temp_output_1_0_g416).rgb , ( ( ( break2_g418.x + break2_g418.y + break2_g418.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g417 ) , temp_output_93_15);
				float4 appendResult27_g416 = (float4(lerpResult23_g416 , temp_output_1_0_g416.a));
				
				float2 temp_output_8_0_g421 = temp_output_94_0;
				float3 unpack14_g421 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g421 ), _NormalIntensity );
				unpack14_g421.z = lerp( 1, unpack14_g421.z, saturate(_NormalIntensity) );
				
				float4 Color = ( appendResult27_g416 * IN.color );
				float3 Normal = unpack14_g421;
				
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

			#define ASE_NEEDS_FRAG_COLOR


			sampler2D _MainTex;
			sampler2D _GlitchDistortionTexture;
			sampler2D _GlitchMaskNoise;
			sampler2D _GlitchNoiseTexture;
			CBUFFER_START( UnityPerMaterial )
			float4 _MainTex_TexelSize;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortionScale;
			float2 _GlitchDistortion;
			float2 _GlitchMaskSpeed;
			float2 _GlitchMaskScale;
			float2 _GlitchNoiseSpeed;
			float2 _GlitchNoiseScale;
			int _GlitchSpace;
			float _GlitchMaskMin;
			float _GlitchFade;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
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
				float3 vertexValue = defaultVertexValue;
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

				float2 texCoord95 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_worldPos = IN.ase_texcoord2.xyz;
				float2 appendResult2_g412 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g411 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g411 = (ase_worldPos).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g411 = (IN.ase_texcoord3.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g411 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g412 ) );
				float2 temp_output_3_0_g235 = ifLocalVar2_g411;
				float2 temp_output_93_0 = temp_output_3_0_g235;
				float temp_output_93_15 = ( max( tex2D( _GlitchMaskNoise, ( ( temp_output_3_0_g235 + ( _GlitchMaskSpeed * _TimeParameters.x ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				float2 temp_output_94_0 = ( texCoord95 + ( ( tex2D( _GlitchDistortionTexture, ( ( temp_output_93_0 + ( _GlitchDistortionSpeed * _TimeParameters.x ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_93_15 ) );
				float4 temp_output_1_0_g416 = tex2D( _MainTex, temp_output_94_0 );
				float4 break2_g418 = temp_output_1_0_g416;
				float mulTime14_g416 = _TimeParameters.x * _GlitchHueSpeed;
				float3 hsvTorgb3_g417 = HSVToRGB( float3(( tex2D( _GlitchNoiseTexture, ( ( temp_output_93_0 + ( _GlitchNoiseSpeed * _TimeParameters.x ) ) * _GlitchNoiseScale ) ).r + mulTime14_g416 ),1.0,1.0) );
				float3 lerpResult23_g416 = lerp( (temp_output_1_0_g416).rgb , ( ( ( break2_g418.x + break2_g418.y + break2_g418.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g417 ) , temp_output_93_15);
				float4 appendResult27_g416 = (float4(lerpResult23_g416 , temp_output_1_0_g416.a));
				
				float4 Color = ( appendResult27_g416 * IN.color );

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
	CustomEditor "SpriteShadersUltimate.SingleShaderGUI"
	Fallback "Hidden/InternalErrorShader"
	
}
/*ASEBEGIN
Version=18800
116;387;1338;620;1635.239;503.5372;2.063865;True;True
Node;AmplifyShaderEditor.TexturePropertyNode;25;-1274.353,-316.1203;Inherit;True;Property;_MainTex;MainTex;0;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;93;-849.3685,-422.1233;Inherit;False;_GlitchPre;5;;235;b8ad29d751d87bd4d9cbf14898be6163;0;1;1;SAMPLER2D;0,0;False;2;FLOAT;15;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;95;-1349.166,84.85608;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;94;-1072.43,51.16046;Inherit;False;_GlitchUV;18;;414;2addb21417fb5d745a5abfe02cbcd453;0;3;13;FLOAT2;0,0;False;3;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;24;-664.5396,-113.2755;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;92;-303.8376,-264.0698;Inherit;False;_Glitch;12;;416;97a01281f94bcc04fbb9a7c1cd328f08;0;3;31;FLOAT2;0,0;False;29;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;22;-63.6362,70.99575;Inherit;False;TintVertex;-1;;420;b0b94dd27c0f3da49a89feecae766dcc;0;1;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;86;-68.50143,156.8532;Inherit;False;LitHandler;1;;421;851662d67a92ce04d84817ff63c501f2;0;1;8;FLOAT2;0,0;False;2;COLOR;0;FLOAT3;5
Node;AmplifyShaderEditor.SimpleSubtractOpNode;96;-439.239,-196.0212;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;83;211.4418,70.685;Float;False;True;-1;2;SpriteShadersUltimate.SingleShaderGUI;0;12;Sprite Shaders Ultimate/URP Lit/Effect/Glitch Lit;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Lit;0;0;Sprite Lit;6;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;PreviewType=Plane;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Universal2D;False;0;Hidden/InternalErrorShader;0;0;Standard;1;Vertex Position;1;0;3;True;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;84;211.4418,70.685;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;12;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Normal;0;1;Sprite Normal;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=NormalsRendering;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;85;211.4418,70.685;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;12;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Forward;0;2;Sprite Forward;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=UniversalForward;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
WireConnection;93;1;25;0
WireConnection;94;13;93;0
WireConnection;94;3;93;15
WireConnection;94;1;95;0
WireConnection;24;0;25;0
WireConnection;24;1;94;0
WireConnection;92;31;93;0
WireConnection;92;29;93;15
WireConnection;92;1;24;0
WireConnection;22;1;92;0
WireConnection;86;8;94;0
WireConnection;83;1;22;0
WireConnection;83;2;86;0
WireConnection;83;3;86;5
ASEEND*/
//CHKSM=8905DB3C035ABAB0B87D3174B4F598DD2F16D971