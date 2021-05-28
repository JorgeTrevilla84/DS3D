using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SpriteShadersUltimate
{
    public class WindManager : MonoBehaviour
    {
        [Header("Settings:")]

        [Tooltip("Smaller values will result in more frequent changes in wind.")]
        public Vector2 windNoiseScale = new Vector2(0.1f, 0);
        private Vector2 lastWindNoiseScale;

        [Tooltip("Speed at which the wind pattern moves horizontally.\nDoes not change wind intensity.")]
        public Vector2 windNoiseSpeed = new Vector2(2, 0);
        private Vector2 lastWindNoiseSpeed;

        [Tooltip("The wind intensity will be between this value and 'Wind Intensity To'.")]
        public float windIntensityFrom = -0.5f;
        private float lastWindIntensityFrom;

        [Tooltip("The wind intensity will be between this value and 'Wind Intensity From'.")]
        public float windIntensityTo = 0.5f;
        private float lastWindIntensityTo;

        //Will update global shader variables as changes are made.
        void FixedUpdate()
        {
            ModifyIfChanged(ref windNoiseScale,ref lastWindNoiseScale, "WindNoiseScale");
            ModifyIfChanged(ref windNoiseSpeed, ref lastWindNoiseSpeed, "WindNoiseSpeed");
            ModifyIfChanged(ref windIntensityFrom, ref lastWindIntensityFrom, "WindMinIntensity");
            ModifyIfChanged(ref windIntensityTo, ref lastWindIntensityTo, "WindMaxIntensity");
        }

        //Modifies the global shader value on change.
        public void ModifyIfChanged(ref float currentValue, ref float oldValue, string globalShaderName)
        {
            if(oldValue != currentValue)
            {
                oldValue = currentValue;
                Shader.SetGlobalFloat(globalShaderName, currentValue);
            }
        }

        public void ModifyIfChanged(ref Vector2 currentValue, ref Vector2 oldValue, string globalShaderName)
        {
            if (oldValue != currentValue)
            {
                oldValue = currentValue;
                Shader.SetGlobalVector(globalShaderName, currentValue);
            }
        }
    }
}