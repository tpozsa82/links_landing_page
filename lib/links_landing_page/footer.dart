import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Build in Flutter', style: TextStyle(fontSize: 19.0)),
        SizedBox(width: 8.0),
        Image.network(
          'https://img.pikbest.com/origin/10/41/85/35HpIkbEsTU62.png!sw800',
          width: 25.0,
        ),
      ],
    );
  }
}
