import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';
import 'package:waze/widgets/my_appbar.dart';

class FavoritePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Favorites'),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: ListTile(
              leading: FloatingActionButton(
                heroTag: 'plus',
                mini: true,
                child: Icon(Icons.plus_one),
                onPressed: (){}
              ),
              title: Text(
                'Add new favorite', 
                style: MyTypography.blackTittle,),
            ),
          )
        ],
      ),
    );
  }
}
