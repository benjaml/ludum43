using UnityEngine;
using System.Collections;

public class orbitPlanete : MonoBehaviour
{
    public float rotationSpeed = 120.0f;
    public float translationSpeed = 10.0f;
    public float height = 2.0f;             //height from ground level
    private Transform centre;               //transform for planet
    private float radius;                   //calculated radius from collider
    public SphereCollider planet;           //collider for planet
    public CharacterController controller;
    Collider[] colliders;

    void Start()
    {
        //consider scale applied to planet transform (assuming uniform, just pick one)
        radius = planet.radius * planet.transform.localScale.y;
        centre = planet.transform;
        //starting position at north pole
        transform.position = centre.position + new Vector3(0, radius + height, 0);
        controller = GetComponent<CharacterController>();

    }

    void Update()
    {
        radius = planet.radius * planet.transform.localScale.y;
        //translate based on input     
        float inputMag = Input.GetAxis("Vertical") * translationSpeed * Time.deltaTime;
        Vector3 move = transform.forward * inputMag;
        float inputMag2 = Input.GetAxis("Horizontal") * translationSpeed * Time.deltaTime;
        move += transform.right * inputMag2;
        controller.Move(move);
        //snap position to radius + height (could also use raycasts)
        Vector3 targetPosition = transform.position - centre.position;
        float ratio = (radius + height) / targetPosition.magnitude;
        targetPosition.Scale(new Vector3(ratio, ratio, ratio));
        transform.position = targetPosition + centre.position;
        //calculate planet surface normal                      
        Vector3 surfaceNormal = transform.position - centre.position;
        surfaceNormal.Normalize();
        //GameObject's heading
        float headingDeltaAngle = Input.GetAxis("Mouse X") * Time.deltaTime * rotationSpeed;
        Quaternion headingDelta = Quaternion.AngleAxis(headingDeltaAngle, transform.up);
        //align with surface normal
        transform.rotation = Quaternion.FromToRotation(transform.up, surfaceNormal) * transform.rotation;
        //apply heading rotation
        transform.rotation = headingDelta * transform.rotation;
        colliders = Physics.OverlapSphere(transform.position, radius);
        foreach (Collider col in colliders)
            if (col.GetComponent<element>())
                col.GetComponent<element>().updatePosition();
    }
    
}
