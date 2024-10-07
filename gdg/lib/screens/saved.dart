import "package:flutter/material.dart";

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Saved Images")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 3.0,
          childAspectRatio: 0.5,
        ),
        itemCount: 17,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  // height:120.0,
                  // width:50.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(5.0),
                    //   bottomLeft: Radius.circular(5.0),
                    // ),
                    border: Border(
                      left: BorderSide(
                        color: Colors.blue,
                        width: 5.0,
                        style: BorderStyle.solid,
                      ),
                      bottom: BorderSide(
                        color: Colors.amber,
                        width: 8.0,
                        style: [
                          BorderStyle.none,
                          BorderStyle.solid,
                        ][1],
                      ),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 0.0,
                child: Transform.rotate(
                  angle: 10,
                  child: Icon(Icons.arrow_upward),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
