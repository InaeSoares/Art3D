import 'package:flutter/material.dart';
import '../widgets/personalizedBottomBar.dart';

class InformationsPage extends StatefulWidget {
  const InformationsPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<InformationsPage> createState() => _InformationsPageState(); 
}

class _InformationsPageState extends State<InformationsPage> {
 

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      extendBody: true,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        //diaQuery.of(context).size.height,
          child: 
            Image.asset('images/underconstruction2.jpg',
              scale: 1.0,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,            
            )
      ),
      bottomNavigationBar: PersonalizedBottomBar(
        title: "infos"
     ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}