import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

class PersonalizedBottomBar extends StatefulWidget{
  const PersonalizedBottomBar({super.key, required this.title});

  final String title;

  @override
  State<PersonalizedBottomBar> createState()=> _PersonalizedBottomBarState();
}

class _PersonalizedBottomBarState extends State<PersonalizedBottomBar> {

   @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return BottomBar(
        layout: BottomBarLayout(width: MediaQuery.of(context).size.width*0.7,
          offset: 10,
        ),
      body: BottomBarBodyPadding(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:2, horizontal: 10))
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.map)
          ),
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.museum)
          ),
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.chat)
          ),
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.info)
          ),
        ],
      ),
    );
  }
}