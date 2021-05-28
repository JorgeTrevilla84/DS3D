using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEditor;
using UnityEngine.UI;
using System;

namespace SpriteShadersUltimate
{
    public class SingleShaderGUI : ShaderGUI
    {
        public static bool enableUtilities;

        //Shader Info:
        ShaderInformation infoAsset;
        string infoAssetName;

        //Other:
        string shaderName; //Name of Shader (ex: Strong Tint)
        string genericShaderPath; //No Type
        int shaderType; //Type (0=Standard,1=URP,2=Lit)

        static int mainTexId;
        static bool hintPropertyID;
        static bool hintTroubleshooting;
        static bool troubleGlowing;
        static bool troublePixelClipping;
        static bool troubleOther;

        Shader standardShader;
        Shader litShader;

        static Shader currentDefaultShader;
        static float[] defaultFloats;
        static Vector4[] defaultVectors;
        static Color[] defaultColors;

        public static bool isDeveloper = false; //Will check for certain consistencies and output Debug.Log() to help me keep variable names clean and stuff. 

        public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
        {
            //Shader Information:
            Material mat = ((Material)materialEditor.target);
            if (infoAsset == null || infoAssetName != mat.shader.name)
            {
                genericShaderPath = mat.shader.name;
                string[] strings = genericShaderPath.Split('/');

                if (strings.Length > 2)
                {
                    genericShaderPath = "";
                    for(int n = 2; n < strings.Length; n++)
                    {
                        genericShaderPath += (n > 2 ? "/" : "") + strings[n];
                    }
                }

                if (CloudProjectSettings.userName != null)
                {
                    isDeveloper = CloudProjectSettings.userName.StartsWith("ekincant");
                }

                //Type:
                shaderType = 0;
                if (genericShaderPath.EndsWith(" Lit"))
                {
                    genericShaderPath = genericShaderPath.Replace(" Lit", "");
                    shaderType = 1;
                }

                string[] splitAgain = genericShaderPath.Split('/');
                shaderName = splitAgain[splitAgain.Length - 1];

                standardShader = Shader.Find("Sprite Shaders Ultimate/Standard/" + genericShaderPath);
                litShader = Shader.Find("Sprite Shaders Ultimate/URP Lit/" + genericShaderPath + " Lit");

                infoAsset = Resources.Load<ShaderInformation>(genericShaderPath);
                infoAssetName = mat.shader.name;
            }

            mainTexId = Shader.PropertyToID("_MainTex");

            //Top:
            EditorGUILayout.BeginVertical("Helpbox");
            GUIStyle style = new GUIStyle(GUI.skin.label);
            style.richText = true;
            EditorGUILayout.BeginHorizontal();
            GUILayout.Label("<size=17><b>" + shaderName + "</b></size>", style);
            GUIStyle tabStyle = new GUIStyle(GUI.skin.button);
            tabStyle.richText = true;

            string standardButton = "Standard";
            if (standardShader == null)
            {
                standardButton = "- - -";
            }

            string litButton = "URP Lit";
            if (litShader == null)
            {
                litButton = "- - -";
            }

            int newShaderType = GUILayout.Toolbar(shaderType, new string[] { standardButton, litButton });
            if(newShaderType != shaderType)
            {
                switch (newShaderType)
                {
                    case (0):
                        if(standardShader != null)
                        {
                            mat.shader = standardShader;
                            EditorUtility.SetDirty(mat);
                        }
                        break;
                    case (1):
                        if (litShader != null)
                        {
                            mat.shader = litShader;
                            EditorUtility.SetDirty(mat);
                        }
                        break;
                }
            }
            EditorGUILayout.EndHorizontal();

            if (infoAsset != null && infoAsset.shaderDescription != null && infoAsset.shaderDescription != "")
            {
                GUI.color = new Color(1, 1, 1, 0.7f);
                string[] descriptionLines = infoAsset.shaderDescription.Split(Environment.NewLine.ToCharArray(), StringSplitOptions.None);
                for (int n = 0; n < descriptionLines.Length; n++)
                {
                    EditorGUILayout.LabelField(descriptionLines[n], style);
                }
                GUI.color = Color.white;
            }
            else
            {
                EditorGUILayout.LabelField("- No information found.", style);
            }

            if(infoAsset != null && infoAsset.requiredComponents != null && infoAsset.requiredComponents.Count > 0 && Selection.gameObjects != null && Selection.gameObjects.Length == 1)
            {
                EditorGUILayout.Space();
                EditorGUILayout.LabelField("<b>Components:</b>", style);
                EditorGUILayout.BeginHorizontal();
                foreach (string comp in infoAsset.requiredComponents)
                {
                    Type type = default;
                    switch(comp)
                    {
                        case ("InteractiveWind"):
                            type = typeof(InteractiveWind);
                            break;
                        case ("InteractiveSquish"):
                            type = typeof(InteractiveSquish);
                            break;
                        case ("BoxCollider2D"):
                            type = typeof(BoxCollider2D);
                            break;
                    }

                    Component component = Selection.activeGameObject.GetComponent(type);
                    if(component == null)
                    {
                        if (GUILayout.Button("Add " + comp))
                        {
                            Component addedComponent = Selection.activeGameObject.AddComponent(type);

                            if (comp == "BoxCollider2D")
                            {
                                BoxCollider2D box = (BoxCollider2D) addedComponent;

                                if (shaderName == "Grass")
                                {
                                    InteractiveWind.DefaultCollider(box);
                                }
                                else
                                {
                                    box.isTrigger = true;
                                }
                            }
                        }
                    }
                    else
                    {
                        GUILayout.Toolbar(0, new string[] { "Add " + comp});
                    }
                }
                EditorGUILayout.EndHorizontal();
            }

            DisplayTroubleshooting();
            DisplayPropertyHint();
            DisplayUtility(materialEditor);

            //Switch to Uber:
            EditorGUILayout.LabelField(" ", GUILayout.Height(1));
            GUI.color = new Color(1, 1, 1, 0.4f);
            EditorGUILayout.BeginVertical(GUI.skin.box);
            GUI.color = Color.white;
            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.LabelField("<size=13><b>Want to stack shaders ?</b></size>", style);
            if(GUILayout.Button("Switch to Uber"))
            {
                Undo.RecordObject(mat, "Switched to Uber Shader.");

                if (shaderName == "Additive")
                {
                    mat.shader = Shader.Find("Sprite Shaders Ultimate/Uber/Additive Uber");
                }
                else if (shaderName == "Multiplicative")
                {
                    mat.shader = Shader.Find("Sprite Shaders Ultimate/Uber/Multiplicative Uber");
                }
                else if (newShaderType == 0)
                {
                    mat.shader = Shader.Find("Sprite Shaders Ultimate/Uber/Standard Uber");
                }
                else
                {
                    mat.shader = Shader.Find("Sprite Shaders Ultimate/Uber/URP Lit Uber");
                }

                EditorUtility.SetDirty(mat);

                if(shaderName != "Default" && shaderName != "Additive" && shaderName != "Multiplicative")
                {
                    string variable = "_Enable" + shaderName.Replace(" ", "");
                    mat.SetFloat(variable, 1f);
                    mat.EnableKeyword(variable.ToUpper() + "_ON");

                    EditorUtility.SetDirty(mat);
                }
            }

            EditorGUILayout.EndHorizontal();
            EditorGUILayout.EndVertical();


            EditorGUILayout.EndVertical();
            EditorGUILayout.Space();

            //Properties:
            DisplayProperties(infoAsset, materialEditor, properties,0);

            DisplayFinalInformation();

            //Dev:
            if (isDeveloper)
            {
                GUI.color = new Color(0.9f,0.92f,1);
                EditorGUILayout.Space();
                EditorGUILayout.LabelField("<b>Developer Mode</b>",style);
                GUI.color = Color.white;
            }
        }

