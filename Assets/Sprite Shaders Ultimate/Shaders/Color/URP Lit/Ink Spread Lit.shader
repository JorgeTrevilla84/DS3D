// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/URP Lit/Color/Ink Spread Lit"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin]_MainTex("MainTex", 2D) = "white" {}
		_MaskMap("Mask Map", 2D) = "white" {}
		_NormalMap("Normal Map", 2D) = "bump" {}
		_NormalIntensity("Normal Intensity", Range( 0 , 3)) = 1
		_InkSpreadFade("Ink Spread: Fade", Range( 0 , 1)) = 1
		_InkSpreadSpace("Ink Spread: Space", Int) = 0
		[HDR]_InkSpreadColor("Ink Spread: Color", Color) = (8.47419,5.013525,0.08873497,0)
		_InkSpreadContrast("Ink Spread: Contrast", Float) = 2
		_InkSpreadPosition("Ink Spread: Position", Vector) = (0.5,-1,0,0)
		_InkSpreadDistance("Ink Spread: Distance", Float) = 3
		_InkSpreadWidth("Ink Spread: Width", Float) = 0.2
		_InkSpreadNoiseScale("Ink Spread: Noise Scale", Vector) = (0.4,0.4,0,0)
		_InkSpreadNoiseFactor("Ink Spread: Noise Factor", Float) = 0.5
		[ASEEnd]_InkSpreadNoiseTexture("Ink Spread: Noise Texture", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

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
			sampler2D _InkSpreadNoiseTexture;
			sampler2D _MaskMap;
			sampler2D _NormalMap;
			CBUFFER_START( UnityPerMaterial )
			float4 _MainTex_ST;
			float4 _InkSpreadColor;
			float4 _MainTex_TexelSize;
			float2 _InkSpreadPosition;
			float2 _InkSpreadNoiseScale;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			int _InkSpreadSpace;
			float _InkSpreadNoiseFactor;
			float _InkSpreadWidth;
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

				float2 uv_MainTex = IN.texCoord0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 temp_output_1_0_g45 = tex2D( _MainTex, uv_MainTex );
				float4 break2_g47 = temp_output_1_0_g45;
				float temp_output_9_0_g46 = max( _InkSpreadContrast , 0.0 );
				float3 ase_worldPos = IN.ase_texcoord3.xyz;
				float2 appendResult2_g49 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g48 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g48 = (ase_worldPos).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g48 = (IN.ase_texcoord4.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g48 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g49 ) );
				float2 temp_output_19_0_g45 = ifLocalVar2_g48;
				float clampResult53_g45 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g45 ) ) + ( tex2D( _InkSpreadNoiseTexture, ( temp_output_19_0_g45 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g45 = lerp( (temp_output_1_0_g45).rgb , ( (_InkSpreadColor).rgb * pow( ( ( ( break2_g47.x + break2_g47.y + break2_g47.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g46 ) , 0.0 ) ) ) , temp_output_9_0_g46 ) ) , ( _InkSpreadFade * clampResult53_g45 ));
				float4 appendResult9_g45 = (float4(lerpResult7_g45 , (temp_output_1_0_g45).a));
				
				float2 temp_output_8_0_g51 = IN.texCoord0.xy;
				
				float3 unpack14_g51 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g51 ), _NormalIntensity );
				unpack14_g51.z = lerp( 1, unpack14_g51.z, saturate(_NormalIntensity) );
				
				float4 Color = ( appendResult9_g45 * IN.ase_color );
				float Mask = tex2D( _MaskMap, temp_output_8_0_g51 ).r;
				float3 Normal = unpack14_g51;

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
			sampler2D _InkSpreadNoiseTexture;
			sampler2D _NormalMap;
			CBUFFER_START( UnityPerMaterial )
			float4 _MainTex_ST;
			float4 _InkSpreadColor;
			float4 _MainTex_TexelSize;
			float2 _InkSpreadPosition;
			float2 _InkSpreadNoiseScale;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			int _InkSpreadSpace;
			float _InkSpreadNoiseFactor;
			float _InkSpreadWidth;
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

				float2 uv_MainTex = IN.texCoord0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 temp_output_1_0_g45 = tex2D( _MainTex, uv_MainTex );
				float4 break2_g47 = temp_output_1_0_g45;
				float temp_output_9_0_g46 = max( _InkSpreadContrast , 0.0 );
				float3 ase_worldPos = IN.ase_texcoord5.xyz;
				float2 appendResult2_g49 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g48 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g48 = (ase_worldPos).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g48 = (IN.ase_texcoord6.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g48 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g49 ) );
				float2 temp_output_19_0_g45 = ifLocalVar2_g48;
				float clampResult53_g45 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g45 ) ) + ( tex2D( _InkSpreadNoiseTexture, ( temp_output_19_0_g45 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g45 = lerp( (temp_output_1_0_g45).rgb , ( (_InkSpreadColor).rgb * pow( ( ( ( break2_g47.x + break2_g47.y + break2_g47.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g46 ) , 0.0 ) ) ) , temp_output_9_0_g46 ) ) , ( _InkSpreadFade * clampResult53_g45 ));
				float4 appendResult9_g45 = (float4(lerpResult7_g45 , (temp_output_1_0_g45).a));
				
				float2 temp_output_8_0_g51 = IN.texCoord0.xy;
				float3 unpack14_g51 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g51 ), _NormalIntensity );
				unpack14_g51.z = lerp( 1, unpack14_g51.z, saturate(_NormalIntensity) );
				
				float4 Color = ( appendResult9_g45 * IN.color );
				float3 Normal = unpack14_g51;
				
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
			sampler2D _InkSpreadNoiseTexture;
			CBUFFER_START( UnityPerMaterial )
			float4 _MainTex_ST;
			float4 _InkSpreadColor;
			float4 _MainTex_TexelSize;
			float2 _InkSpreadPosition;
			float2 _InkSpreadNoiseScale;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			int _InkSpreadSpace;
			float _InkSpreadNoiseFactor;
			float _InkSpreadWidth;
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

				float2 uv_MainTex = IN.texCoord0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 temp_output_1_0_g45 = tex2D( _MainTex, uv_MainTex );
				float4 break2_g47 = temp_output_1_0_g45;
				float temp_output_9_0_g46 = max( _InkSpreadContrast , 0.0 );
				float3 ase_worldPos = IN.ase_texcoord2.xyz;
				float2 appendResult2_g49 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g48 = 0;
				if( _InkSpreadSpace > 1.0 )
				ifLocalVar2_g48 = (ase_worldPos).xy;
				else if( _InkSpreadSpace == 1.0 )
				ifLocalVar2_g48 = (IN.ase_texcoord3.xyz).xy;
				else if( _InkSpreadSpace < 1.0 )
				ifLocalVar2_g48 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g49 ) );
				float2 temp_output_19_0_g45 = ifLocalVar2_g48;
				float clampResult53_g45 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_19_0_g45 ) ) + ( tex2D( _InkSpreadNoiseTexture, ( temp_output_19_0_g45 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g45 = lerp( (temp_output_1_0_g45).rgb , ( (_InkSpreadColor).rgb * pow( ( ( ( break2_g47.x + break2_g47.y + break2_g47.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g46 ) , 0.0 ) ) ) , temp_output_9_0_g46 ) ) , ( _InkSpreadFade * clampResult53_g45 ));
				float4 appendResult9_g45 = (float4(lerpResult7_g45 , (temp_output_1_0_g45).a));
				
				float4 Color = ( appendResult9_g45 * IN.color );

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
126;578;1338;678;980.8959;642.8107;1.785705;True;True
Node;AmplifyShaderEditor.TexturePropertyNode;70;-678.8817,-437.8803;Inherit;True;Property;_MainTex;MainTex;0;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;69;-368.8802,-311.4423;Inherit;True;Property;_TextureSample3;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;75;-24.91711,-418.1664;Inherit;False;_InkSpread;5;;45;a413678b826542e479b8410366f66616;0;2;1;COLOR;0,0,0,0;False;18;SAMPLER2D;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;66;220.6745,159.7954;Inherit;False;LitHandler;1;;51;851662d67a92ce04d84817ff63c501f2;0;1;8;FLOAT2;0,0;False;2;COLOR;0;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;68;234.7509,-72.4296;Inherit;False;TintVertex;-1;;52;b0b94dd27c0f3da49a89feecae766dcc;0;1;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;16;112,96;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;12;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Normal;0;1;Sprite Normal;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=NormalsRendering;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;17;112,96;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;12;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Forward;0;2;Sprite Forward;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=UniversalForward;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;15;506.5879,57.29841;Float;False;True;-1;2;SpriteShadersUltimate.SingleShaderGUI;0;12;Sprite Shaders Ultimate/URP Lit/Color/Ink Spread Lit;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Lit;0;0;Sprite Lit;6;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;PreviewType=Plane;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Universal2D;False;0;Hidden/InternalErrorShader;0;0;Standard;1;Vertex Position;1;0;3;True;True;True;False;;False;0
WireConnection;69;0;70;0
WireConnection;75;1;69;0
WireConnection;75;18;70;0
WireConnection;68;1;75;0
WireConnection;15;1;68;0
WireConnection;15;2;66;0
WireConnection;15;3;66;5
ASEEND*/
//CHKSM=687C1D96CD7BAE575BC1DCC3F3A374492EFEDB8B