import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';
import 'package:waze/widgets/my_appbar.dart';

class MyWazePage extends StatelessWidget {
  const MyWazePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('My Waze', actions: [CloseButton()]),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _item( Icons.message, 'Inbox'),
                    Divider(thickness: 2.0,),
                    _item( Icons.people, 'My friends'),
                    Divider(thickness: 2.0,),
                    _item( Icons.person, 'Account & login'),
                    Divider(thickness: 2.0,),
                    _item( Icons.home, 'Home and Work'),
                    Divider(thickness: 2.0,),
                    _item( Icons.person_outline, 'Mood'),
                    Divider(thickness: 2.0,),
                    _item( Icons.book, 'My stores'),
                    Divider(thickness: 2.0,),
                    _item( Icons.table_chart, 'Scoreboards'),
                    Divider(thickness: 2.0,),
                    _item( Icons.people_outline, 'Teams'),
                  ],
                ),
              ),
              SizedBox(height: 16.0,),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _item( Icons.settings, 'Settings'),
                  ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Connect to social networks, edit privacy settings and display preferences',
                  style: MyTypography.whiteParagraph,
                ),
              )
            ],
          ),
        ),
      )
    );
  }

  Widget _item(IconData icondata, String text){
    return ListTile(
      leading: Icon(icondata),
      title: Text(
        text,
        style: MyTypography.blackTittle,
      ),
    );
  }
}
