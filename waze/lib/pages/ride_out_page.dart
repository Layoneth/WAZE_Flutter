import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';
import 'package:waze/widgets/emoji.dart';
import 'package:waze/widgets/my_appbar.dart';

class RideOutPage extends StatefulWidget {
  @override
  _RideOutPageState createState() => _RideOutPageState();
}

class _RideOutPageState extends State<RideOutPage> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('My Ride Out', actions: [
        CloseButton(),
      ]),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 8.0,
            ),
            _boxMessage(context),
            SizedBox(
              height: 24.0,
            ),
            EmojiWidget(),
            SizedBox(height: 16.0,),
            _invisible(),
            SizedBox(height: 16.0,),
            _options(),
          ],
        ),
      ),
    );
  }

  Widget _boxMessage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 240.0,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(45 / 360),
              child: Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
          ),
          Positioned(
            top: 32.0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 200.0,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(24.0)),
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'Wherever you\'re going, Ride Out tells you when to leave based on live traffic',
                      style: MyTypography.whiteParagraph,
                      textAlign: TextAlign.center,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Text(
                      'Ride Out',
                      style: MyTypography.blackTittle,
                    ),
                    Text(
                      'Points : 0',
                      style: MyTypography.blackParagraph,
                    ),
                    Text(
                      'Joined today',
                      style: MyTypography.blackParagraph,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _invisible() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Go invisible',
              style: MyTypography.blackTittle,
            ),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeTrackColor: Colors.amber,
              activeColor: Colors.amberAccent,
              inactiveTrackColor: Colors.black,
              inactiveThumbColor: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }

  Widget _options() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _item(Icons.message, 'Inbox', func:
            () => Navigator.pushNamed(context, '/inbox')),
          Divider(),
          _item(Icons.people, 'My friends'),
          Divider(),
          _item(Icons.person, 'Account & login'),
          Divider(),
          _item(Icons.home, 'Home and Work'),
          Divider(),
        ],
      ),
    );
  }

  Widget _item(IconData iconData, String text, {Function func}){
    return ListTile(
      leading: Icon(iconData),
      title: Text(
        text,
        style: MyTypography.blackTittle,
      ),
      onTap: func,
    );
  }
}
