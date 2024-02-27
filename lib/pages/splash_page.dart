import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo:Image.asset("assets/logo/note.png"),
      title: Text(
        "Notes App",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.black38,
      showLoader: true,
      loaderColor: Colors.white,
      loadingText: Text("Loading..."),
      navigator: HomePae(),
      durationInSeconds: 3,
    );
  }
}