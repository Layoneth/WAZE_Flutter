import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';
import 'package:waze/widgets/emoji.dart';
import 'package:waze/widgets/favorites_pageview.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> with TickerProviderStateMixin{
  final _tabs = <Widget>[
    FavoritesPageView(),
    Text('STATUS', style: MyTypography.whiteParagraph,),
    Text('CALLS', style: MyTypography.whiteParagraph,),
  ];
  PageController _pageController;
  TabController _tabController;
  double _page = 0;

  @override
  void initState() {
    _pageController = PageController( initialPage: 0,);
    _tabController
      = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 1,
      child: Drawer(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black87,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                _rowButtons(),
                EmojiWidget(),
                SizedBox(height: 16.0,),
                _messages(),
                SizedBox(height: 16.0,),
                _tabsD(context),
                _tabPages(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _rowButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'uno',
            elevation: 50.0,
            backgroundColor: Colors.black,
            child: Icon(Icons.settings, color: Colors.amber),
            onPressed: () => Navigator.pushNamed(context, '/myWaze' )),
          FloatingActionButton(
            heroTag: 'dos',
            elevation: 50.0,
            backgroundColor: Colors.black,
            child: Icon(Icons.settings_power, color: Colors.amber),
            onPressed: () {})
        ],
      ),
    );
  }

  Widget _messages() {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/myRideOut'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Ride Out Driver',
                style: MyTypography.yellowTittle,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text('1 new message', style: MyTypography.whiteParagraph),
                ],
              )
            ],
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Colors.white,
            size: 48.0,
          ),
        ],
      ),
    );
  }

  Widget _tabsD(BuildContext context) {
    
    return Container(
      width: double.maxFinite,
      child: TabBar(
        controller: _tabController,
        tabs: [
        Tab(
          child: GestureDetector(
            child: Text(
              'Recent',
              style: MyTypography.whiteParagraph,
            ),
            onTap: () => onChangePage( 0 )
          ),
        ),
        Tab(
          child: GestureDetector(
            child: Text(
              'Favorites',
              style: MyTypography.whiteParagraph,
            ),
            // onTap: () => onChangePage( 1 )
            onTap: () => Navigator.pushNamed(context, '/favorites'),
          ),
        ),
        Tab(
          child: GestureDetector(
            child: Text(
              'Planned',
              style: MyTypography.whiteParagraph,
            ),
            onTap: () => Navigator.pushNamed(context, '/planned'),
          ),
        ),
      ]),
    );
  }

  Widget _tabPages() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        onPageChanged: (int page) =>
          _pageController.addListener(() {
            setState(() {
              _page = _pageController.page;
            });
          }),
        children: _tabs
      ),
    );
  }

  void onChangePage( int page ){
    _pageController.animateToPage(
      page, 
      duration: Duration(milliseconds: 100),
      curve: Curves.bounceIn);

    _pageController.addListener(() {
        setState(() { 
          _page = _pageController.page; });
      });

    _tabController.animateTo(page);
    _tabController.addListener(() {
        setState(() { 
          _page = _pageController.page; });
      });
  }
}
