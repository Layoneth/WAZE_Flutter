import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';
import 'package:waze/widgets/emoji.dart';

class PlannedPage extends StatelessWidget {
  const PlannedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Planned drives',
            style: MyTypography.whiteTittle,
          ),
        ),
        actions: <Widget>[
          MaterialButton(
            child: Text(
              'Settings',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
            padding: EdgeInsets.zero,
            color: Colors.amber,
            height: 12.0,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
                side: BorderSide(color: Colors.amberAccent)),
            onPressed: () {},
            // onPressed: () => Navigator.pushNamed(context, '/home')
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Divider(color: Colors.white,),
          EmojiWidget(),
          _texts(),
          _connectButtons(),
          Padding(
            padding: EdgeInsets.only(right: 16.0, bottom: 8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                child: Icon(
                  Icons.alarm,
                  color: Colors.white,
                ),
                onPressed: () {}),
            ),
          ),
          SizedBox()
        ],
      ),
    );
  }

  Widget _connectButtons() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _items(Icons.calendar_today, 'Connect calendar'),
          Divider(),
          _items(Icons.calendar_today, 'Connect Facebook'),
        ],
      ),
    );
  }

  Widget _items(IconData iconData, String title) {
    return ListTile(
      contentPadding: EdgeInsets.all(8.0),
      leading: Icon(
        iconData,
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: MyTypography.blackTittle,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget _texts() {
    return Column(
      children: <Widget>[
        Text(
          'Arrive on time',
          style: MyTypography.yellowTittleBold,
        ),
        Text(
          'Wherever you\'re going, Ride Out tells you when to leave based on live traffic',
          style: MyTypography.whiteTittle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
