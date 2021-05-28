// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/Standard/Effect/Poison"
{
	Properties
	{
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		_Color ("Tint", Color) = (1,1,1,1)
		[MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
		[PerRendererData] _AlphaTex ("External Alpha", 2D) = "white" {}
		_PoisonFade("Poison: Fade", Range( 0 , 1)) = 1
		_PoisonSpace("Poison: Space", Float) = 0
		[HDR]_PoisonColor("Poison: Color", Color) = (0.3137255,2.996078,0.3137255,0)
		_PoisonDensity("Poison: Density", Float) = 3
		_PoisonRecolorFactor("Poison: Recolor Factor", Range( 0 , 1)) = 0.5
		_PoisonShiftSpeed("Poison: Shift Speed", Float) = 0.2
		_PoisonNoiseBrightness("Poison: Noise Brightness", Float) = 1
		_PoisonNoiseScale("Poison: Noise Scale", Vector) = (0.2,0.2,0,0)
		_PoisonNoiseSpeed("Poison: Noise Speed", Vector) = (0,-0.2,0,0)
		_PoisonNoiseTexture("Poison: Noise Texture", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}

	SubShader
	{
		LOD 0

		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" "PreviewType"="Plane" "CanUseSpriteAtlas"="True" }

		Cull Off
		Lighting Off
		ZWrite Off
		Blend One OneMinusSrcAlpha
		
		
		Pass
		{
		CGPROGRAM
			
			#ifndef UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX
			#define UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input)
			#endif
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile _ PIXELSNAP_ON
			#pragma multi_compile _ ETC1_EXTERNAL_ALPHA
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_FRAG_COLOR


			struct appdata_t
			{
				float4 vertex   : POSITION;
				float4 color    : COLOR;
				float2 texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};

			struct v2f
			{
				float4 vertex   : SV_POSITION;
				fixed4 color    : COLOR;
				float2 texcoord  : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
			};
			
			uniform fixed4 _Color;
			uniform float _EnableExternalAlpha;
			uniform sampler2D _MainTex;
			uniform sampler2D _AlphaTex;
			uniform sampler2D _PoisonNoiseTexture;
			uniform float2 _PoisonNoiseSpeed;
			uniform float _PoisonSpace;
			float4 _MainTex_TexelSize;
			uniform float2 _PoisonNoiseScale;
			uniform float _PoisonShiftSpeed;
			uniform float _PoisonDensity;
			uniform float4 _PoisonColor;
			uniform float _PoisonFade;
			uniform float _PoisonNoiseBrightness;
			uniform float4 _MainTex_ST;
			uniform float _PoisonRecolorFactor;

			
			v2f vert( appdata_t IN  )
			{
				v2f OUT;
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(OUT);
				UNITY_TRANSFER_INSTANCE_ID(IN, OUT);
				float3 ase_worldPos = mul(unity_ObjectToWorld, IN.vertex).xyz;
				OUT.ase_texcoord1.xyz = ase_worldPos;
				
				OUT.ase_texcoord2 = IN.vertex;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				OUT.ase_texcoord1.w = 0;
				
				IN.vertex.xyz +=  float3(0,0,0) ; 
				OUT.vertex = UnityObjectToClipPos(IN.vertex);
				OUT.texcoord = IN.texcoord;
				OUT.color = IN.color * _Color;
				#ifdef PIXELSNAP_ON
				OUT.vertex = UnityPixelSnap (OUT.vertex);
				#endif

				return OUT;
			}

			fixed4 SampleSpriteTexture (float2 uv)
			{
				fixed4 color = tex2D (_MainTex, uv);

#if ETC1_EXTERNAL_ALPHA
				// get the color from an external texture (usecase: Alpha support for ETC1 on android)
				fixed4 alpha = tex2D (_AlphaTex, uv);
				color.a = lerp (color.a, alpha.r, _EnableExternalAlpha);
#endif //ETC1_EXTERNAL_ALPHA

				return color;
			}
			
			fixed4 frag(v2f IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				float3 ase_worldPos = IN.ase_texcoord1.xyz;
				float2 appendResult2_g365 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g364 = 0;
				if( (int)_PoisonSpace > 1.0 )
				ifLocalVar2_g364 = (ase_worldPos).xy;
				else if( (int)_PoisonSpace == 1.0 )
				ifLocalVar2_g364 = (IN.ase_texcoord2.xyz).xy;
				else if( (int)_PoisonSpace < 1.0 )
				ifLocalVar2_g364 = ( IN.texcoord.xy / ( 100.0 / appendResult2_g365 ) );
				float mulTime15_g362 = _Time.y * _PoisonShiftSpeed;
				float saferPower19_g362 = max( abs( ( ( ( tex2D( _PoisonNoiseTexture, ( ( ( _Time.y * _PoisonNoiseSpeed ) + ifLocalVar2_g364 ) * _PoisonNoiseScale ) ).r + mulTime15_g362 ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g362 = (_PoisonColor).rgb;
				float2 uv_MainTex = IN.texcoord.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 temp_output_1_0_g362 = tex2D( _MainTex, uv_MainTex );
				float3 temp_output_28_0_g362 = (temp_output_1_0_g362).rgb;
				float4 break2_g366 = float4( temp_output_28_0_g362 , 0.0 );
				float3 lerpResult32_g362 = lerp( temp_output_28_0_g362 , ( temp_output_24_0_g362 * ( ( break2_g366.x + break2_g366.y + break2_g366.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g362 = (float4(( ( max( pow( saferPower19_g362 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g362 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g362 ) , temp_output_1_0_g362.a));
				
				fixed4 c = ( appendResult27_g362 * IN.color );
				c.rgb *= c.a;
				return c;
			}
		ENDCG
		}
	}
	CustomEditor "SpriteShadersUltimate.SingleShaderGUI"
	
	
}
/*ASEBEGIN
Version=18800
136;93;1331;560;1489.788;443.4464;1.852788;True;True
Node;AmplifyShaderEditor.TemplateShaderPropertyNode;85;-1008.374,-85.04341;Inherit;False;0;0;_MainTex;Shader;False;0;5;SAMPLER2D;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;24;-736.775,33.25894;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;111;-392.0063,-107.2447;Inherit;False;_Poison;0;;362;22d5850153b7c6b44a14f0e4e0d08787;0;3;2;SAMPLER2D;0;False;3;SAMPLER2D;;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;22;-63.6362,70.99575;Inherit;False;TintVertex;-1;;361;b0b94dd27c0f3da49a89feecae766dcc;0;1;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;81;211.4418,70.685;Float;False;True;-1;2;SpriteShadersUltimate.SingleShaderGUI;0;8;Sprite Shaders Ultimate/Standard/Effect/Poison;0f8ba0101102bb14ebf021ddadce9b49;True;SubShader 0 Pass 0;0;0;SubShader 0 Pass 0;2;True;3;1;False;-1;10;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;True;2;False;-1;False;False;True;5;Queue=Transparent=Queue=0;IgnoreProjector=True;RenderType=Transparent=RenderType;PreviewType=Plane;CanUseSpriteAtlas=True;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;0;;0;0;Standard;0;0;1;True;False;;False;0
WireConnection;24;0;85;0
WireConnection;111;2;85;0
WireConnection;111;1;24;0
WireConnection;22;1;111;0
WireConnection;81;0;22;0
ASEEND*/
//CHKSM=2DA78444E428C6332460C70911AAF97A7A513C96