        public static void Lines()
        {
            GUI.color = new Color(1, 1, 1, 0.5f);
            EditorGUILayout.LabelField("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",GUILayout.Height(9));
            GUI.color = new Color(1, 1, 1, 1);
        }

        public static void DisplayProperties(ShaderInformation info, MaterialEditor materialEditor, MaterialProperty[] properties, int startIndex)
        {
            HashSet<string> toggledVariables = new HashSet<string>();

            GUIStyle style = new GUIStyle(GUI.skin.label);
            style.richText = true;

            Material material = (Material)materialEditor.target;
            Shader shader = material.shader;

            if(currentDefaultShader != shader || defaultFloats == null)
            {
                currentDefaultShader = shader;

                int propCount = ShaderUtil.GetPropertyCount(shader);

                defaultFloats = new float[propCount];
                defaultVectors = new Vector4[propCount];
                defaultColors = new Color[propCount];

                Material defaultMaterial = new Material(shader);

                for(int n = 0; n < propCount; n++)
                {
                    string propName = ShaderUtil.GetPropertyName(shader, n);

                    switch (ShaderUtil.GetPropertyType(shader, n))
                    {
                        case (ShaderUtil.ShaderPropertyType.Float):
                            defaultFloats[n] = defaultMaterial.GetFloat(propName);
                            break;
                        case (ShaderUtil.ShaderPropertyType.Range):
                            defaultFloats[n] = defaultMaterial.GetFloat(propName);
                            break;
                        case (ShaderUtil.ShaderPropertyType.Vector):
                            defaultVectors[n] = defaultMaterial.GetVector(propName);
                            break;
                        case (ShaderUtil.ShaderPropertyType.Color):
                            defaultColors[n] = defaultMaterial.GetColor(propName);
                            break;
                        default:
                            break;
                    }
                }
            }

            int verticals = 0;

            for(int n = 0; n < properties.Length; n++)
            {
                MaterialProperty prop = properties[n];

                //Hidden:
                if(prop.name == "_texcoord" || prop.name == "_AlphaTex" || prop.name == "_AlphaCutoff" || prop.name == "_EmissionColor" || prop.name == "_UseUIAlphaClip" || prop.name == "_ColorMask" || prop.name.StartsWith("_Stencil"))
                {
                    continue;
                }

                //Create Display Name:
                GUIContent displayName = new GUIContent();
                displayName.text = prop.displayName;

                if (prop.name == "_Color")
                {
                    displayName.text = "Sprite Color";
                }

                //Remove Prefix:
                string trueName = displayName.text;
                string[] prefixSplit = displayName.text.Split(':');
                if(prefixSplit.Length > 1)
                {
                    if (isDeveloper && info != null)
                    {
                        if(prefixSplit[0] != info.name)
                        {
                            Debug.Log("Expected Name [" + info.name + "]" + " but got [" + prefixSplit[0] + "].");
                        }

                        string propertyBegin = "_" + info.name.Replace(" ", "");
                        if (prop.name.StartsWith(propertyBegin) == false)
                        {
                            Debug.Log("Expected Variable Start [" + propertyBegin + "]" + " but false [" + prop.name + "].");
                        }
                    }

                    displayName.text = trueName = prefixSplit[1].Substring(1);
                }else
                {
                    if (isDeveloper)
                    {
                        if(prop.name != "_MainTex" && prop.name != "_IsText" && prop.name != "PixelSnap" && prop.name != "_UberNoiseTexture" && prop.name != "_Color" && prop.name != "_NormalMap" && prop.name != "_MaskMap" && prop.name != "_NormalIntensity" && prop.name != "_Brightness" && prop.name != "_FullFade" && prop.name != "_Metallic" && prop.name != "_Smoothness" && prop.name != "_SmoothnessMap")
                        {
                            Debug.Log("Property name without shader prefix: [" + prop.name + "] & [" + displayName.text + "].");
                        }
                    }
                }

                //Show If:
                bool denied = false;
                if(info != null && info.showIfs != null)
                {
                    foreach (ShowIfToggled toggle in info.showIfs)
                    {
                        if (trueName == toggle.toggleVariable && prop.floatValue > 0.4f)
                        {
                            toggledVariables.Add(toggle.toggleVariable);
                        }

                        foreach (string displayNames in toggle.shownVariables)
                        {
                            if (displayNames == trueName)
                            {
                                if (toggledVariables.Contains(toggle.toggleVariable) == toggle.reverse)
                                {
                                    denied = true;
                                    continue;
                                }
                            }
                        }
                    }
                }
                if (denied) continue;

                //Title
                string title = GetTitle(trueName, info);

                //Seperation:
                if (verticals == 0 || title != "")
                {
                    if(verticals == 1)
                    {
                        if(startIndex <= 0)
                        {
                            EditorGUILayout.EndVertical();
                            EditorGUILayout.Space();
                        }
                        verticals--;
                    }

                    verticals++;
                    if (startIndex <= 0)
                    {
                        EditorGUILayout.BeginVertical("Helpbox");
                    }
                    else
                    {
                        Lines();
                    }
                }

                if (title != "")
                {
                    if (startIndex <= 0)
                    {
                        EditorGUILayout.LabelField("<b><size=13>" + title + "</size></b>", style);
                    }
                }

                //Specific:
                if (trueName == "Fade")
                {
                    displayName.text = "Fade " + Mathf.RoundToInt(prop.floatValue * 100f) + "%";
                }
                if (prop.name == "_MainTex")
                {
                    displayName.text = "Texture";
                }
                if(trueName == "Full Fade")
                {
                    displayName.text = "Full Fade " + Mathf.RoundToInt(prop.floatValue * 100f) + "%";
                }

                //Min 0:
                if (trueName.EndsWith("ontrast") || trueName.EndsWith("rightness") || trueName.EndsWith("Saturation"))
                {
                    if (prop.floatValue < 0) prop.floatValue = 0;
                    displayName.text = trueName + " " + Mathf.RoundToInt(prop.floatValue * 100f) + "%";
                }
                if (trueName.EndsWith("Width"))
                {
                    if (prop.floatValue < 0) prop.floatValue = 0;
                }

                //Display Property:
                displayName.tooltip = prop.name + "  (C#)";
                EditorGUILayout.BeginHorizontal();

                ShaderUtil.ShaderPropertyType propType = ShaderUtil.ShaderPropertyType.TexEnv;
                if(ShaderUtil.GetPropertyCount(shader) >= properties.Length && prop == properties[n])
                {
                    propType = ShaderUtil.GetPropertyType(shader, n + startIndex);
                }

                //Special Display:
                if (trueName == "Space")
                {
                    EditorGUILayout.PrefixLabel("Space");
                    prop.floatValue = EditorGUILayout.IntPopup((int) (prop.floatValue), new string[] { "UV Space", "Local Space", "World Space" }, new int[] {0,1,2});
                }else if(trueName == "Flip")
                {
                    EditorGUILayout.PrefixLabel("Flip");
                    prop.floatValue = EditorGUILayout.IntPopup((int)(prop.floatValue), new string[] { "Default", "Flipped" }, new int[] { 0, -1});
                }else if(propType == ShaderUtil.ShaderPropertyType.Vector)
                {
                    EditorGUILayout.BeginHorizontal();
                    EditorGUILayout.PrefixLabel(displayName);

                    Vector4 value = prop.vectorValue;
                    float oldWidth = EditorGUIUtility.labelWidth;
                    EditorGUIUtility.labelWidth = 15f;
                    value.x = EditorGUILayout.FloatField(" X", value.x);
                    value.y = EditorGUILayout.FloatField(" Y", value.y);
                    value.z = value.w = 0;
                    EditorGUILayout.EndHorizontal();
                    EditorGUIUtility.labelWidth = oldWidth;

                    prop.vectorValue = value;
                } else if (propType == ShaderUtil.ShaderPropertyType.TexEnv)
                {
                    prop.textureValue = (Texture) EditorGUILayout.ObjectField(displayName, prop.textureValue, typeof(Texture), false);
                }
                else
                {
                    materialEditor.ShaderProperty(prop, displayName);
                }

                #region Reset
                if(propType != ShaderUtil.ShaderPropertyType.TexEnv && trueName.EndsWith("Toggle") == false)
                {
                    GUIContent resetButton = new GUIContent();
                    resetButton.text = "R";
                    resetButton.tooltip = "Resets the property.";

                    if (propType == ShaderUtil.ShaderPropertyType.Vector) //Vector:
                    {
                        Vector4 defaultValue = defaultVectors[n + startIndex];

                        if (prop.vectorValue == defaultValue)
                        {
                            GUI.color = new Color(1, 1, 1, 0.5f);
                            GUILayout.Toolbar(0, new GUIContent[] { resetButton }, GUILayout.Width(20));
                        }
                        else
                        {
                            if (GUILayout.Button(resetButton, GUILayout.Width(20)))
                            {
                                prop.vectorValue = defaultValue;
                            }
                        }
                    }
                    else if (propType == ShaderUtil.ShaderPropertyType.Color) //Color:
                    {
                        Color defaultValue = defaultColors[n + startIndex];

                        if (prop.colorValue == defaultValue)
                        {
                            GUI.color = new Color(1, 1, 1, 0.5f);
                            GUILayout.Toolbar(0, new GUIContent[] { resetButton }, GUILayout.Width(20));
                        }
                        else
                        {
                            if (GUILayout.Button(resetButton, GUILayout.Width(20)))
                            {
                                prop.colorValue = defaultValue;
                            }
                        }
                    }
                    else
                    {
                        float defaultValue = defaultFloats[n + startIndex];

                        if (prop.floatValue == defaultValue)
                        {
                            GUI.color = new Color(1, 1, 1, 0.5f);
                            GUILayout.Toolbar(0, new GUIContent[] { resetButton }, GUILayout.Width(20));
                        }
                        else
                        {
                            if (GUILayout.Button(resetButton, GUILayout.Width(20)))
                            {
                                prop.floatValue = defaultValue;
                            }
                        }
                    }
                }
                GUI.color = new Color(1, 1, 1, 1f);
                #endregion

                EditorGUILayout.EndHorizontal();

                //Information:
                string suffix = GetInformation(trueName, info);
                if(suffix != "" && startIndex <= 0)
                {
                    GUI.color = new Color(1, 1, 1, 0.7f);

                    string[] descriptionLines = suffix.Split(Environment.NewLine.ToCharArray(), StringSplitOptions.None);
                    for (int x = 0; x < descriptionLines.Length; x++)
                    {
                        EditorGUILayout.LabelField(descriptionLines[x], style);
                    }

                    GUI.color = Color.white;
                }
            }

            if (verticals == 1)
            {
                if(startIndex <= 0)
                {
                    EditorGUILayout.EndVertical();
                    EditorGUILayout.Space();
                }
                verticals--;
            }
        }

