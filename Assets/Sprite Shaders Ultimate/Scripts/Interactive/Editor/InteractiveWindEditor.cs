using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace SpriteShadersUltimate
{
    [CustomEditor(typeof(InteractiveWind)), CanEditMultipleObjects]
    public class InteractiveWindEditor : Editor
    {
        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();

            InteractiveWind wind = (InteractiveWind)target;

            GUIStyle style = new GUIStyle();
            style.richText = true;

            EditorGUILayout.Space();
            EditorGUILayout.BeginVertical("Helpbox");
            EditorGUILayout.LabelField("<b>Requirements:</b>", style);
            EditorGUILayout.LabelField("- <b>SpriteRenderer</b> with the <b>Wind</b> shader.", style);
            EditorGUILayout.LabelField("- <b>BoxCollider2D</b> that is a <b>trigger</b>.", style);
            EditorGUILayout.LabelField("- Layer set to <b>Ignore Raycast</b>.", style);
            EditorGUILayout.EndVertical();

            EditorGUILayout.Space();
            EditorGUILayout.BeginVertical("Helpbox");
            EditorGUILayout.LabelField("<b>Information:</b>", style);
            EditorGUILayout.LabelField("You need a <b>WindManager</b> component in your scene.", style);
            EditorGUILayout.LabelField("Wind is handled completely by the shader.", style);
            EditorGUILayout.LabelField("Collision will be detected and used to squish and bend the sprite.", style);
            EditorGUILayout.EndVertical();

            //Fixes:
            wind.gameObject.layer = 2;
        }
    }
}