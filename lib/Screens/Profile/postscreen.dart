import 'package:flutter/material.dart';

class PostScreenProfile extends StatelessWidget {
  var arrContent=[
    {
      "img":"https://tinypng.com/images/social/developer-api.jpg"
    },
    {
      "img":"https://t3.ftcdn.net/jpg/05/71/06/76/360_F_571067620_JS5T5TkDtu3gf8Wqm78KoJRF1vobPvo6.jpg"
    },
    {
      "img":"https://img.freepik.com/free-photo/surrealistic-architecture-concept_23-2151856562.jpg?semt=ais_items_boosted&w=740"
    },
    {
      "img":"https://tinypng.com/images/social/developer-api.jpg"
    },
    {
      "img":"https://t3.ftcdn.net/jpg/05/71/06/76/360_F_571067620_JS5T5TkDtu3gf8Wqm78KoJRF1vobPvo6.jpg"
    },
    {
      "img":"https://img.freepik.com/free-photo/surrealistic-architecture-concept_23-2151856562.jpg?semt=ais_items_boosted&w=740"
    },
    {
      "img":"https://tinypng.com/images/social/developer-api.jpg"
    },
    {
      "img":"https://t3.ftcdn.net/jpg/05/71/06/76/360_F_571067620_JS5T5TkDtu3gf8Wqm78KoJRF1vobPvo6.jpg"
    },
    {
      "img":"https://img.freepik.com/free-photo/surrealistic-architecture-concept_23-2151856562.jpg?semt=ais_items_boosted&w=740"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
        return Container(
          clipBehavior: Clip.antiAlias,
          height: 124,
          width: 124,
          decoration: BoxDecoration(),
          child: Image.network(arrContent[index]["img"].toString(),fit:BoxFit.cover,),
        );
      },itemCount: arrContent.length,)
    );
  }
}
