using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.IO;
using System.Net.Sockets;

public class Network : MonoBehaviour {

    //https://answers.unity.com/questions/15422/unity-project-and-3rd-party-apps.html?childToView=15477#answer-15477
    internal Boolean socketReady = false;
    TcpClient mySocket;
    NetworkStream theStream;
    StreamWriter theWriter;
    StreamReader theReader;
    String Host = "127.0.0.1";
    Int32 Port = 8082;

    void Start() {



        //DontDestroyOnLoad(this.gameObject);
        //setupSocket();
        //StartCoroutine(TimerClose());
    }

    void Update() {

    }

    IEnumerator TimerClose() {
        yield return new WaitForSeconds(5);
        closeSocket();
    }

    // **********************************************
    public void setupSocket() {
        try {
            mySocket = new TcpClient(Host, Port);
            theStream = mySocket.GetStream();
            theWriter = new StreamWriter(theStream);
            theReader = new StreamReader(theStream);
            socketReady = true;
        } catch (Exception e) {
            Debug.Log("Socket error: " + e);
        }
    }
    public void writeSocket(string theLine) {
        if (!socketReady)
            return;
        String foo = theLine + "\r\n";
        theWriter.Write(foo);
        theWriter.Flush();
    }
    public String readSocket() {
        if (!socketReady)
            return "";
        if (theStream.DataAvailable)
            return theReader.ReadLine();
        return "";
    }
    public void closeSocket() {
        if (!socketReady)
            return;
        //theWriter.Close();
        //theReader.Close();
        //mySocket.Client.Disconnect(false);
        //mySocket.Close();
        socketReady = false;

        using (TcpClient tcpClient = new TcpClient()) {
            if (tcpClient != null) {
                tcpClient.GetStream().Close();
                tcpClient.Close();
                //tcpClient = null;
            }
        }
    }
}
