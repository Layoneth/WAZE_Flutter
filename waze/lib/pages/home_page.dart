import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';
import 'package:waze/widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      // appBar: AppBar(),
      drawer: MyDrawer(),
      body: Stack(
        children: <Widget>[
          _map(context),
          _whereToTextFIeld(context),
          _bottomMenu(context),
          _dragableBottomSheet(),
        ],
      ),
    );
  }

  Container _map(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.greenAccent,
      child: Center(
        child: Text('Map', style: MyTypography.whiteTittle,),
      ),
    );
  }

  Widget _whereToTextFIeld(BuildContext context) {
    return Positioned(
      top: 32.0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40.0),
              ),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey),
            hintText: "Where to?",
            fillColor: Colors.black,
            prefixIcon: Icon(
              Icons.loupe,
              color: Colors.grey,
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: 'micro',
                backgroundColor: Colors.white,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white, 
                  )
                ),
                elevation: 10.0,
                mini: true,
                child: Icon(
                  Icons.mic,
                  color: Colors.amberAccent,
                ),
                onPressed: () {},
              ),
            )),
        ),
      ),
    );
  }

  Widget _bottomMenu(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width - 120,
              height: 48.0,
              color: Colors.amber,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.amberAccent)
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Select vehicle type',
                    style: MyTypography.whiteTittle,
                  ),
                  SizedBox(width: 16.0,),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,)
                ],
              ),
              onPressed: (){},
              // onPressed: () => Navigator.pushNamed(context, '/home')
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120.0,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16.0)
              )
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0)
                    )
                  ),
                  child: Icon(
                    Icons.loupe,
                    size: 32.0,
                    color: Colors.amberAccent,),
                ),
                VerticalDivider(
                  color: Colors.white.withOpacity(0.4),
                  thickness: 3.0,
                ),
                Expanded(child: Container(),),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FloatingActionButton(
                      heroTag: 'phone',
                      backgroundColor: Colors.grey.withOpacity(0.1),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      onPressed: (){}
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _dragableBottomSheet() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: DraggableScrollableSheet(
        initialChildSize: 0.05,
        minChildSize: 0.05,
        maxChildSize: 0.4,
        builder: (context, controller){
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24.0),
              ),
            ),
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Sound', style: MyTypography.blackTittle,)
                    ),
                  ),
                  _rowAlerts(),
                ],
              ),
            ),
          );
        }
      ),
    );
  }

  Widget _rowAlerts() {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Flexible(child: null),
        Flexible(child: null),
        Flexible(child: null),
      ],
    );
  }
}
