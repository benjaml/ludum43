using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum prefabs  
    {
        Arbre1,
        Arbre2,
        Arbre3,
        Arbre4,
        Roche1,
        Roche2,
        Roche3,
        Roche4,
        Roche5,
        Roche6,
        Roche7,
        Roche8,
        Roche9,
        cactus1,
        cactus2,
        cactus3,
        grass1,
        grass2,
        grass3,
        grass4,
        tour1,
        tour2,
        tour3,
};
public class Generation : MonoBehaviour {


    float maxTry = 10f;
    public List<prefabs> prefabsToSpawn;
    public List<prefabs> bigPrefabsToSpawn;
    [Header("Debug")]
    public float nbElement = 0;
    [Header("Prefabs")]
    public GameObject treePrefab1;
    public GameObject treePrefab2;
    public GameObject treePrefab3;
    public GameObject treePrefab4;
    public GameObject rockPrefab1;
    public GameObject rockPrefab2;
    public GameObject rockPrefab3;
    public GameObject rockPrefab4;
    public GameObject rockPrefab5;
    public GameObject rockPrefab6;
    public GameObject rockPrefab7;
    public GameObject rockPrefab8;
    public GameObject rockPrefab9;
    public GameObject cactusPrefab1;
    public GameObject cactusPrefab2;
    public GameObject cactusPrefab3;
    public GameObject grassPrefab1;
    public GameObject grassPrefab2;
    public GameObject grassPrefab3;
    public GameObject grassPrefab4;
    public GameObject tourPrefab1;
    public GameObject tourPrefab2;
    public GameObject tourPrefab3;

    // private
    Vector3 directionSpawn;
    planeteScript planete;
    Collider[] colliders;
    Vector3 testPosition;
    float radius = 1f;


    // Use this for initialization
    void Start () {
        planete = GetComponent<planeteScript>();
        InvokeRepeating("generate", 0,0.05f);
        InvokeRepeating("generateBig", 20f, 10f);
    }
	void Update()
    {
        if (nbElement > 5000)
            stopGenerate();
        /*else if(GetComponent<planeteScript>().gr)
        {
            InvokeRepeating("generate", 0, 0.05f);
            InvokeRepeating("generateBig", 20f, 10f);
        }*/
    }

    void generate()
    {
        prefabs tmp = prefabsToSpawn[Random.Range(0, prefabsToSpawn.Count)];
        generate(tmp);
    }
    void generateBig()
    {
        prefabs tmp = bigPrefabsToSpawn[Random.Range(0, bigPrefabsToSpawn.Count)];
        generate(tmp);
    }

    void generate(prefabs prefabType)
    {
        GameObject pref = null;
        bool once = false; 
        bool overide = false;
        bool bigBoys = false;
        switch (prefabType)
        {
            case prefabs.Arbre1:
                pref = treePrefab1;
                radius = 1f;
                break;
            case prefabs.Arbre2:
                pref = treePrefab2;
                radius = 1f;
                break;
            case prefabs.Arbre3:
                pref = treePrefab3;
                radius = 1f;
                break;
            case prefabs.Arbre4:
                pref = treePrefab4;
                radius = 1f;
                break;
            case prefabs.Roche1:
                pref = rockPrefab1;
                overide = true;
                once = true;
                radius = 1f;
                break;
            case prefabs.Roche2:
                pref = rockPrefab2;
                once = true;
                radius = 3f;
                overide = true;
                break;
            case prefabs.Roche3:
                pref = rockPrefab3;
                once = true;
                radius = 1f;
                overide = true;
                break;
            case prefabs.Roche4:
                pref = rockPrefab4;
                radius = 1f;
                once = true;
                overide = true;
                break;
            case prefabs.Roche5:
                pref = rockPrefab5;
                radius = 1f;
                once = true;
                overide = true;
                break;
            case prefabs.Roche6:
                pref = rockPrefab6;
                once = true;
                radius = 1f;
                overide = true;
                break;
            case prefabs.Roche7:
                pref = rockPrefab7;
                once = true;
                overide = true;
                radius = 1f;
                break;
            case prefabs.Roche8:
                pref = rockPrefab8;
                radius = 1f;
                once = true;
                overide = true;
                break;
            case prefabs.Roche9:
                pref = rockPrefab9;
                once = true;
                radius = 3f;
                break;
            case prefabs.cactus1:
                pref = cactusPrefab1;
                radius = 1f;
                once = true;
                break;
            case prefabs.cactus2:
                pref = cactusPrefab2;
                radius = 1f;
                once = true;
                break;
            case prefabs.cactus3:
                pref = cactusPrefab3;
                radius = 1f;
                once = true;
                break;
            case prefabs.grass1:
                pref = grassPrefab1;
                radius = 0.1f;
                break;
            case prefabs.grass2:
                pref = grassPrefab2;
                radius = 0.1f;
                break;
            case prefabs.grass3:
                pref = grassPrefab3;
                radius = 0.1f;
                break;
            case prefabs.grass4:
                pref = grassPrefab4;
                radius = 0.1f;
                break;
            case prefabs.tour1:
                pref = tourPrefab1;
                radius = 3f;
                once = true;
                bigBoys = true;
                break;
            case prefabs.tour2:
                pref = tourPrefab2;
                radius = 5f;
                once = true;
                bigBoys = true;
                break;
            case prefabs.tour3:
                pref = tourPrefab3;
                radius = 6f;
                once = true;
                bigBoys = true;
                break;
        }

        for(int test = 0;test< maxTry;++test)
        {
            directionSpawn = new Vector3(Random.Range(-1f, 1f), Random.Range(-1f, 1f), Random.Range(-1f, 1f));
            directionSpawn.Normalize();
            testPosition = transform.position + (directionSpawn * ((planete.radius) / 2f));
            colliders = Physics.OverlapSphere(testPosition, radius);
            if (colliders.Length > 0)
            {
                if (bigBoys && !isPlayerIn(colliders))
                {
                    foreach (Collider col in colliders)
                    {
                        --nbElement;
                        Destroy(col.gameObject);
                    }
                }
                else
                {
                    if (!overide)
                        continue;
                    else if (!canDestroy(colliders))
                        continue;
                    else
                    {
                        foreach (Collider col in colliders)
                        {
                            --nbElement;
                            Destroy(col.gameObject);
                        }
                    }
                }
            }

            GameObject instance = Instantiate(pref, -testPosition, Quaternion.identity) as GameObject;
            instance.GetComponent<element>().positionFromThePlanet = directionSpawn;
            instance.transform.parent = transform.parent;
            ++nbElement;
            if (once)
                return;
        }
    }

    public bool canDestroy(Collider[] cols)
    {
        foreach (Collider col in cols)
        {
            if (col.transform.tag != "fleur")
                return false;
        }
        return true;
    }

    public bool isPlayerIn(Collider[] cols)
    {
        foreach (Collider col in cols)
        {
            if (col.transform.tag == "Player" || col.transform.tag == "ship")
                return true;
        }
        return false;
    }
    public void stopGenerate()
    {
        CancelInvoke("generate");
        CancelInvoke("generateBig");
    }
}
