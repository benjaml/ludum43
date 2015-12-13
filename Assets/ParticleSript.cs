using UnityEngine;
using System.Collections;

public class ParticleSript : MonoBehaviour {

    ParticleSystem partSys;

	// Use this for initialization
	void Start () {
        partSys = GetComponent<ParticleSystem>();
	}
	
	// Update is called once per frame
	void Update () {
        ParticleSystem.Particle[] myArray = new ParticleSystem.Particle[256];
        int count = partSys.GetParticles(myArray);

        for(int i = 0; i < count; i++)
        {
            myArray[i].axisOfRotation = Vector3.up;
        }
	}
}
