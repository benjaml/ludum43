using UnityEngine;
using System.Collections;

public class ParticleElevationScript : MonoBehaviour {

    public Rigidbody Object;
    public float liftspeed = 0.01f;
    public float angularspeed = 0.1f;
    public float ApparitionDelay = 2.0f;
    public float radius = 5f;

    public float maxHeight = 100f;

    Rigidbody[] ObjectArray; 
    int count = 0;

    float ElapsedTime;

	// Use this for initialization
	void Start () {
        ElapsedTime = Time.time;
        ObjectArray = new Rigidbody[64];
	}
	
	// Update is called once per frame
	void Update () {
	    if (Time.time - ElapsedTime >= ApparitionDelay && count <= 64)
        {
            ElapsedTime = Time.time;
            CreateMesh();
        }
        for(int i = 0; i < count; i++)
        {
            if(ObjectArray[i].position.y > maxHeight)
            {
                Vector3 tempPos = new Vector3(
                transform.position.x + radius * Mathf.Cos(angularspeed * Time.time - i*ApparitionDelay),
                transform.position.y,
                transform.position.z + radius * Mathf.Sin(angularspeed * Time.time - i*ApparitionDelay)
                );

                ObjectArray[i].position = tempPos;
            }
            else
            {
                Vector3 tempPos = new Vector3(
                transform.position.x + radius * Mathf.Cos(angularspeed * Time.time - i * ApparitionDelay),
                ObjectArray[i].position.y + liftspeed,
                transform.position.z + radius * Mathf.Sin(angularspeed * Time.time - i * ApparitionDelay)
                );

                ObjectArray[i].position = tempPos;
            }
              
        }
	}

    void CreateMesh()
    {
        ObjectArray[count] = (Rigidbody)Instantiate(Object, transform.position, transform.rotation);
        ObjectArray[count].velocity = Vector3.up * liftspeed;

        ObjectArray[count].rotation = Quaternion.Euler(-90,0,0);
        ObjectArray[count].transform.SetParent(this.transform);


        count++;
    }
}
