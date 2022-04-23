// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, library_private_types_in_public_api
import 'package:figmaproject/Customs/Export/import.dart';

// ignore: must_be_immutable
class home extends StatefulWidget {
  int? _currentindex;
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

  final List<Widget> _children = [
    homescreen(),
  ];

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
          body: _children[widget._currentindex!],
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
