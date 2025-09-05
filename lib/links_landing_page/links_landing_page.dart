import 'package:flutter/material.dart';
import 'package:links_landing_page/links_landing_page/button_link.dart';
import 'package:links_landing_page/constants.dart';
import 'package:links_landing_page/links_landing_page/footer.dart';

class LinksLandingPage extends StatelessWidget {
  const LinksLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 35.0),
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(imageUrl),
            radius: 48,
          ),
          SizedBox(height: 12.0),
          Text(
            '@ tomas_pozsa',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 20.0),
          for (var document in documents)
            ButtonLink(title: document.title, url: document.url),
          Spacer(),
          Footer(),
          SizedBox(height: 23.0),
        ],
      ),
    );
  }
}
