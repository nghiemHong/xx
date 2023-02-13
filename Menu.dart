import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Category1.dart';

class Menu1 extends StatefulWidget {
  //const Menu1({super.key});

  @override
  State<Menu1> createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('More Category'),
            ),
            body: ListView(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageButton(
                            image: 'assets/hurger.png', text: "Hamburger"),
                        ImageButton(
                            image: "assets/hurger.png", text: "Hamburger"),
                        ImageButton(
                            image: "assets/hurger.png", text: "Hamburger"),
                        ImageButton(
                            image: "assets/hurger.png", text: "Hamburger"),
                      ],
                    ),
                  )
                ],
              )
            ]
          )
      )
    );
  }
}

class ImageButton extends StatelessWidget {
  const ImageButton({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(iconSize: 30, onPressed: () {}, icon: Image.asset(image)),
        Text(text)
      ],
    );
  }
}
