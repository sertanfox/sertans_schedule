import "package:flutter/material.dart";

class VshowToday extends StatefulWidget {
  @override
  _VshowTodayState createState() => _VshowTodayState();
}

class _VshowTodayState extends State<VshowToday> {
  List<String> gorevlerim = [
    "Evi süpür",
    "Bulaşıkları yıka.",
    "Ödevlerini tamamla.",
    "Cennetten çiçek mi topluyorum, ama sen başka bi yollarda, sana kanmışım bu yollarda"
  ];
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height - 80;
    double _width = MediaQuery.of(context).size.width;
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Today Missions"),
          backgroundColor: Colors.green[800],
        ),
        body: Column(
          children: <Widget>[
            for (var i = 0; i < gorevlerim.length; i++)
              MissionCard(gorevlerim[i])
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Colors.white)),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ("GEÇMİŞ"),
                style: TextStyle(fontSize: 14),
              ),
              Text(
                ("GÖREVLER"),
                style: TextStyle(fontSize: 10),
              ),
            ],
          )),
        ));
  }
}

class MissionCard extends StatelessWidget {
  String missionText;
  MissionCard(this.missionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 308,
        height: 60,
        margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
        decoration: BoxDecoration(
            color: Colors.grey[850],
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 268,
              height: 50,
              margin: EdgeInsets.all(5),
              child: Text(
                missionText,
                maxLines: 3,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, "/VdeadlineEditSettings"),
                  child: Container(
                    width: 25,
                    height: 28,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "/"),
                  child: Container(
                    width: 25,
                    height: 28,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
