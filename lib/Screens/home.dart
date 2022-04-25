// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, library_private_types_in_public_api
import 'package:Dawaie/Customs/Export/import.dart';

// ignore: must_be_immutable
class home extends StatefulWidget {
  int? _currentindex; //used for bottom navigation bar
  int? savePrevIndex;
  home(_currentindex, {Key? key}) : super(key: key) {
    this._currentindex = _currentindex;
  }
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    super.initState();
  }

// these are our screens for bottom navigation bar
  final List<Widget> _children = [
    homescreen(), //you will land on this screen when you tap on home icon in bottom nav bar
    //QRcodescreen(), your qrcode screen will be here
    //notificationsscreen(), your notification screen will be here
    //settings(), your setting screen will be here
  ];
  // here willpop is used to deal with android back button functionality
  Future<bool> _onWillPop() {
    Future<bool> value = Future.value(false);
    setState(
      () {
        if (widget._currentindex != 0) {
          /*if (widget._currentIndex == widget.savePrevIndex) {
          value  = Future.value(false);
          widget._currentIndex =  widget._currentIndex! - 1;
          setState(() {});
        } else if (widget.savePrevIndex != null) {
          value  = Future.value(false);
          widget._currentIndex = widget.savePrevIndex;
          setState(() {});
        } else {*/
          value = Future.value(false);
          widget._currentindex = 0;
          setState(() {});
          // }
        } else {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                title: Text('Confirm Exit'),
                content: Text('Are you sure to exit?'),
                actions: <Widget>[
                  TextButton(
                    child: Text(
                      'Yes',
                      style: const TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      value = Future.value(false);
                      SystemNavigator.pop();
                    },
                  ),
                  TextButton(
                    child: Text(
                      'No',
                      style: const TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      value = Future.value(true);
                    },
                  )
                ],
              );
            },
          );
        }
      },
    );
    return value;
  }
  // ignore: missing_return

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(360, 690), orientation: Orientation.portrait);

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF89EBD4),
            Color(0xFF94E5FF),
          ],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          //index stack is used here to save the state of previous class while navigating using bottom nav bar
          body: IndexedStack(
            index: widget._currentindex,
            children: _children,
          ),
          //bottom navigation which appears at the bottom of our homescreen
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedItemColor: Constants.colorfont,
            unselectedItemColor: Constants.colorfont,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            currentIndex: widget._currentindex!,
            onTap: (value) {
              print(value);
              setState(() {
                widget.savePrevIndex = widget._currentindex;
                widget._currentindex = value;
              });
            },
            items: [
              // home
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.h),
                  child: Icon(
                    Icons.home_rounded,
                    color: Constants.colorfont,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5.h),
                  child: Icon(
                    Icons.home_rounded,
                    color: Constants.colorfont,
                  ),
                ),
                label: 'Home',
              ),
              //QRcode
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: Icon(
                      Icons.qr_code,
                      color: Constants.colorfont,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: Icon(
                      Icons.qr_code,
                      color: Constants.colorfont,
                    ),
                  ),
                  label: 'QR Code'),
              //Notifications
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: Icon(
                      Icons.notifications,
                      color: Constants.colorfont,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: Icon(
                      Icons.notifications,
                      color: Constants.colorfont,
                    ),
                  ),
                  label: 'Notification'),
              //settings
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: Icon(
                      Icons.settings,
                      color: Constants.colorfont,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: Icon(
                      Icons.settings,
                      color: Constants.colorfont,
                    ),
                  ),
                  label: 'Settings'),
            ],
          )),
    );
  }
}
