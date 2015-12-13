// Upgrade NOTE: commented out 'float4 unity_DynamicLightmapST', a built-in variable
// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable

// Shader created with Shader Forge v1.03 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.03;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2139,x:32514,y:33488,varname:node_2139,prsc:2|diff-3489-OUT,emission-8863-OUT,clip-8946-OUT;n:type:ShaderForge.SFN_Tex2d,id:7143,x:29812,y:33747,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_7143,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:2143,x:29580,y:33661,ptovrint:False,ptlb:DissolveAmount,ptin:_DissolveAmount,varname:node_2143,prsc:2,min:-0.5,cur:-0.09541934,max:1.5;n:type:ShaderForge.SFN_Add,id:9119,x:30056,y:33638,varname:node_9119,prsc:2|A-2143-OUT,B-7143-R;n:type:ShaderForge.SFN_RemapRange,id:8946,x:30256,y:33715,varname:node_8946,prsc:2,frmn:0,frmx:1,tomn:-10,tomx:10|IN-9119-OUT;n:type:ShaderForge.SFN_Tex2d,id:1072,x:31225,y:33536,varname:node_1072,prsc:2,tex:9be32481bf46b1547a1e1c663f619796,ntxv:0,isnm:False|UVIN-9283-OUT,TEX-862-TEX;n:type:ShaderForge.SFN_Append,id:9283,x:30824,y:33622,varname:node_9283,prsc:2|A-1536-OUT,B-8087-OUT;n:type:ShaderForge.SFN_Vector1,id:8087,x:30604,y:33656,varname:node_8087,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:862,x:30763,y:33750,ptovrint:False,ptlb:Gradient,ptin:_Gradient,varname:node_862,tex:9be32481bf46b1547a1e1c663f619796,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ConstantClamp,id:1536,x:30505,y:33715,varname:node_1536,prsc:2,min:0,max:1|IN-8946-OUT;n:type:ShaderForge.SFN_Lerp,id:8993,x:32228,y:33426,varname:node_8993,prsc:2|A-1072-RGB,B-3489-OUT,T-1176-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:1176,x:30899,y:33956,varname:node_1176,prsc:2,a:-5,b:5|IN-9119-OUT;n:type:ShaderForge.SFN_Color,id:7638,x:30983,y:32557,ptovrint:False,ptlb:node_3330,ptin:_node_3330,varname:node_3330,prsc:2,glob:False,c1:0.2916306,c2:0.6838235,c3:0.6189088,c4:1;n:type:ShaderForge.SFN_ViewReflectionVector,id:422,x:30793,y:33092,varname:node_422,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:150,x:31767,y:33259,varname:node_150,prsc:2;n:type:ShaderForge.SFN_LightVector,id:3751,x:30823,y:32876,varname:node_3751,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6868,x:30835,y:32675,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:3701,x:31138,y:32726,varname:node_3701,prsc:2,dt:0|A-6868-OUT,B-3751-OUT;n:type:ShaderForge.SFN_Dot,id:6790,x:31116,y:32943,varname:node_6790,prsc:2,dt:4|A-3751-OUT,B-422-OUT;n:type:ShaderForge.SFN_Power,id:7360,x:31284,y:33026,varname:node_7360,prsc:2|VAL-6790-OUT,EXP-6866-OUT;n:type:ShaderForge.SFN_Slider,id:9345,x:30185,y:33032,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:node_5827,prsc:2,min:1,cur:1.125174,max:11;n:type:ShaderForge.SFN_Exp,id:6866,x:30627,y:33017,varname:node_6866,prsc:2,et:0|IN-9345-OUT;n:type:ShaderForge.SFN_Multiply,id:6702,x:31356,y:32767,varname:node_6702,prsc:2|A-7638-RGB,B-3701-OUT;n:type:ShaderForge.SFN_Add,id:3802,x:31654,y:32819,varname:node_3802,prsc:2|A-6702-OUT,B-3987-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:9759,x:31493,y:32970,varname:node_9759,prsc:2,min:0,max:0.1|IN-7360-OUT;n:type:ShaderForge.SFN_LightColor,id:262,x:31529,y:33196,varname:node_262,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7797,x:31883,y:32868,varname:node_7797,prsc:2|A-3802-OUT,B-262-RGB,C-150-OUT;n:type:ShaderForge.SFN_Divide,id:5128,x:31783,y:32600,varname:node_5128,prsc:2|A-7797-OUT,B-776-OUT;n:type:ShaderForge.SFN_Vector1,id:776,x:31562,y:32701,varname:node_776,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Posterize,id:3987,x:31715,y:32980,varname:node_3987,prsc:2|IN-9759-OUT,STPS-4407-OUT;n:type:ShaderForge.SFN_Vector1,id:4407,x:31493,y:33103,varname:node_4407,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:3489,x:31936,y:32579,varname:node_3489,prsc:2|A-4690-RGB,B-5128-OUT;n:type:ShaderForge.SFN_Color,id:4690,x:31562,y:32506,ptovrint:False,ptlb:node_219,ptin:_node_219,varname:node_219,prsc:2,glob:False,c1:0,c2:0.6985294,c3:0.3516736,c4:1;n:type:ShaderForge.SFN_Vector1,id:8863,x:32228,y:33598,varname:node_8863,prsc:2,v1:0.25;proporder:7143-2143-862-7638-9345-4690;pass:END;sub:END;*/

