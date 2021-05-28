// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/Standard/Color/Outer Outline"
{
	Properties
	{
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		_Color ("Tint", Color) = (1,1,1,1)
		[MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
		[PerRendererData] _AlphaTex ("External Alpha", 2D) = "white" {}
		_OuterOutlineFade("Outer Outline: Fade", Range( 0 , 1)) = 1
		[HDR]_OuterOutlineColor("Outer Outline: Color", Color) = (0,0,0,1)
		_OuterOutlineWidth("Outer Outline: Width", Float) = 0.04
		[Toggle(_OUTEROUTLINEDISTORTIONTOGGLE_ON)] _OuterOutlineDistortionToggle("Outer Outline: Distortion Toggle", Float) = 0
		_OuterOutlineDistortionIntensity("Outer Outline: Distortion Intensity", Vector) = (0.01,0.01,0,0)
		_OuterOutlineNoiseScale("Outer Outline: Noise Scale", Vector) = (4,4,0,0)
		_OuterOutlineNoiseSpeed("Outer Outline: Noise Speed", Vector) = (0,0.1,0,0)
		_OuterOutlineNoiseTexture("Outer Outline: Noise Texture", 2D) = "white" {}
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
			#pragma multi_compile_local __ _OUTEROUTLINEDISTORTIONTOGGLE_ON


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
				
			};
			
			uniform fixed4 _Color;
			uniform float _EnableExternalAlpha;
			uniform sampler2D _MainTex;
			uniform sampler2D _AlphaTex;
			uniform float4 _OuterOutlineColor;
			uniform float4 _MainTex_ST;
			uniform sampler2D _OuterOutlineNoiseTexture;
			uniform float2 _OuterOutlineNoiseSpeed;
			uniform float2 _OuterOutlineNoiseScale;
			uniform float2 _OuterOutlineDistortionIntensity;
			uniform float _OuterOutlineWidth;
			float4 _MainTex_TexelSize;
			uniform float _OuterOutlineFade;

			
			v2f vert( appdata_t IN  )
			{
				v2f OUT;
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(OUT);
				UNITY_TRANSFER_INSTANCE_ID(IN, OUT);
				
				
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

				float2 uv_MainTex = IN.texcoord.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 temp_output_15_0_g437 = tex2D( _MainTex, uv_MainTex );
				float temp_output_31_0_g437 = (temp_output_15_0_g437).a;
				float2 temp_output_7_0_g437 = IN.texcoord.xy;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g437 = ( ( tex2D( _OuterOutlineNoiseTexture, ( ( ( _Time.y * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g437 ) * _OuterOutlineNoiseScale ) ).r - 0.25 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g437 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g437 = ( staticSwitch157_g437 + temp_output_7_0_g437 );
				float2 appendResult2_g438 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g437 = ( 100.0 / appendResult2_g438 );
				float temp_output_83_0_g437 = ( _OuterOutlineColor.a * min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g437 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g437 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g437 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g437 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g437 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g437 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g437 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g437 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g437 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g437 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g437 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g437 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g437 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g437 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g437 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g437 ) ) ).a ) * 3.0 ) , 1.0 ) );
				float lerpResult152_g437 = lerp( temp_output_31_0_g437 , temp_output_83_0_g437 , ( temp_output_83_0_g437 * _OuterOutlineFade ));
				float4 appendResult84_g437 = (float4((_OuterOutlineColor).rgb , lerpResult152_g437));
				float4 lerpResult43_g437 = lerp( appendResult84_g437 , temp_output_15_0_g437 , ( 1.0 - ( min( ( _OuterOutlineFade * 10.0 ) , 1.0 ) * ( 1.0 - temp_output_31_0_g437 ) ) ));
				
				fixed4 c = ( lerpResult43_g437 * IN.color );
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
-115;578;1613;612;2354.237;621.8085;2.041014;True;True
Node;AmplifyShaderEditor.TemplateShaderPropertyNode;72;-1452.552,-164.1167;Inherit;False;0;0;_MainTex;Shader;False;0;5;SAMPLER2D;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;25;-999.9279,-429.1396;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;33;-945.118,-196.6154;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;85;-519.5405,18.53127;Inherit;False;_OuterOutline;0;;437;c63fd6271f1306b46aa2076a150659b5;0;4;15;COLOR;0,0,0,0;False;161;SAMPLER2D;;False;7;FLOAT2;0,0;False;4;SAMPLER2D;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;22;-186.1487,18.7237;Inherit;False;TintVertex;-1;;433;b0b94dd27c0f3da49a89feecae766dcc;0;1;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;14;172.2378,20.04645;Float;False;True;-1;2;SpriteShadersUltimate.SingleShaderGUI;0;8;Sprite Shaders Ultimate/Standard/Color/Outer Outline;0f8ba0101102bb14ebf021ddadce9b49;True;SubShader 0 Pass 0;0;0;SubShader 0 Pass 0;2;True;3;1;False;-1;10;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;True;2;False;-1;False;False;True;5;Queue=Transparent=Queue=0;IgnoreProjector=True;RenderType=Transparent=RenderType;PreviewType=Plane;CanUseSpriteAtlas=True;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;0;;0;0;Standard;0;0;1;True;False;;False;0
WireConnection;25;0;72;0
WireConnection;85;15;25;0
WireConnection;85;7;33;0
WireConnection;85;4;72;0
WireConnection;22;1;85;0
WireConnection;14;0;22;0
ASEEND*/
//CHKSM=370462D6351791100FEE899059A8AC0F5420DD19