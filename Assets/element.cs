using UnityEngine;
using System.Collections;

public class element : MonoBehaviour {

    private planeteScript planete;
    public Vector3 positionFromThePlanet;

    public GameObject player;
    // Use this for initialization
    void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        planete = GameObject.FindGameObjectWithTag("planete").GetComponent<planeteScript>();
        positionFromThePlanet = planete.transform.position - transform.position;
        positionFromThePlanet.Normalize();
        positionFromThePlanet = -positionFromThePlanet;
        transform.position = planete.transform.position + (positionFromThePlanet * (planete.radius) / 2f);
        InvokeRepeating("updatePosition", 1f, 3f);
        Destroy(GetComponent<Animator>(), 1.2f);
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

    void Update()
    {
        if (Vector3.Distance(transform.position, player.transform.position) < (planete.radius / 3f))
            updatePosition();
    }
}
