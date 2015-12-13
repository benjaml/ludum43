// Upgrade NOTE: commented out 'float4 unity_DynamicLightmapST', a built-in variable
// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable

// Shader created with Shader Forge v1.03 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.03;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9441,x:33232,y:32416,varname:node_9441,prsc:2|diff-8941-OUT;n:type:ShaderForge.SFN_Color,id:3330,x:31927,y:32383,ptovrint:False,ptlb:node_3330,ptin:_node_3330,varname:node_3330,prsc:2,glob:False,c1:0.2916306,c2:0.6838235,c3:0.6189088,c4:1;n:type:ShaderForge.SFN_ViewReflectionVector,id:5974,x:31841,y:32897,varname:node_5974,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:880,x:32645,y:33035,varname:node_880,prsc:2;n:type:ShaderForge.SFN_LightVector,id:7748,x:31841,y:32769,varname:node_7748,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:7440,x:31841,y:32624,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2405,x:32060,y:32624,varname:node_2405,prsc:2,dt:0|A-7440-OUT,B-7748-OUT;n:type:ShaderForge.SFN_Dot,id:6202,x:32060,y:32769,varname:node_6202,prsc:2,dt:4|A-7748-OUT,B-5974-OUT;n:type:ShaderForge.SFN_Power,id:3238,x:32268,y:32747,varname:node_3238,prsc:2|VAL-6202-OUT,EXP-388-OUT;n:type:ShaderForge.SFN_Slider,id:5827,x:31471,y:33059,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:node_5827,prsc:2,min:1,cur:1.125174,max:11;n:type:ShaderForge.SFN_Exp,id:388,x:31841,y:33034,varname:node_388,prsc:2,et:0|IN-5827-OUT;n:type:ShaderForge.SFN_Multiply,id:8033,x:32300,y:32593,varname:node_8033,prsc:2|A-3330-RGB,B-2405-OUT;n:type:ShaderForge.SFN_Add,id:716,x:32598,y:32645,varname:node_716,prsc:2|A-8033-OUT,B-146-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:2999,x:32437,y:32796,varname:node_2999,prsc:2,min:0,max:0.1|IN-3238-OUT;n:type:ShaderForge.SFN_LightColor,id:6861,x:32407,y:32972,varname:node_6861,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7626,x:32827,y:32694,varname:node_7626,prsc:2|A-716-OUT,B-6861-RGB,C-880-OUT;n:type:ShaderForge.SFN_Divide,id:6230,x:32727,y:32426,varname:node_6230,prsc:2|A-7626-OUT,B-6556-OUT;n:type:ShaderForge.SFN_Vector1,id:6556,x:32506,y:32527,varname:node_6556,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Posterize,id:146,x:32659,y:32806,varname:node_146,prsc:2|IN-2999-OUT,STPS-1974-OUT;n:type:ShaderForge.SFN_Vector1,id:1974,x:32437,y:32929,varname:node_1974,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:8941,x:32882,y:32316,varname:node_8941,prsc:2|A-219-RGB,B-6230-OUT;n:type:ShaderForge.SFN_Color,id:219,x:32655,y:32079,ptovrint:False,ptlb:node_219,ptin:_node_219,varname:node_219,prsc:2,glob:False,c1:0,c2:0.6985294,c3:0.3516736,c4:1;n:type:ShaderForge.SFN_Vector1,id:5246,x:32907,y:32509,varname:node_5246,prsc:2,v1:0.25;proporder:3330-5827-219;pass:END;sub:END;*/

Shader "Custom/cellshading" {
    Properties {
        _node_3330 ("node_3330", Color) = (0.2916306,0.6838235,0.6189088,1)
        _gloss ("gloss", Range(1, 11)) = 1.125174
        _node_219 ("node_219", Color) = (0,0.6985294,0.3516736,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
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
            uniform float4 _node_3330;
            uniform float _gloss;
            uniform float4 _node_219;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD6;
                #else
                    float3 shLight : TEXCOORD6;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float node_1974 = 10.0;
                float3 diffuse = (directDiffuse + indirectDiffuse) * (_node_219.rgb*((((_node_3330.rgb*dot(i.normalDir,lightDirection))+floor(clamp(pow(0.5*dot(lightDirection,viewReflectDirection)+0.5,exp(_gloss)),0,0.1) * node_1974) / (node_1974 - 1))*_LightColor0.rgb*attenuation)/0.75));
/// Final Color:
                float3 finalColor = diffuse;
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
            uniform float4 _node_3330;
            uniform float _gloss;
            uniform float4 _node_219;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD5;
                #else
                    float3 shLight : TEXCOORD5;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_1974 = 10.0;
                float3 diffuse = directDiffuse * (_node_219.rgb*((((_node_3330.rgb*dot(i.normalDir,lightDirection))+floor(clamp(pow(0.5*dot(lightDirection,viewReflectDirection)+0.5,exp(_gloss)),0,0.1) * node_1974) / (node_1974 - 1))*_LightColor0.rgb*attenuation)/0.75));
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
