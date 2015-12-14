using UnityEngine;
using System.Collections;

public class leaveText : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        GetComponent<RectTransform>().sizeDelta = new Vector2(Screen.height / 4f, Screen.width);
	}
}
