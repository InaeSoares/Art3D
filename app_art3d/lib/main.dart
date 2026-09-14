import 'package:flutter/material.dart';
import './pages/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bauru Arte Pública',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme(
          brightness: Brightness.light, 
          primary: Color(0x262236), 
          onPrimary: Color(0xfefef3), 
          secondary: Color(0xe18546), 
          onSecondary: Color(0x3d4f7e), 
          error: Color(0x990f02), 
          onError: Color(0xfefef3), 
          surface: Color(0x262236), 
          onSurface: Color(0xfefef3),
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color:  Color(0xfefef3),
            fontFamily: 'fake-receipt',
            fontSize: 24,
            fontWeight: FontWeight(200),
          ),
          displayMedium: TextStyle(
            color:  Color(0xfefef3),
            fontFamily: 'fake-receipt',
            fontSize: 22,
            fontWeight: FontWeight(200),
          ),
          displaySmall: TextStyle(
            color:  Color(0xfefef3),
            fontFamily: 'fake-receipt',
            fontSize: 20,
            fontWeight: FontWeight(200),
          ),
          headlineLarge: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'monitorica',
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
          headlineMedium: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'monitorica',
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
          headlineSmall: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'monitorica',
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
          titleLarge: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'monitorica',
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
          titleMedium: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'monitorica',
            fontSize: 16,
            fontStyle: FontStyle.italic,
          ),
          titleSmall: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'monitorica',
            fontSize: 14,
            fontStyle: FontStyle.italic,
          ),
          bodyLarge: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'amethysta',
            fontSize: 14,
          ),
          bodyMedium: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'amethysta',
            fontSize: 12,
          ),
          bodySmall: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'amethysta',
            fontSize: 10,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'APB Home'),
    );
  }
}


