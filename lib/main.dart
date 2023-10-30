import 'package:flutter/material.dart';
import 'package:popp/screens/home.dart';

void main() {
  runApp(const Popp());
}

class Popp extends StatelessWidget {
  const Popp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Geist',
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(118, 123, 141, 1),
            brightness: Brightness.light),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 10,
          titleTextStyle: TextStyle(
            fontSize: 28,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Popp"),
          centerTitle: true,
        ),
        body: const Home(),
      ),
    );
  }
}
