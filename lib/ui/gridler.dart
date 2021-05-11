import 'package:flutter/material.dart';

class GridViewKullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
      itemBuilder: (BuildContext contex, int index){
        var shade = 100 * ((index+1) % 9);
        //debugPrint(shade.toString());
        return GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: shade == 0 ? Colors.teal : Colors.teal[shade],
            child: Text("Grid View", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
          ),
          onLongPress: () => debugPrint("Uzun basıldı !"),
          onDoubleTap: () => debugPrint("Çift basıldı !"),
          onHorizontalDragStart: (e) => debugPrint("Sürüklendi $e") ,
        );
      }
    );
  }
}

/*
GridView.extent(
      //GridView.count için kullanılır.
      //crossAxisCount: 2,
      maxCrossAxisExtent: 100,
      scrollDirection: Axis.vertical,
      primary: true,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade200,
          child: Text("Grid View", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade200,
          child: Text("Grid View", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade200,
          child: Text("Grid View", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade200,
          child: Text("Grid View", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
      ],
    )
 */