        public static void DisplayFinalInformation()
        {
            EditorGUILayout.Space();
            GUI.color = new Color(1, 1, 1, EditorGUIUtility.isProSkin ? 1f : 0.4f);
            EditorGUILayout.BeginVertical(GUI.skin.box);

            GUIStyle style = new GUIStyle(GUI.skin.label);
            style.richText = true;
            style.alignment = TextAnchor.MiddleLeft;

            GUI.color = new Color(1, 1, 1, 0.75f);
            EditorGUILayout.LabelField("<b>Got a problem or shader request ?</b>",style);
            EditorGUILayout.BeginHorizontal();
            GUI.color = new Color(1, 1, 1, 0.75f);
            EditorGUILayout.LabelField("<b>Contact Me:</b>",style,GUILayout.Width(80));
            GUI.color = new Color(1, 1, 1, 1);
            EditorGUILayout.SelectableLabel("<b>ekincantascontact@gmail.com</b>", style,GUILayout.Height(16));
            GUI.color = new Color(1, 1, 1, 0.75f);
            EditorGUILayout.EndHorizontal();
            EditorGUILayout.Space();
            EditorGUILayout.LabelField("<b>Thanks for using my asset.</b>",style);
            EditorGUILayout.LabelField("<b>You can support me by leaving a review :)</b>",style);
            EditorGUILayout.EndVertical();
            GUI.color = new Color(1, 1, 1, 1);
        }

