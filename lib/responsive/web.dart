import 'package:flutter/material.dart';
import 'package:responsive/responsive/constants.dart';

import '../utility/my_box.dart';
import '../utility/my_tile.dart';

class WebScaffold extends StatefulWidget {
  const WebScaffold({Key? key}) : super(key: key);

  @override
  State<WebScaffold> createState() => _WebScaffoldState();
}

class _WebScaffoldState extends State<WebScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
            children: [
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (context,index){
                    return MyBox();
                  }),
                ),
              ),
              Expanded(child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return MyTile();
                  }))
            ],
          ),),
          Expanded(child: Container(color: Colors.pink,))
        ],
      ),
    );
  }
}
