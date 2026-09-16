import 'dart:ui_web';
import 'package:app_art3d/widgets/threedObject.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter/material.dart';

class EsculturasPage extends StatefulWidget {
  const EsculturasPage({ super.key, }); //required this.information 
  //final Map<String,dynamic> information;

  @override
  State<EsculturasPage> createState() => _EsculturasPageState();
}

class _EsculturasPageState extends State<EsculturasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.15,
            color: Theme.of(context).colorScheme.primary,
            child: Center(
              child: Text("Testando o nome",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.7,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(60)),
            ),
            child: Objeto3D()
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              children: [
                Text('nome do autor',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                ),
                Text('Data de instalação'),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                ),
                Text('Data de instalação')
              ],
            ),
          )
        ],
        ),
      ),
    );
  }
}