import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class MessageScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var arrContent = [
    {
      "img": "Profile Photo.png",
      "name": "joshua_l",
      "lastmsg": "Have a nice day,bro!"
    },
    {
      "img": "Profile Photo (1).png",
      "name": "karennne",
      "lastmsg": "I heard this is a good movie, s…"
    },
    {
      "img": "Profile Photo (2).png",
      "name": "martini_rond",
      "lastmsg": "See you on the next meeting!"
    },
    {
      "img": "Profile Photo (3).png",
      "name": "andrewww_",
      "lastmsg": "Sounds good 😂😂😂"
    },
    {
      "img": "Profile Photo (4).png",
      "name": "kiero_d",
      "lastmsg": "The new design looks cool, b…"
    },
    {
      "img": "Profile Photo (5).png",
      "name": "maxjacobson",
      "lastmsg": "Thank you, bro!"
    },
    {
      "img": "Profile Photo (6).png",
      "name": "jamie.franco",
      "lastmsg": "Yeap, I'm going to travel in To…"
    },
    {
      "img": "Profile Photo (7).png",
      "name": "m_humphrey",
      "lastmsg": "Instagram UI is pretty good"
    },
    {
      "img": "Profile Photo.png",
      "name": "joshua_l",
      "lastmsg": "Have a nice day,bro!"
    },
    {
      "img": "Profile Photo (1).png",
      "name": "karennne",
      "lastmsg": "I heard this is a good movie, s…"
    },
    {
      "img": "Profile Photo (2).png",
      "name": "martini_rond",
      "lastmsg": "See you on the next meeting!"
    },
    {
      "img": "Profile Photo (3).png",
      "name": "andrewww_",
      "lastmsg": "Sounds good 😂😂😂"
    },
    {
      "img": "Profile Photo (4).png",
      "name": "kiero_d",
      "lastmsg": "The new design looks cool, b…"
    },
    {
      "img": "Profile Photo (5).png",
      "name": "maxjacobson",
      "lastmsg": "Thank you, bro!"
    },
    {
      "img": "Profile Photo (6).png",
      "name": "jamie.franco",
      "lastmsg": "Yeap, I'm going to travel in To…"
    },
    {
      "img": "Profile Photo (7).png",
      "name": "m_humphrey",
      "lastmsg": "Instagram UI is pretty good"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        leading:
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.back)),
        title: Text(
          "Sujal_dave",
          style: TextStyle(
            fontSize: 16,
            color: Color(0XFFF9F9F9),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white, size: 28),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Container(
                height: 40,
                width: 347,
                decoration: BoxDecoration(
                  color: Color(0XFF262626),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color(0XFF8E8E93),
                      ),
                      prefixIcon: UiHelper.CustomImage(
                          imgurl: "Search Icon.png"),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/${arrContent[index]["img"].toString()}",
                    ),
                  ),
                  title: Text(
                    arrContent[index]["name"].toString(),
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    arrContent[index]["lastmsg"].toString(),
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  trailing: UiHelper.CustomImage(imgurl: "Picture.png"),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XFF121212),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: UiHelper.CustomImage(imgurl: "camera(1).png"),
              ),
              SizedBox(width: 5),
              Text(
                "Camera",
                style: TextStyle(fontSize: 13, color: Color(0XFF3897F0)),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: Colors.black,
    );
  }
}
