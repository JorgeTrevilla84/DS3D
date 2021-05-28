// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/URP Lit/Interactive/Wind Lit"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin]_MainTex("MainTex", 2D) = "white" {}
		_MaskMap("Mask Map", 2D) = "white" {}
		_NormalMap("Normal Map", 2D) = "bump" {}
		_NormalIntensity("Normal Intensity", Range( 0 , 3)) = 1
		_WindRotation("Wind: Rotation", Float) = 0
		_WindMaxRotation("Wind: Max Rotation", Float) = 2
		_WindRotationWindFactor("Wind: Rotation Wind Factor", Float) = 1
		_WindSquishFactor("Wind: Squish Factor", Float) = 0.3
		_WindSquishWindFactor("Wind: Squish Wind Factor", Range( 0 , 1)) = 0
		_WindDistortionSpeed("Wind: Distortion Speed", Vector) = (0,0.3,0,0)
		_WindFromDistortion("Wind: From Distortion", Vector) = (0,0,0,0)
		_WindToDistortion("Wind: To Distortion", Vector) = (0.1,0,0,0)
		_WindDistortionScale("Wind: Distortion Scale", Vector) = (0.25,0.25,0,0)
		_WindDistortionTexture("Wind: Distortion Texture", 2D) = "white" {}
		_WindDistortionMask("Wind: Distortion Mask", 2D) = "white" {}
		_WindDistortionWindFactor("Wind: Distortion Wind Factor", Range( 0 , 1)) = 0.5
		[ASEEnd]_WindFlip("Wind: Flip", Float) = 0
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
			float WindMinIntensity;
			float WindMaxIntensity;
			float2 WindNoiseSpeed;
			float2 WindNoiseScale;
			sampler2D _WindDistortionTexture;
			sampler2D _WindDistortionMask;
			sampler2D _MaskMap;
			sampler2D _NormalMap;
			CBUFFER_START( UnityPerMaterial )
			float4 _MainTex_TexelSize;
			float4 _WindDistortionMask_ST;
			float2 _WindFromDistortion;
			float2 _WindToDistortion;
			float2 _WindDistortionSpeed;
			float2 _WindDistortionScale;
			float _WindRotationWindFactor;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _WindSquishWindFactor;
			float _WindDistortionWindFactor;
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

				float4 transform62_g188 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g188 = GradientNoise(( ( (transform62_g188).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g188 = gradientNoise95_g188*0.5 + 0.5;
				float lerpResult86_g188 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g188);
				float clampResult29_g188 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g188 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g188 = IN.texCoord0.xy;
				float temp_output_39_0_g188 = ( temp_output_1_0_g188.y + _WindFlip );
				float3 appendResult43_g188 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g188 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g188 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g188 )));
				float3 ase_worldPos = IN.ase_texcoord3.xyz;
				float2 appendResult2_g190 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g189 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g189 = (ase_worldPos).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g189 = (IN.ase_texcoord4.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g189 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g190 ) );
				float lerpResult78_g188 = lerp( 1.0 , lerpResult86_g188 , _WindDistortionWindFactor);
				float2 lerpResult75_g188 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _WindDistortionTexture, ( ( ifLocalVar2_g189 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g188 ));
				float2 uv_WindDistortionMask = IN.texCoord0.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g192 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g188 = RotateAroundAxis( appendResult43_g188, float3( ( appendResult27_g188 + ( ( lerpResult75_g188 * ( 1.0 * ( tex2DNode3_g192.r * tex2DNode3_g192.a ) ) ) + temp_output_1_0_g188 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g188 * temp_output_39_0_g188 ) );
				float3 temp_output_88_0 = rotatedValue19_g188;
				
				float2 temp_output_8_0_g194 = temp_output_88_0.xy;
				
				float3 unpack14_g194 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g194 ), _NormalIntensity );
				unpack14_g194.z = lerp( 1, unpack14_g194.z, saturate(_NormalIntensity) );
				
				float4 Color = ( tex2D( _MainTex, temp_output_88_0.xy ) * IN.ase_color );
				float Mask = tex2D( _MaskMap, temp_output_8_0_g194 ).r;
				float3 Normal = unpack14_g194;

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
			float WindMinIntensity;
			float WindMaxIntensity;
			float2 WindNoiseSpeed;
			float2 WindNoiseScale;
			sampler2D _WindDistortionTexture;
			sampler2D _WindDistortionMask;
			sampler2D _NormalMap;
			CBUFFER_START( UnityPerMaterial )
			float4 _MainTex_TexelSize;
			float4 _WindDistortionMask_ST;
			float2 _WindFromDistortion;
			float2 _WindToDistortion;
			float2 _WindDistortionSpeed;
			float2 _WindDistortionScale;
			float _WindRotationWindFactor;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _WindSquishWindFactor;
			float _WindDistortionWindFactor;
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

				float4 transform62_g188 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g188 = GradientNoise(( ( (transform62_g188).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g188 = gradientNoise95_g188*0.5 + 0.5;
				float lerpResult86_g188 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g188);
				float clampResult29_g188 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g188 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g188 = IN.texCoord0.xy;
				float temp_output_39_0_g188 = ( temp_output_1_0_g188.y + _WindFlip );
				float3 appendResult43_g188 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g188 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g188 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g188 )));
				float3 ase_worldPos = IN.ase_texcoord5.xyz;
				float2 appendResult2_g190 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g189 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g189 = (ase_worldPos).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g189 = (IN.ase_texcoord6.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g189 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g190 ) );
				float lerpResult78_g188 = lerp( 1.0 , lerpResult86_g188 , _WindDistortionWindFactor);
				float2 lerpResult75_g188 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _WindDistortionTexture, ( ( ifLocalVar2_g189 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g188 ));
				float2 uv_WindDistortionMask = IN.texCoord0.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g192 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g188 = RotateAroundAxis( appendResult43_g188, float3( ( appendResult27_g188 + ( ( lerpResult75_g188 * ( 1.0 * ( tex2DNode3_g192.r * tex2DNode3_g192.a ) ) ) + temp_output_1_0_g188 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g188 * temp_output_39_0_g188 ) );
				float3 temp_output_88_0 = rotatedValue19_g188;
				
				float2 temp_output_8_0_g194 = temp_output_88_0.xy;
				float3 unpack14_g194 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g194 ), _NormalIntensity );
				unpack14_g194.z = lerp( 1, unpack14_g194.z, saturate(_NormalIntensity) );
				
				float4 Color = ( tex2D( _MainTex, temp_output_88_0.xy ) * IN.color );
				float3 Normal = unpack14_g194;
				
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
			float WindMinIntensity;
			float WindMaxIntensity;
			float2 WindNoiseSpeed;
			float2 WindNoiseScale;
			sampler2D _WindDistortionTexture;
			sampler2D _WindDistortionMask;
			CBUFFER_START( UnityPerMaterial )
			float4 _MainTex_TexelSize;
			float4 _WindDistortionMask_ST;
			float2 _WindFromDistortion;
			float2 _WindToDistortion;
			float2 _WindDistortionSpeed;
			float2 _WindDistortionScale;
			float _WindRotationWindFactor;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _WindSquishWindFactor;
			float _WindDistortionWindFactor;
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

				float4 transform62_g188 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				float gradientNoise95_g188 = GradientNoise(( ( (transform62_g188).xy + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g188 = gradientNoise95_g188*0.5 + 0.5;
				float lerpResult86_g188 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g188);
				float clampResult29_g188 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g188 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g188 = IN.texCoord0.xy;
				float temp_output_39_0_g188 = ( temp_output_1_0_g188.y + _WindFlip );
				float3 appendResult43_g188 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g188 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g188 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g188 )));
				float3 ase_worldPos = IN.ase_texcoord2.xyz;
				float2 appendResult2_g190 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g189 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g189 = (ase_worldPos).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g189 = (IN.ase_texcoord3.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g189 = ( IN.texCoord0.xy / ( 100.0 / appendResult2_g190 ) );
				float lerpResult78_g188 = lerp( 1.0 , lerpResult86_g188 , _WindDistortionWindFactor);
				float2 lerpResult75_g188 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _WindDistortionTexture, ( ( ifLocalVar2_g189 + ( _TimeParameters.x * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g188 ));
				float2 uv_WindDistortionMask = IN.texCoord0.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g192 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g188 = RotateAroundAxis( appendResult43_g188, float3( ( appendResult27_g188 + ( ( lerpResult75_g188 * ( 1.0 * ( tex2DNode3_g192.r * tex2DNode3_g192.a ) ) ) + temp_output_1_0_g188 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g188 * temp_output_39_0_g188 ) );
				float3 temp_output_88_0 = rotatedValue19_g188;
				
				float4 Color = ( tex2D( _MainTex, temp_output_88_0.xy ) * IN.color );

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
113;141;1338;608;1621.451;273.2993;1.625372;True;True
Node;AmplifyShaderEditor.TexCoordVertexDataNode;89;-1144.469,234.6094;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;25;-1182.645,-127.7492;Inherit;True;Property;_MainTex;MainTex;0;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;88;-864.3245,305.0488;Inherit;False;_Wind;5;;188;ec83a27ec2e35b8448baba8208c7d3fd;0;2;1;FLOAT2;0,0;False;2;SAMPLER2D;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;24;-524.775,-35.74106;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;22;-63.6362,70.99575;Inherit;False;TintVertex;-1;;193;b0b94dd27c0f3da49a89feecae766dcc;0;1;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;86;-68.50143,156.8532;Inherit;False;LitHandler;1;;194;851662d67a92ce04d84817ff63c501f2;0;1;8;FLOAT2;0,0;False;2;COLOR;0;FLOAT3;5
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;83;211.4418,70.685;Float;False;True;-1;2;SpriteShadersUltimate.SingleShaderGUI;0;12;Sprite Shaders Ultimate/URP Lit/Interactive/Wind Lit;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Lit;0;0;Sprite Lit;6;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;PreviewType=Plane;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Universal2D;False;0;Hidden/InternalErrorShader;0;0;Standard;1;Vertex Position;1;0;3;True;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;84;211.4418,70.685;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Normal;0;1;Sprite Normal;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=NormalsRendering;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;85;211.4418,70.685;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Forward;0;2;Sprite Forward;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=UniversalForward;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
WireConnection;88;1;89;0
WireConnection;88;2;25;0
WireConnection;24;0;25;0
WireConnection;24;1;88;0
WireConnection;22;1;24;0
WireConnection;86;8;88;0
WireConnection;83;1;22;0
WireConnection;83;2;86;0
WireConnection;83;3;86;5
ASEEND*/
//CHKSM=E2C2A1CC6BAC9801D0E790AEC3E04E392D338F41