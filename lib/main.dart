import 'package:flutter/material.dart';
import 'login.dart';

String email = 'rakib15-3948@diu.edu.bd', password = '1234';
String mail ='',pass='';
String wrong='';

void main()
{
  return runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Log(),


    );
  }
}