        public static string GetInformation(string displayName, ShaderInformation information)
        {
            if (displayName == "Sprite Texture" || displayName == "MainTex")
            {
                return "- Ignore this if you are using a <b>SpriteRenderer</b>.";
            }
            if (displayName == "Fade")
            {
                return "- Fades the shader effect.";
            }
            if (displayName == "Shader Mask")
            {
                return "- Grayscale texture to <b>mask</b> the <b>shader</b> effect.";
            }
            if (displayName == "Space")
            {
                return "<b>UV Space: </b> Position on the sprite's texture.\n" +
                       "<b>Local Space: </b> Relative to gameobject (local position).\n" +
                       "<b>World Space: </b> Position in world space.";
            }
            if(displayName == "Flip")
            {
                return "Flips the shader vertically.";
            }
            if (displayName == "Uber Noise Texture")
            {
                return "- Shared noise texture for various shaders.";
            }
            if (displayName == "Full Fade")
            {
                return "- Fades all shaders.";
            }

            if (information != null && information.suffixInformation != null)
            {
                for (int n = 0; n < information.suffixInformation.Count; n++) {
                    if(information.suffixInformation[n].property == displayName)
                    {
                        return information.suffixInformation[n].information;
                    }
                }
            }

            return "";
        }

        public static string GetTitle(string displayName, ShaderInformation information)
        {
            switch(displayName)
            {
                case ("Sprite Texture"):
                    return "Main Texture";
                case ("MainTex"):
                    return "Main Texture";
                case ("Sprite Color"):
                    return "Bonus";
                case ("Mask Map"):
                    return "Lit Textures";
                case ("Fade"):
                    return "Shader Fading";
                case ("Shader Mask"):
                    return "Shader Masking";
                case ("Space"):
                    return "Shader Space";
                case ("Flip"):
                    return "Shader Flipping";
                case ("Uber Noise Texture"):
                    return "Uber Noise";
                case ("Full Fade"):
                    return "Uber Fading";
                case ("Metallic"):
                    return "3D Lit Settings";
            }

            if (information != null && information.titles != null)
            {
                for(int n = 0; n< information.titles.Count; n++)
                {
                    if(information.titles[n].property == displayName)
                    {
                        return information.titles[n].title;
                    }
                }
            }

            return "";
        }

