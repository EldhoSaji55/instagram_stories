import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewHome(),
    );
  }
}

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    List myDataList = [
      {
        "name": "Eldho_saji",
        "dp":
            "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/3156482/pexels-photo-3156482.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
      {
        "name": "Jane_Doe",
        "dp":
            "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/169573/pexels-photo-169573.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
      {
        "name": "John_Smith",
        "dp":
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
      {
        "name": "Alice_Johnson",
        "dp":
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/610294/pexels-photo-610294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
      {
        "name": "Robert_Williams",
        "dp":
            "https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/730308/pexels-photo-730308.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      }
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: PageView.builder(
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(myDataList[index]["bg"]))),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey,
                  thickness: 3,
                ),
                ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myDataList[index]["dp"]),
                      radius: 25,
                    ),
                    title: Row(
                      children: [
                        Text(
                          myDataList[index]["name"],
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "2m",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    subtitle: Text(
                      "Unknown Artist >",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Send message",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 1.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Transform.rotate(
                      angle: 320 * math.pi / 180,
                      child: Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          itemCount: myDataList.length,
        ),
      ),
    );
  }
}
