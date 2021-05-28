// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/Standard/Interactive/Wind"
{
	Properties
	{
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		_Color ("Tint", Color) = (1,1,1,1)
		[MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
		[PerRendererData] _AlphaTex ("External Alpha", 2D) = "white" {}
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
		_WindFlip("Wind: Flip", Float) = 0
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
			uniform float _WindRotationWindFactor;
			uniform float WindMinIntensity;
			uniform float WindMaxIntensity;
			uniform float2 WindNoiseSpeed;
			uniform float2 WindNoiseScale;
			uniform float _WindRotation;
			uniform float _WindMaxRotation;
			uniform float _WindFlip;
			uniform float _WindSquishFactor;
			uniform float _WindSquishWindFactor;
			uniform float2 _WindFromDistortion;
			uniform float2 _WindToDistortion;
			uniform sampler2D _WindDistortionTexture;
			float4 _MainTex_TexelSize;
			uniform float2 _WindDistortionSpeed;
			uniform float2 _WindDistortionScale;
			uniform float _WindDistortionWindFactor;
			uniform sampler2D _WindDistortionMask;
			uniform float4 _WindDistortionMask_ST;
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

				float4 transform62_g228 = mul(unity_WorldToObject,float4( 0,0,0,1 ));
				float gradientNoise95_g228 = GradientNoise(( ( (transform62_g228).xy + ( _Time.y * WindNoiseSpeed ) ) * WindNoiseScale ),0.05);
				gradientNoise95_g228 = gradientNoise95_g228*0.5 + 0.5;
				float lerpResult86_g228 = lerp( WindMinIntensity , WindMaxIntensity , gradientNoise95_g228);
				float clampResult29_g228 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g228 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g228 = IN.texcoord.xy;
				float temp_output_39_0_g228 = ( temp_output_1_0_g228.y + _WindFlip );
				float3 appendResult43_g228 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g228 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g228 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g228 )));
				float3 ase_worldPos = IN.ase_texcoord1.xyz;
				float2 appendResult2_g230 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 ifLocalVar2_g229 = 0;
				if( 1 > 1.0 )
				ifLocalVar2_g229 = (ase_worldPos).xy;
				else if( 1 == 1.0 )
				ifLocalVar2_g229 = (IN.ase_texcoord2.xyz).xy;
				else if( 1 < 1.0 )
				ifLocalVar2_g229 = ( IN.texcoord.xy / ( 100.0 / appendResult2_g230 ) );
				float lerpResult78_g228 = lerp( 1.0 , lerpResult86_g228 , _WindDistortionWindFactor);
				float2 lerpResult75_g228 = lerp( _WindFromDistortion , _WindToDistortion , ( tex2D( _WindDistortionTexture, ( ( ifLocalVar2_g229 + ( _Time.y * _WindDistortionSpeed ) ) * _WindDistortionScale ) ).r * lerpResult78_g228 ));
				float2 uv_WindDistortionMask = IN.texcoord.xy * _WindDistortionMask_ST.xy + _WindDistortionMask_ST.zw;
				float4 tex2DNode3_g232 = tex2D( _WindDistortionMask, uv_WindDistortionMask );
				float3 rotatedValue19_g228 = RotateAroundAxis( appendResult43_g228, float3( ( appendResult27_g228 + ( ( lerpResult75_g228 * ( 1.0 * ( tex2DNode3_g232.r * tex2DNode3_g232.a ) ) ) + temp_output_1_0_g228 ) ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g228 * temp_output_39_0_g228 ) );
				
				fixed4 c = ( tex2D( _MainTex, rotatedValue19_g228.xy ) * IN.color );
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
113;141;1338;608;1993.938;527.1013;1.824362;True;True
Node;AmplifyShaderEditor.TexCoordVertexDataNode;19;-1297.4,-84.4075;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TemplateShaderPropertyNode;44;-1283.392,-373.524;Inherit;False;0;0;_MainTex;Shader;False;0;5;SAMPLER2D;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;74;-1026.104,-84.6687;Inherit;False;_Wind;0;;228;ec83a27ec2e35b8448baba8208c7d3fd;0;2;1;FLOAT2;0,0;False;2;SAMPLER2D;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;17;-767.0223,-137.1655;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;15;-405.779,-58.22512;Inherit;False;TintVertex;-1;;227;b0b94dd27c0f3da49a89feecae766dcc;0;1;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;14;-100.1007,-6.891865;Float;False;True;-1;2;SpriteShadersUltimate.SingleShaderGUI;0;8;Sprite Shaders Ultimate/Standard/Interactive/Wind;0f8ba0101102bb14ebf021ddadce9b49;True;SubShader 0 Pass 0;0;0;SubShader 0 Pass 0;2;True;3;1;False;-1;10;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;True;2;False;-1;False;False;True;5;Queue=Transparent=Queue=0;IgnoreProjector=True;RenderType=Transparent=RenderType;PreviewType=Plane;CanUseSpriteAtlas=True;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;0;;0;0;Standard;0;0;1;True;False;;False;0
WireConnection;74;1;19;0
WireConnection;74;2;44;0
WireConnection;17;0;44;0
WireConnection;17;1;74;0
WireConnection;15;1;17;0
WireConnection;14;0;15;0
ASEEND*/
//CHKSM=1F6F1ED4FE53625CF8A5755CDE3CEC16981C0E90