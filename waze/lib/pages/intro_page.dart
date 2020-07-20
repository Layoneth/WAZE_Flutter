import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Big Logo',
              style: MyTypography.yellowTittle,
            ),
            Text(
              'Drive with Ride Out even if you know the way',
              style: MyTypography.yellowTittle,
              textAlign: TextAlign.center,
            ),
            Column(
              children: <Widget>[
                _items(Icons.streetview,
                'Know what\'s happening on the roads in real-time'),
                _items(Icons.shopping_cart,
                    'Avoid traffic with route updates as conditions change'),
                _items(Icons.battery_alert,
                    'Get alerts about crashes, hazards, and police ahead.'),
                _items(Icons.map,
                  'Information pertaining to police'),
              ],
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    'Get started',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                  ),
                  minWidth: double.maxFinite,
                  height: 48.0,
                  color: Colors.amber,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.amberAccent)
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/home')
                ),
                FlatButton(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Have an account? Log in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.underline,
                          )
                        ),
                      ]
                    )
                  ),
                  onPressed: () {}
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _items(IconData iconData, String text) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.amberAccent,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: MyTypography.whiteParagraph,
            textAlign: TextAlign.left,
          ),
          Divider(
            color: Colors.white.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