        public static string GetShaderName(string shaderName)
        {
            string[] strings = shaderName.Split('/');
            if (strings.Length > 1)
            {
                shaderName = strings[strings.Length - 1];
            }

            if (shaderName.EndsWith(" Lit"))
            {
                shaderName = shaderName.Replace(" Lit", "");
            }

            return shaderName;
        }

        public static void DisplayTroubleshooting()
        {
            GUIStyle style = new GUIStyle(GUI.skin.label);
            style.richText = true;

            EditorGUILayout.Space();

            GUI.color = new Color(1, 1, 1, EditorGUIUtility.isProSkin ? 1f : 0.4f);
            EditorGUILayout.BeginVertical(GUI.skin.box);
            GUI.color = Color.white;

            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.LabelField("<size=13><b>Troubleshooting:</b></size>", style);
            if (hintTroubleshooting)
            {
                GUI.color = new Color(1, 1, 1, 0.6f);
            }
            if (GUILayout.Button(hintTroubleshooting ? "Collapse" : "Expand", GUILayout.Width(80)))
            {
                hintTroubleshooting = !hintTroubleshooting;
            }
            GUI.color = Color.white;
            EditorGUILayout.EndHorizontal();

            if (hintTroubleshooting)
            {
                //Glow:
                EditorGUILayout.BeginHorizontal();
                EditorGUILayout.LabelField("- The sprites do not glow properly.");
                if (GUILayout.Button(troubleGlowing ? "Hide" : "Tip", GUILayout.Width(50)))
                {
                    troubleGlowing = !troubleGlowing;
                }
                EditorGUILayout.EndHorizontal();
                if (troubleGlowing)
                {
                    GUI.color = new Color(1, 1, 1, 0.7f);
                    EditorGUILayout.BeginVertical(GUI.skin.box);
                    EditorGUILayout.LabelField("1. You need to enable <b>HDR</b>.",style);
                    EditorGUILayout.LabelField("<b>Standard:</b> Enable HDR in the graphics settings.", style);
                    EditorGUILayout.LabelField("<b>URP:</b> Enable HDR in the universal render pipeline asset.", style);
                    EditorGUILayout.Space();
                    EditorGUILayout.LabelField("2. You need <b>Bloom</b> postprocessing.", style);
                    EditorGUILayout.LabelField("<b>Standard:</b> Get the postprocessing package from the package manager.", style);
                    EditorGUILayout.LabelField("<b>URP:</b> Use the volume component.", style);
                    EditorGUILayout.EndVertical();
                }

                //Clipping:
                EditorGUILayout.BeginHorizontal();
                EditorGUILayout.LabelField("- Pixels clip out as they move.");
                if (GUILayout.Button(troublePixelClipping ? "Hide" : "Tip", GUILayout.Width(50)))
                {
                    troublePixelClipping = !troublePixelClipping;
                }
                EditorGUILayout.EndHorizontal();
                if (troublePixelClipping)
                {
                    GUI.color = new Color(1, 1, 1, 0.7f);
                    EditorGUILayout.BeginVertical(GUI.skin.box);
                    EditorGUILayout.LabelField("Some shaders move pixels on the UV map.", style);
                    EditorGUILayout.LabelField("Those pixels can move out of the sprites mesh.", style);
                    EditorGUILayout.Space();
                    EditorGUILayout.LabelField("1. Set the <b>Mesh Type</b> to <b>Full Rect</b> in the textures import settings.", style);
                    EditorGUILayout.Space();
                    EditorGUILayout.LabelField("2. If <b>step 1.</b> is not enough add empty <b>transparent space</b> to the texture.", style);
                    EditorGUILayout.LabelField("In a larger texture the pixels have more space to move into.", style);
                    EditorGUILayout.EndVertical();
                }

                //Other:
                EditorGUILayout.BeginHorizontal();
                EditorGUILayout.LabelField("- Other issues that you might get.");
                if (GUILayout.Button(troubleOther ? "Hide" : "Tip", GUILayout.Width(50)))
                {
                    troubleOther = !troubleOther;
                }
                EditorGUILayout.EndHorizontal();
                if (troubleOther)
                {
                    GUI.color = new Color(1, 1, 1, 0.7f);
                    EditorGUILayout.BeginVertical(GUI.skin.box);
                    EditorGUILayout.LabelField("<b>1. Some shaders dont work well with sprite sheets.</b>", style);
                    EditorGUILayout.LabelField("Change <b>Shader Space</b> to <b>Local</b> if you have that option.", style);
                    EditorGUILayout.LabelField("Otherwise you may need to export your sprites as seperate texture files.", style);
                    EditorGUILayout.Space();
                    EditorGUILayout.LabelField("<b>2. Some shaders require a transparent edge.</b>", style);
                    EditorGUILayout.LabelField("A tile texture that fills the entire sprite will not work with some shaders.", style);
                    EditorGUILayout.LabelField("Adding a 1 pixel transparent edge can fix the issue.", style);
                    EditorGUILayout.Space();
                    EditorGUILayout.LabelField("<b>3. Some shaders require a unique material instance.</b>", style);
                    EditorGUILayout.LabelField("Change <b>Shader Space</b> from <b>Local</b> to <b>UV</b> if you can.", style);
                    EditorGUILayout.LabelField("Sometimes the issue will only be visible in the editor.", style);
                    EditorGUILayout.LabelField("If you have scripts which change material values at runtime.", style);
                    EditorGUILayout.EndVertical();
                }
            }

            EditorGUILayout.EndVertical();
        }

