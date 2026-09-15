import 'package:app_art3d/pages/comunidade.dart';
import 'package:app_art3d/pages/galeria.dart';
import 'package:app_art3d/pages/home.dart';
import 'package:app_art3d/pages/informacao.dart';
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
        layout: BottomBarLayout(width: MediaQuery.of(context).size.width*0.6,
          offset: 10,
          borderRadius: BorderRadius.all(Radius.circular(45)),
        ),
        theme: BottomBarThemeData(
          barDecoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            border: Border.all(color: Theme.of(context).colorScheme.onSecondary, width: 1,),
          ),
        ),
      body: BottomBarBodyPadding(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:2, horizontal: 10))
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const MyHomePage(title: 'homePage'),
                ),
              );
            }, 
            icon: Icon(
              Icons.map,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const GalleryPage(title: 'galleryPage'),
                ),
              );
            },  
            icon: Icon(
              Icons.museum,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const CommunityPage(title: 'communityPage'),
                ),
              );
            }, 
            icon: Icon(
              Icons.chat,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const InformationsPage(title: 'infoPage'),
                ),
              );
            },  
            icon: Icon(
              Icons.info,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}