import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Hero(
            tag: 'main-image',
            child: AspectRatio(
                      aspectRatio: 2 / 3,
                      child: Image.network(
                        'https://picsum.photos/200/300',
                        fit: BoxFit.cover,
                      ),
                    ),
          ),
        ],
      ),
    );
  }
}