        //Hint:
        public static void DisplayPropertyHint()
        {
            GUIStyle style = new GUIStyle(GUI.skin.label);
            style.richText = true;

            EditorGUILayout.LabelField(" ", GUILayout.Height(1));

            GUI.color = new Color(1, 1, 1, EditorGUIUtility.isProSkin ? 1f : 0.4f);
            EditorGUILayout.BeginVertical(GUI.skin.box);
            GUI.color = Color.white;

            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.LabelField("<size=13><b>Changing Values at Runtime:</b></size>", style);

            if (hintPropertyID)
            {
                GUI.color = new Color(1, 1, 1, 0.6f);
            }
            if (GUILayout.Button(hintPropertyID ? "Collapse" : "Expand", GUILayout.Width(80)))
            {
                hintPropertyID = !hintPropertyID;
            }
            GUI.color = Color.white;
            EditorGUILayout.EndHorizontal();
            if (hintPropertyID)
            {
                EditorGUILayout.LabelField("Hover over properties to see their <b>internal name</b>.", style);
                EditorGUILayout.LabelField("Save the property id using <b>Shader.PropertyToID(internalName);</b>.", style);
                EditorGUILayout.LabelField("Change values like this: <b>material.SetFloat(propertyID, float);</b>", style);
                EditorGUILayout.LabelField("You can also directly use the <b>internal name</b> but its less performant.", style);
            }

            EditorGUILayout.EndVertical();
        }

