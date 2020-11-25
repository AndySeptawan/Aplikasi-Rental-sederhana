import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('My Profil'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.lightBlueAccent,
            child: Stack(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 40),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(image: AssetImage('images/andy.jpg'),
                      fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text('I Ketut Andy Septawan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('1815091059',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.amber.withOpacity(0.8)
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, right: 50, left: 50),
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.home, color: Colors.grey, size: 58),
                          Text('Banyuning', style: TextStyle(color: Colors.black45,
                          fontWeight: FontWeight.bold
                          ),
                          ),
                        ],
                      ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.phone_android, color: Colors.grey, size: 58),
                            Text('My Wa', style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
