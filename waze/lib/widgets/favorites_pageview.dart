import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';

class FavoritesPageView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _whereToTextFIeld(),
          Divider(thickness: 2.0,),
          _items(Icons.home, 'Home', 'Set once and go'),
          _items(Icons.work, 'Work', 'Set once and go'),
          _items(Icons.calendar_today, 'Connect Calendar', 
            'Get to events on time'),
          _items(Icons.calendar_today, 'Connect acebook events', 
            'Get to events on time'),
        ],
      ),
    );
  }

  Widget _whereToTextFIeld() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[600]),
          hintText: "Where to?",
          fillColor: Colors.grey[200],
          prefixIcon: Icon(Icons.loupe),
          suffixIcon: Padding(
            padding: EdgeInsets.all(8.0),
            child: FloatingActionButton(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(40.0),
                ),
                borderSide: BorderSide(
                  color: Colors.yellowAccent, 
                )
              ),
              elevation: 10.0,
              mini: true,
              child: Icon(
                Icons.mic,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )),
      ),
    );
  }

  Widget _items(IconData iconData, String title, String body) {
    return ListTile(
      leading: Icon(
        iconData,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: MyTypography.blackTittle,
            textAlign: TextAlign.left,
          ),
          Text(
            body,
            style: MyTypography.yellowParagraph,
            textAlign: TextAlign.left,
          ),
          Divider(thickness: 1.5,)
        ],
      ),
    );
  }
  
}
