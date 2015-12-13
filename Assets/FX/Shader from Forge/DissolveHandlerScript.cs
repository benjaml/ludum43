using UnityEngine;
using System.Collections;

public class DissolveHandlerScript : MonoBehaviour {

    Renderer rend;
    public float speedFactor = 1;
    float Hand = -0.5f;

    CapsuleCollider capCollider;
    Transform playerTransform;

    bool go = false;
    bool stateUp = false;
    float step = 0.5f;

	// Use this for initialization
	void Start () {
        rend = GetComponent<Renderer>();
        capCollider = GetComponent<CapsuleCollider>();
	}
	
	// Update is called once per frame
	void Update () {
        if (go)
        {

            if (stateUp)
            {
                Hand = Mathf.Clamp(Hand - Time.deltaTime*speedFactor*(Mathf.Pow(2*capCollider.radius/ Vector3.Distance(transform.position, playerTransform.position),2)), -0.5f, 1.5f);
            }   
            else
            {
                Hand = Mathf.Clamp(Hand + Time.deltaTime*speedFactor, -0.5f, 1.5f);
            }
            rend.material.SetFloat("_DissolveAmount", Hand);
            Debug.Log(Hand);

            if(stateUp && Hand <= -0.5f)
            {
                go = false;
            }
            else if (!stateUp && Hand >= 1.5f)
            {
                go = false;
            }
        }
	}

    void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            stateUp = true;
            go = true;

            playerTransform = other.transform;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            stateUp = false;
            go = true;
        }
    }
}
