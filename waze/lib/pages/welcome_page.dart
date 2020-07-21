import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
          ),
        ),
        actions: <Widget>[CloseButton()],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Divider(color: Colors.white,),
                    SizedBox(height: 16.0,),
                    Text(
                      'WELCOME TO THE RIDE OUT COMMUNITY',
                      style: MyTypography.yellowTittle,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16.0,),
                    _whiteBox(context, 'HERE, DRIVERS WORK TOGETHER'),
                    SizedBox(height: 16.0,),
                    _whiteBox(context, 'ALWAYS BE ON THE FASTEST ROUTE')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: double.maxFinite,
                height: 48.0,
                color: Colors.amber,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(color: Colors.amberAccent)
                ),
                child: Text(
                  'START DRIVING',
                  style: MyTypography.whiteTittle,
                ),
                onPressed: () => Navigator.pushNamed(context, '/home')
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _whiteBox(BuildContext context , String text){
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            text,
            style: MyTypography.blackTittle,
          ),
          SizedBox(height: 16.0,),
          Text(
            'We share real-time road informationto bypass traffic and save precious time off their daily commutes',
            style: MyTypography.blackParagraph
          ),
          SizedBox(height: 16.0,),
          Text('Large image', style: MyTypography.blackTittle,),
          SizedBox(height: 16.0,),
        ],
      ),
    );
  }
}
