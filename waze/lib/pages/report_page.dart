import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';
import 'package:waze/widgets/emoji.dart';
import 'package:waze/widgets/my_appbar.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Send a report', actions: [CloseButton()]),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(color: Colors.white,),
              _gridIcons(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Reports are public, Your Ride Out username will appear with your report',
                    style: MyTypography.whiteParagraph,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget _gridIcons(BuildContext context) {
  //   return Container(
  //     height: MediaQuery.of(context).size.height - 103,
  //     child: GridView.count(
  //       padding: const EdgeInsets.all(8.0),
  //       crossAxisCount: 3,
  //       physics: BouncingScrollPhysics(),
  //       children: List.generate(10, (index){
  //         return Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Container(
  //             padding: EdgeInsets.all(12.0),
  //             child: EmojiWidget(),
  //             decoration: BoxDecoration(
  //               color: Colors.white,
  //               shape: BoxShape.circle
  //             ),
  //           ),
  //         );
  //       })
  //     ),
  //   );
  // }
  Widget _gridIcons(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.7,
      child: GridView(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          _circleItem('Police'),
          _circleItem('Police'),
          _circleItem('Police'),
          _circleItem('Police'),
          _circleItem('Police'),
          _circleItem('Police'),
          _circleItem('Police'),
          _circleItem('Police'),
          _circleItem('Police'),
          _circleItem('Police'),
        ]
      ),
    );
  }

  Widget _circleItem(String text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 98.0,
            padding: EdgeInsets.all(12.0),
            child: EmojiWidget(),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}