        //Utility:
        public static void DisplayUtility(MaterialEditor mat)
        {
            EditorGUILayout.LabelField(" ", GUILayout.Height(1));

            GUI.color = new Color(1, 1, 1, EditorGUIUtility.isProSkin ? 1f : 0.4f);
            EditorGUILayout.BeginVertical(GUI.skin.box);
            GUI.color = Color.white;

            GUIStyle style = new GUIStyle(GUI.skin.label);
            style.richText = true;
            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.LabelField("<size=13><b>Shader Utility:</b></size>", style);

            if (enableUtilities)
            {
                GUI.color = new Color(1, 1, 1, 0.6f);
            }
            if (GUILayout.Button(enableUtilities ? "Collapse" : "Expand", GUILayout.Width(80)))
            {
                enableUtilities = !enableUtilities;
            }
            GUI.color = Color.white;

            EditorGUILayout.EndHorizontal();
            if (enableUtilities)
            {
                string plural = "s";
                if (mat.targets.Length <= 1)
                {
                    plural = "";
                }

                if (GUILayout.Button("Export as PNG"))
                {
                    ExportSprite(mat);
                }

                EditorGUILayout.BeginHorizontal();
                if (GUILayout.Button("Reset Material" + plural))
                {
                    ResetMaterials(mat);
                }
                if (GUILayout.Button("Load Material" + plural))
                {
                    LoadMaterials(mat);
                }
                EditorGUILayout.EndHorizontal();

                EditorGUILayout.BeginHorizontal();
                if (GUILayout.Button("New Clean Material"))
                {
                    CreateMaterial(mat, true);
                }
                if (GUILayout.Button("New Clone Material"))
                {
                    CreateMaterial(mat, false);
                }
                EditorGUILayout.EndHorizontal();
            }

            EditorGUILayout.EndVertical();
        }

        public static void CreateMaterial(MaterialEditor materialEditor, bool clean)
        {
            Material mat = (Material)materialEditor.target;

            if(mat != null)
            {
                //New Material:
                Material newMaterial = clean ? new Material(mat.shader) : new Material(mat);

                //Get Paths:
                string oldPath = AssetDatabase.GetAssetPath(mat);
                if(oldPath == "")
                {
                    oldPath = Application.dataPath + "/";
                }

                string folderPath = "";
                string newPath = oldPath.Replace(".mat", "");
                string[] folders = oldPath.Split('/');
                for (int n = 0; n < folders.Length - 1; n++)
                {
                    folderPath += folders[n] + "/";
                }

                newPath = EditorUtility.SaveFilePanel("Save Texture", folderPath, "New Material", "mat");
                while (newPath.Length > 1 && newPath.StartsWith("Assets") == false)
                {
                    newPath = newPath.Substring(1);
                }

                if (newPath != "")
                {
                    AssetDatabase.CreateAsset(newMaterial, newPath);
                }
            }
        }

        public static void ResetMaterials(MaterialEditor materialEditor)
        {
            Undo.RecordObjects(materialEditor.targets, "Reset Material(s)");

            foreach (Material mat in materialEditor.targets)
            {
                Material newMaterial = new Material(mat.shader);
                mat.CopyPropertiesFromMaterial(newMaterial);
                UnityEngine.Object.DestroyImmediate(newMaterial);
            }
        }

