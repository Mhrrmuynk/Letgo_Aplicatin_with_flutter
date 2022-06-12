import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colorlar {
  final Color Malibu = 0x95C6F9 as Color;
}

class i extends StatefulWidget {
  const i({Key? key}) : super(key: key);

  @override
  State<i> createState() => _iState();
}

class _iState extends State<i> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(

              ),
              child: const Text(
                'Foreground Text',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
