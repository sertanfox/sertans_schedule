import 'package:flutter/material.dart';

class ImageViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ImageView Kullanımı")),
      body: ListView(
        children: <Widget>[
          // Container(
          //     width: 100,
          //     height: 100,
          //     child: Center(
          //       child: Image.asset("assets/gifs/loading.gif"),
          //     )),

          Container(
            width: 100,
            height: 100,
            child: FadeInImage.assetNetwork(
                placeholder: "assets/gifs/loading.gif",
                image:
                    "https://i.pinimg.com/originals/d5/eb/a5/d5eba595ec93552e08be0e19844824ad.jpg"),
          )
          //Image.network(
          //  "https://i.pinimg.com/originals/d5/eb/a5/d5eba595ec93552e08be0e19844824ad.jpg"),
        ],
      ),
    );
  }
}
