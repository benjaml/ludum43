using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {
    public float speed = 6.0F;
    public float jumpSpeed = 8.0F;
    public float gravity = 20.0F;
    public GameObject planete;
    public Vector3 gravityDirection;
    private Vector3 moveDirection = Vector3.zero;
    public bool isGrounded = false;
    public float curDir =0.0f;
    public float mouseSensibility = 20f;
    float rotationY = 0f;
    private float minimumY = -45f;
    private float maximumY = 45f;

    void Update()
    {
        Vector3 nextRotCamera = transform.GetChild(0).eulerAngles + new Vector3(-Input.GetAxis("Mouse Y") * mouseSensibility, Input.GetAxis("Mouse X") * mouseSensibility, 0);
        transform.GetChild(0).eulerAngles = nextRotCamera;
        
        float tmpGrav = gravity;
        CharacterController controller = GetComponent<CharacterController>();
        gravityDirection = planete.transform.position - transform.position;
        gravityDirection.Normalize();
        if (isGrounded)
        {
            moveDirection = Input.GetAxis("Vertical") * transform.GetChild(0).forward;
            //Vector3 rightDirection = Input.GetAxis("Vertical") * transform.GetChild(0).right;
            //moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
            //moveDirection = forwardDirection + rightDirection;
            moveDirection *= speed;
            tmpGrav *= 0.1f;
            if (Input.GetButton("Jump"))
                moveDirection = jumpSpeed*-gravityDirection;

        }
        moveDirection += tmpGrav * Time.deltaTime* gravityDirection;
        transform.position+= (moveDirection * Time.deltaTime);

    }
    void FixedUpdate()
    {
        RaycastHit hit;
        if (Physics.Raycast(transform.position, -transform.up, out hit))
        {
            transform.rotation = Quaternion.FromToRotation(transform.up, hit.normal) * transform.rotation;
        }
    }
    void OnCollisionEnter(Collision col)
    {
        if(col.transform.tag == "floor")
            isGrounded = true;
    }

    void OnCollisionExit(Collision col)
    {
        if (col.transform.tag == "floor")
            isGrounded = false;
    }
    
}
