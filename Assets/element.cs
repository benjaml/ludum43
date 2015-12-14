using UnityEngine;
using System.Collections;

public class element : MonoBehaviour {

    private planeteScript planete;
    public Vector3 positionFromThePlanet;
    // Use this for initialization
    void Start () {
        planete = GameObject.FindGameObjectWithTag("planete").GetComponent<planeteScript>();
        positionFromThePlanet = planete.transform.position - transform.position;
        positionFromThePlanet.Normalize();
        positionFromThePlanet = -positionFromThePlanet;
        InvokeRepeating("updatePosition", 1f, 3f);
        Destroy(GetComponent<)
	}
	
	// Update is called once per frame
	public void updatePosition () {
        if (planete == null)
            planete = GameObject.FindGameObjectWithTag("planete").GetComponent<planeteScript>();
        transform.position = planete.transform.position + (positionFromThePlanet * (planete.radius)/2f);
        Vector3 surfaceNormal = transform.position - planete.transform.position;
        surfaceNormal.Normalize();
        transform.rotation = Quaternion.FromToRotation(transform.up, surfaceNormal) * transform.rotation;
    }
}
