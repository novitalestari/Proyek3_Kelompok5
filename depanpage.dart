import 'package:flutter/material.dart';

class DepanPage extends StatefulWidget {
  @override
  _SpicyFood createState() => _SpicyFood();
}

class _SpicyFood extends State<DepanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child:  Image.asset(
                "assets/logo2.png",
                height: 500.0,
                width: 600.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
