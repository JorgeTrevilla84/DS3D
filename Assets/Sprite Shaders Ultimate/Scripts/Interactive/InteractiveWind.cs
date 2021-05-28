using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SpriteShadersUltimate
{
    public class InteractiveWind : MonoBehaviour
    {
        [Header("Settings:")]
        public float rotationFactor = 1f;
        public float bendInSpeed = 5f;
        public float bendOutSpeed = 2f;

        //Variables:
        Material mat;
        List<Collider2D> collidersInside;
        BoxCollider2D boxCollider;

        //Runtime:
        float currentBending;
        float currentRotationDirection;
        bool isActive;
        bool newDirection;

        int rotationId;

        void Start()
        {
            //Initialize Variables:
            collidersInside = new List<Collider2D>();
            boxCollider = GetComponent<BoxCollider2D>();
            mat = GetComponent<SpriteRenderer>().material;

            rotationId = Shader.PropertyToID("_WindRotation");
        }

        void FixedUpdate()
        {
            if (isActive == false) return;

            Vector2 localPosition = new Vector2(0, -1000000);

            foreach(Collider2D collider in collidersInside)
            {
                if(collider != null)
                {
                    if(localPosition.y < -99999)
                    {
                        localPosition = collider.bounds.center - transform.position; //Collider Position
                    }
                    else
                    {
                        if (!newDirection) {
                            Vector2 newLocalPosition = (collider.bounds.center - transform.position);
                            if((currentRotationDirection < 0 && newLocalPosition.x > localPosition.x) || (currentRotationDirection > 0 && newLocalPosition.x < localPosition.x))
                            {
                                localPosition = newLocalPosition;  //Take most heavy position
                            }
                        }
                        else
                        {
                            localPosition = ((Vector2)(collider.bounds.center - transform.position) + localPosition) * 0.5f; //Position Deviation (multiple colliders)
                        }
                    }
                }
            }

            if (localPosition.y > -99999) //Colliders are interacting with the wind sprite.
            {
                //Bend Direction:
                if (newDirection)
                {
                    if(localPosition.x < 0)
                    {
                        currentRotationDirection = -1;
                    }else
                    {
                        currentRotationDirection = 1;
                    }

                    newDirection = false;
                }

                //Bend Target:
                float targetBending = 0;
                if(currentRotationDirection < 0)
                {
                    targetBending = Mathf.Clamp01((localPosition.x + boxCollider.size.x * 0.5f) / boxCollider.size.x);
                }
                else
                {
                    targetBending = Mathf.Clamp01((boxCollider.size.x * 0.5f - localPosition.x) / boxCollider.size.x);
                }

                //Fade In Bending:
                currentBending += (targetBending * currentRotationDirection - currentBending) * Mathf.Min(bendInSpeed * Time.fixedDeltaTime, 1);
                UpdateShader();
            }
            else
            {
                //Fade Out Bending:
                currentBending -= currentBending * Mathf.Min(bendOutSpeed * Time.fixedDeltaTime,1);
                UpdateShader();

                if (Mathf.Abs(currentBending) < 0.01f)
                {
                    isActive = false;
                }
            }
        }

        public void UpdateShader()
        {
            mat.SetFloat(rotationId, -1f * currentBending * rotationFactor);
        }

        void OnTriggerEnter2D(Collider2D collision)
        {
            if(collidersInside.Count == 0 || Mathf.Abs(currentBending) < 0.2f)
            {
                newDirection = true;
            }

            collidersInside.Add(collision);
            isActive = true;
        }
        void OnTriggerExit2D(Collider2D collision)
        {
            if (collidersInside.Contains(collision))
            {
                collidersInside.Remove(collision);
            }
        }

        //Other:
        public static void DefaultCollider(BoxCollider2D box)
        {
            box.isTrigger = true;
            box.size = new Vector2(2, 1);
            box.offset = new Vector2(0, -0.5f);
        }
    }
}