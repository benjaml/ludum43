using UnityEngine;
using System.Collections;

public class planeteScript : MonoBehaviour {

    public float radius;
    public float maxSize;
    public bool grow = true; 
	// Use this for initialization
	void Start () {
        radius = transform.localScale.x;
    }
	
	// Update is called once per frame
	void Update () {

        radius = transform.localScale.x;
        if(grow)
            transform.localScale += transform.localScale * Time.deltaTime*0.02f;
        else
            transform.localScale -= transform.localScale * Time.deltaTime * 0.05f;
        if (transform.localScale.x > maxSize)
        {
            grow = false;
            GetComponent<Generation>().stopGenerate();
        }
        if (!grow && radius < 5f)
            Application.LoadLevel("Lose");
	}
}