Shader "Shader Forge/Dissolve1" {
    Properties {
        _noise ("noise", 2D) = "white" {}
        _DissolveAmount ("DissolveAmount", Range(-0.5, 1.5)) = -0.09541934
        _Gradient ("Gradient", 2D) = "white" {}
        _node_3330 ("node_3330", Color) = (0.2916306,0.6838235,0.6189088,1)
        _gloss ("gloss", Range(1, 11)) = 1.125174
        _node_219 ("node_219", Color) = (0,0.6985294,0.3516736,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _DissolveAmount;
            uniform float4 _node_3330;
            uniform float _gloss;
            uniform float4 _node_219;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD7;
                #else
                    float3 shLight : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(i.uv0, _noise));
                float node_9119 = (_DissolveAmount+_noise_var.r);
                float node_8946 = (node_9119*20.0+-10.0);
                clip( BinaryDither3x3(node_8946 - 1.5, sceneUVs) );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_4407 = 10.0;
                float3 node_3489 = (_node_219.rgb*((((_node_3330.rgb*dot(i.normalDir,lightDirection))+floor(clamp(pow(0.5*dot(lightDirection,viewReflectDirection)+0.5,exp(_gloss)),0,0.1) * node_4407) / (node_4407 - 1))*_LightColor0.rgb*attenuation)/0.75));
                float3 diffuse = (directDiffuse + indirectDiffuse) * node_3489;
////// Emissive:
                float node_8863 = 0.25;
                float3 emissive = float3(node_8863,node_8863,node_8863);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _DissolveAmount;
            uniform float4 _node_3330;
            uniform float _gloss;
            uniform float4 _node_219;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD6;
                #else
                    float3 shLight : TEXCOORD6;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(i.uv0, _noise));
                float node_9119 = (_DissolveAmount+_noise_var.r);
                float node_8946 = (node_9119*20.0+-10.0);
                clip( BinaryDither3x3(node_8946 - 1.5, sceneUVs) );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_4407 = 10.0;
                float3 node_3489 = (_node_219.rgb*((((_node_3330.rgb*dot(i.normalDir,lightDirection))+floor(clamp(pow(0.5*dot(lightDirection,viewReflectDirection)+0.5,exp(_gloss)),0,0.1) * node_4407) / (node_4407 - 1))*_LightColor0.rgb*attenuation)/0.75));
                float3 diffuse = directDiffuse * node_3489;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _DissolveAmount;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
                float4 screenPos : TEXCOORD6;
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD7;
                #else
                    float3 shLight : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(i.uv0, _noise));
                float node_9119 = (_DissolveAmount+_noise_var.r);
                float node_8946 = (node_9119*20.0+-10.0);
                clip( BinaryDither3x3(node_8946 - 1.5, sceneUVs) );
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Cull Off
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _DissolveAmount;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD3;
                #else
                    float3 shLight : TEXCOORD3;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(i.uv0, _noise));
                float node_9119 = (_DissolveAmount+_noise_var.r);
                float node_8946 = (node_9119*20.0+-10.0);
                clip( BinaryDither3x3(node_8946 - 1.5, sceneUVs) );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
