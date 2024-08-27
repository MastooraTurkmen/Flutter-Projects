import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.green.shade600,
                    Colors.green.shade300,
                    Colors.green,
                  ]),
            ),
            height: MediaQuery.sizeOf(context).height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('images/cat-with-flowers.jpeg'),
                        radius: 70,
                      ),
                    ),
                    Text('Mastoora Turkmen',
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                    Text('Pull Stack Developer',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('Photos',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        Text('180',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Followers',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        Text('1534',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Following',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        Text('250',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                      children: [
                        Text('About',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2,
                          child: Divider(
                            height: 2,
                            thickness: 2,
                            color: Colors.green.shade900,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text('Posts',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2,
                          child: Divider(
                            height: 2,
                            thickness: 2,
                            color: Colors.transparent,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.phone_android,
                          color: Colors.green,
                          size: 30,
                        ),
                        title: Text('Mobile'),
                        subtitle: Text('+93 77 644 10950'),
                        titleTextStyle:
                            TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 30,
                        ),
                        title: Text('Work'),
                        subtitle: Text('+93 77 644 10095'),
                        titleTextStyle:
                            TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.green,
                          size: 30,
                        ),
                        title: Text('Email'),
                        subtitle: Text('mastooraturk@gmail.com'),
                        titleTextStyle:
                            TextStyle(color: Colors.green, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Status'),
                        subtitle: Text('Available'),
                        titleTextStyle:
                            TextStyle(color: Colors.green, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
