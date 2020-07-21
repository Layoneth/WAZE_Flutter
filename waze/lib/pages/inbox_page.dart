import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';
import 'package:waze/widgets/my_appbar.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Inbox', actions: [CloseButton()]),
      body: Column(
        children: <Widget>[
          Divider(color: Colors.white,),
          SizedBox(height: 8.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber,
              child: ListTile(
                contentPadding: EdgeInsets.all(8.0),
                leading: Icon(
                  Icons.crop_square,
                  color: Colors.white,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome to Ride Out', 
                      style: MyTypography.blackTittle,),
                    Text(
                      'Welcome to Ride Out', 
                      style: MyTypography.blackParagraph,),
                    Text(
                      '20:23', 
                      style: MyTypography.blackParagraph,),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
