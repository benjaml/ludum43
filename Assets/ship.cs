using UnityEngine;
using System.Collections;

public class ship : MonoBehaviour {

    bool canActivate;
    public GameObject image;

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Player")
        {
            canActivate = true;
            image.SetActive(true);
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player")
        {
            canActivate = false;
            image.SetActive(false);
        }
    }
    void Update()
    {
        if (canActivate && Input.GetKeyDown(KeyCode.E))
            Application.LoadLevel("Win");
    }
}
