import 'package:flutter/material.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var arrContent = [
    {
      "img":
      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg"
    },
    {
      "img":
      "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-souvenirpixels-414612.jpg&fm=jpg"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg"
    },
    {
      "img":
      "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"
    },
    {
      "img":"https://burst.shopifycdn.com/photos/photo-of-a-cityscape-with-a-ferris-wheel.jpg?width=1000&format=pjpg&exif=0&iptc=0"
    },
    {
      "img":"https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE="
    },
    {
      "img":"https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg"
    },
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpcnbc8WHZULZMdII7zS35lV5EerFhUodmLO3CsanVtfHsfmLRBLTMNzizRUYcBJdQRWY&usqp=CAU"
    },
    {
      "img":"https://images.unsplash.com/photo-1526779259212-939e64788e3c?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dGhvdWdodHxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2022/05/10/14/37/glacier-7187291_1280.jpg"
    },
    {
      "img":"https://www.piclumen.com/wp-content/uploads/2024/10/piclumen-marquee-06.webp"
    },
    {
      "img":"https://img.freepik.com/free-photo/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.jpg?semt=ais_hybrid&w=740"
    },
    {
      "img":"https://static.vecteezy.com/system/resources/previews/024/063/442/non_2x/ufo-an-alien-saucer-hovering-above-the-field-in-the-clouds-ai-generated-free-photo.jpg"
    },
    {
      "img":"https://b2-backblaze-stackpath.b-cdn.net/1665968/md_bhfo7w_5848fbaa517e86913e2b91e87a8e268212d3639b.jpg"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2022/11/01/17/46/candle-7562931_1280.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50),
        Row(
          children: [
            SizedBox(width: 10),
            Container(
              height: 36,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFF262626),
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: UiHelper.CustomImage(imgurl: "Search Icon.png"),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0XFF8E8E93),
                    fontWeight: FontWeight.normal,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(width: 20),
            UiHelper.CustomImage(imgurl: "Live.png"),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 15),
            Container(
              height: 32,
              width: 75,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomImage(imgurl: "Icon (2).png"),
                  SizedBox(width: 5),
                  Text(
                    "IGTV",
                    style:
                    TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                  )
                ],
              ),
            ),
            SizedBox(width: 5),
            Container(
              height: 32,
              width: 75,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag, color: Colors.white, size: 15),
                  SizedBox(width: 5),
                  Text(
                    "Shop",
                    style:
                    TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                  )
                ],
              ),
            ),
            SizedBox(width: 5),
            Container(
              height: 32,
              width: 75,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Style",
                    style:
                    TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                  )
                ],
              ),
            ),
            SizedBox(width: 5),
            Container(
              height: 32,
              width: 75,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sports",
                    style:
                    TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                  )
                ],
              ),
            ),
            SizedBox(width: 5),
            Container(
              height: 32,
              width: 53,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Auto",
                    style:
                    TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                  )
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.builder(
            itemCount: arrContent.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemBuilder: (context, index) {
              return Container(
                clipBehavior: Clip.antiAlias,
                height: 124,
                width: 124,
                decoration: BoxDecoration(),
                child: Image.network(
                  arrContent[index]["img"].toString(),
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
