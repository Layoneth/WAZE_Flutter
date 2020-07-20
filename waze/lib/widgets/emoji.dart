import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {
  const EmojiWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 120.0,
      decoration: BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
    );
  }
}