        public static void LoadMaterials(MaterialEditor materialEditor)
        {
            Undo.RecordObjects(materialEditor.targets, "Load Material(s)");

            //Get Paths:
            string oldPath = AssetDatabase.GetAssetPath((Material) materialEditor.target);
            if (oldPath == "")
            {
                oldPath = Application.dataPath + "/";
            }

            string folderPath = "";
            string newPath = oldPath.Replace(".mat", "");
            string[] folders = oldPath.Split('/');
            for (int n = 0; n < folders.Length - 1; n++)
            {
                folderPath += folders[n] + "/";
            }
            newPath = EditorUtility.OpenFilePanel("Save Texture", folderPath, "mat");
            while (newPath.Length > 1 && newPath.StartsWith("Assets") == false)
            {
                newPath = newPath.Substring(1);
            }

            if (newPath != "")
            {
                Material loadMat = AssetDatabase.LoadAssetAtPath<Material>(newPath);

                foreach (Material mat in materialEditor.targets)
                {
                    if (loadMat != null && loadMat != mat)
                    {
                        if(mat.shader != loadMat.shader)
                        {
                            mat.shader = loadMat.shader;
                        }

                        mat.CopyPropertiesFromMaterial(loadMat);
                    }
                }
            }

        }

        public static void ExportSprite(MaterialEditor materialEditor)
        {
            Material material = (Material)materialEditor.target;
            Texture texture = null;
            if (Selection.activeGameObject != null)
            {
                SpriteRenderer sr = Selection.activeGameObject.GetComponent<SpriteRenderer>();
                if(sr != null)
                {
                    texture = sr.sprite.texture;
                }
                else
                {
                    Graphic graphic = Selection.activeGameObject.GetComponent<Graphic>();

                    if(graphic != null)
                    {
                        texture = graphic.mainTexture;
                    }
                }
            }

            if(texture == null)
            {
                texture = material.GetTexture("_MainTex");
            }

            if(material != null && texture != null)
            {
                SaveShadedTexture(material, texture);
            }
            else
            {
                EditorUtility.DisplayDialog("No texture found.", "Select a SpriteRenderer or Image with this material.\nOr assign a main texture to this material.", "Alright");
            }
        }
        public static void SaveShadedTexture(Material spriteMaterial, Texture spriteTexture)
        {
            //Blit to Render Texture:
            RenderTexture rt = new RenderTexture(spriteTexture.width, spriteTexture.height, 0, RenderTextureFormat.ARGB32);
            Graphics.Blit(spriteTexture, rt, spriteMaterial);

            //Read RenderTexture to Texture:
            Texture2D tex = new Texture2D(rt.width, rt.height, TextureFormat.ARGB32, false);
            tex.ReadPixels(new Rect(0, 0, rt.width, rt.height), 0, 0);
            tex.Apply();

            //Get Paths:
            string oldPath = AssetDatabase.GetAssetPath(spriteTexture);
            if (oldPath == "")
            {
                oldPath = Application.dataPath + "/";
            }

            string newPath = oldPath.Replace(".png", "");
            string folderPath = "";
            string[] folders = oldPath.Split('/');
            for (int n = 0; n < folders.Length - 1; n++)
            {
                folderPath += folders[n] + "/";
            }
            string fileName = spriteTexture.name;
            int number = 1;
            while (AssetDatabase.LoadAssetAtPath(newPath + " S" + number + ".png", typeof(Texture)) != null)
            {
                number++;
            }
            newPath = EditorUtility.SaveFilePanel("Save Texture", folderPath, spriteTexture.name + " S" + number, "png");
            while (newPath.Length > 1 && newPath.StartsWith("Assets") == false)
            {
                newPath = newPath.Substring(1);
            }

            //Save Texture:
            byte[] bytes = tex.EncodeToPNG();
            bool newFile = AssetDatabase.LoadAssetAtPath(newPath, typeof(Texture)) == null;
            if (newFile)
            {
                AssetDatabase.CopyAsset(oldPath, newPath);
            }
            System.IO.File.WriteAllBytes(newPath, bytes);
            if (newFile)
            {
                AssetDatabase.ImportAsset(newPath);
            }

            //Import new Texture:
            AssetDatabase.Refresh();

            //Clean Up:
            UnityEngine.Object.DestroyImmediate(tex);

            //Ping:
            EditorGUIUtility.PingObject(AssetDatabase.LoadAssetAtPath(newPath, typeof(Texture)));
        }
    }

    public enum SpaceType
    {
        UV = 0
        ,
        LOCAL = 1
        ,
        WORLD = 2
    }
}
