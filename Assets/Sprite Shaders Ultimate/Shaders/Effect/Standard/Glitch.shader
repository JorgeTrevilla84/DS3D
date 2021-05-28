// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/Standard/Effect/Glitch"
{
	Properties
	{
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		_Color ("Tint", Color) = (1,1,1,1)
		[MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
		[PerRendererData] _AlphaTex ("External Alpha", 2D) = "white" {}
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
		_GlitchDistortionSpeed("Glitch: Distortion Speed", Vector) = (0,1,0,0)

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
			uniform sampler2D _GlitchDistortionTexture;
			uniform int _GlitchSpace;
			float4 _MainTex_TexelSize;
			uniform float2 _GlitchDistortionSpeed;
			uniform float2 _GlitchDistortionScale;
			uniform float2 _GlitchDistortion;
			uniform sampler2D _GlitchMaskNoise;
			uniform float2 _GlitchMaskSpeed;
			uniform float2 _GlitchMaskScale;
			uniform float _GlitchMaskMin;
			uniform float _GlitchFade;
			uniform float _GlitchBrightness;
			uniform sampler2D _GlitchNoiseTexture;
			uniform float2 _GlitchNoiseSpeed;
			uniform float2 _GlitchNoiseScale;
			uniform float _GlitchHueSpeed;
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			
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

				float2 texCoord135 = IN.texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_worldPos = IN.ase_texcoord1.xyz;
				float2 appendResult2_g447 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g446 = 0;
				if( _GlitchSpace > 1.0 )
				ifLocalVar2_g446 = (ase_worldPos).xy;
				else if( _GlitchSpace == 1.0 )
				ifLocalVar2_g446 = (IN.ase_texcoord2.xyz).xy;
				else if( _GlitchSpace < 1.0 )
				ifLocalVar2_g446 = ( IN.texcoord.xy / ( 100.0 / appendResult2_g447 ) );
				float2 temp_output_3_0_g445 = ifLocalVar2_g446;
				float2 temp_output_150_0 = temp_output_3_0_g445;
				float temp_output_150_15 = ( max( tex2D( _GlitchMaskNoise, ( ( temp_output_3_0_g445 + ( _GlitchMaskSpeed * _Time.y ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				float4 temp_output_1_0_g451 = tex2D( _MainTex, ( texCoord135 + ( ( tex2D( _GlitchDistortionTexture, ( ( temp_output_150_0 + ( _GlitchDistortionSpeed * _Time.y ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * temp_output_150_15 ) ) );
				float4 break2_g453 = temp_output_1_0_g451;
				float mulTime14_g451 = _Time.y * _GlitchHueSpeed;
				float3 hsvTorgb3_g452 = HSVToRGB( float3(( tex2D( _GlitchNoiseTexture, ( ( temp_output_150_0 + ( _GlitchNoiseSpeed * _Time.y ) ) * _GlitchNoiseScale ) ).r + mulTime14_g451 ),1.0,1.0) );
				float3 lerpResult23_g451 = lerp( (temp_output_1_0_g451).rgb , ( ( ( break2_g453.x + break2_g453.y + break2_g453.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g452 ) , temp_output_150_15);
				float4 appendResult27_g451 = (float4(lerpResult23_g451 , temp_output_1_0_g451.a));
				
				fixed4 c = ( appendResult27_g451 * IN.color );
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
134;292;1338;620;2032.071;446.1698;1.839565;True;True
Node;AmplifyShaderEditor.TemplateShaderPropertyNode;106;-1842.904,-443.567;Inherit;False;0;0;_MainTex;Shader;False;0;5;SAMPLER2D;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;135;-1481.634,8.585632;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;150;-1553.015,-188.075;Inherit;False;_GlitchPre;0;;445;b8ad29d751d87bd4d9cbf14898be6163;0;1;1;SAMPLER2D;0,0;False;2;FLOAT;15;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;151;-1059.552,-25.75161;Inherit;False;_GlitchUV;13;;449;2addb21417fb5d745a5abfe02cbcd453;0;3;13;FLOAT2;0,0;False;3;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;24;-719.079,-63.46142;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;152;-372.3652,-149.8678;Inherit;False;_Glitch;7;;451;97a01281f94bcc04fbb9a7c1cd328f08;0;3;31;FLOAT2;0,0;False;29;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;22;-45.6362,-19.00425;Inherit;False;TintVertex;-1;;430;b0b94dd27c0f3da49a89feecae766dcc;0;1;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;81;229.4418,-19.315;Float;False;True;-1;2;SpriteShadersUltimate.SingleShaderGUI;0;8;Sprite Shaders Ultimate/Standard/Effect/Glitch;0f8ba0101102bb14ebf021ddadce9b49;True;SubShader 0 Pass 0;0;0;SubShader 0 Pass 0;2;True;3;1;False;-1;10;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;True;2;False;-1;False;False;True;5;Queue=Transparent=Queue=0;IgnoreProjector=True;RenderType=Transparent=RenderType;PreviewType=Plane;CanUseSpriteAtlas=True;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;0;;0;0;Standard;0;0;1;True;False;;False;0
WireConnection;150;1;106;0
WireConnection;151;13;150;0
WireConnection;151;3;150;15
WireConnection;151;1;135;0
WireConnection;24;0;106;0
WireConnection;24;1;151;0
WireConnection;152;31;150;0
WireConnection;152;29;150;15
WireConnection;152;1;24;0
WireConnection;22;1;152;0
WireConnection;81;0;22;0
ASEEND*/
//CHKSM=6FC80E47E88022DFC75F3A6E7AFB95F541B43D67