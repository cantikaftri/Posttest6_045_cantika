import 'package:flutter/material.dart';
import 'landingpage.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashScreenStart();
    super.initState();
  }

  splashScreenStart() {
    var duration = Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return landingpage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 236, 236),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ICE CREAM STORE",
              style: TextStyle(
                color: Color(0xFF023E4A),
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            // Image.asset(
            //   "assets/icecreamstore.png",
            //   width: MediaQuery.of(context).size.width / 5,
            //   height: MediaQuery.of(context).size.height / 5,
            // ),
            Icon(
              Icons.icecream_outlined,
              size: 100,
              color: Color(0xFF023E4A),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "BY CANTIKA",
              style: TextStyle(
                color: Color(0xFF023E4A),
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
