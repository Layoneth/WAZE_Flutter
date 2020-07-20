import 'package:flutter/material.dart';
import 'package:waze/widgets/my_appbar.dart';

class RideOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        'My Ride Out', 
        actions: [
          CloseButton(),
        ]
      ),
      body: Column(
        children: <Widget>[
          Divider(color: Colors.white,),
        ],
      ),
    );
  }
}
