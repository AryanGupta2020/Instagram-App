import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Messages/messagescreen.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  var arrContent = [
    {
      "img":
          "https://images.unsplash.com/photo-1560674457-12073ed6fae6?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FtfGVufDB8fDB8fHww",
      "name": "Your Story",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1614796438/photo/woman-on-vacation-taking-photographs-with-a-camera-at-the-seaside.jpg?s=612x612&w=0&k=20&c=hYsI6lxOhnmUz0BLz13i5z6v74RmJPsGXmvWPS-bnfs=",
      "name": "karennne",
    },
    {
      "img":
          "https://us.123rf.com/450wm/georgerudy/georgerudy2112/georgerudy211200780/179375451-jeune-photographe-joyeux-avec-barbe-tout-en-travaillant-en-studio.jpg?ver=6",
      "name": "zackjohn",
    },
    {
      "img":
          "https://media.istockphoto.com/id/647639022/fr/photo/photographe-femme-fille-tient-reflex-num%C3%A9rique-cam%C3%A9ra-prenant-des-photos.jpg?s=170667a&w=0&k=20&c=tuLocVLZB5-dxd9dhNy5sSS20ifBiUHHjJ4_WDkZO-o=",
      "name": "kieron_d",
    },
    {
      "img":
          "https://miro.medium.com/v2/resize:fit:1400/1*uovQPiAmMmVS4w0lK2iDaw.jpeg",
      "name": "Amit",
    },
    {
      "img":
          "https://static-cse.canva.com/blob/982974/thomholmes594272unsplash.jpg",
      "name": "Siddharth",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYgw-LxOTqy7Kgmv_76TUVsE6-fLIRgaKOffAKRNnAdT913oMHxMUHvGaFGxjWiU6b97I&usqp=CAU",
      "name": "Virat",
    },
    {
      "img":
          "https://thumbs.dreamstime.com/b/young-attractive-digital-nomad-man-photographer-working-line-outdoors-laptop-computer-mobile-phone-as-freelancer-118469412.jpg",
      "name": "Rohit",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: UiHelper.CustomImage(imgurl: "Camera Icon.png"),
        title: UiHelper.CustomImage(imgurl: "Instagram Logo (1).png"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen()));
            },
            icon: UiHelper.CustomImage(imgurl: "IGTV.png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen()));
            },
            icon: UiHelper.CustomImage(imgurl: "Messanger.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        arrContent[index]["img"].toString(),
                      ),
                    ),
                  );
                },
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      arrContent[index]["name"].toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                },
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Container(
            height: 54,
            width: double.infinity,
            color: Colors.black12,
            child: ListTile(
              leading: UiHelper.CustomImage(imgurl: "person1.png"),
              title: Text(
                "joshua_I",
                style: TextStyle(fontSize: 13, color: Color(0XFFF9F9F9)),
              ),
              subtitle: Text("Tokyo,Japan",style: TextStyle(fontSize: 11,color: Color(0XFFF9F9F9)),),
              trailing: UiHelper.CustomImage(imgurl: "More Icon.png"),
            ),
          ),
          SizedBox(height: 8,),
          Container(
            clipBehavior: Clip.antiAlias,
            height: 375,
            width: double.infinity,
            decoration: BoxDecoration(

            ),
            child: Image.asset("assets/images/Rectangle.png",fit: BoxFit.cover,)
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "Like.png"),
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "Comment.png"),
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "Messanger.png"),
            SizedBox(width: 240,),
            UiHelper.CustomImage(imgurl: "Save.png")
          ],),
          Row(children: [

          ],),
          SizedBox(height: 10,),
          Row(children: [
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "Ovalone.png"),
            SizedBox(width: 5,),
            Text("Liked by craig_love and 44,686 others",style: TextStyle(fontSize: 13,color:Color(0XFFF9F9F9)),)
          ],),
        ],
      ),
    );
  }
}
