// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Dawaie/Customs/Export/import.dart';

// in this screen you can see list of your reminders and edit them
// class structure and all widgets are same, so no need of adding comments:)
class listscreen extends StatefulWidget {
  String medicine, dose, time;
  listscreen(this.medicine, this.dose, this.time);
  @override
  State<listscreen> createState() => _listscreenState();
}

class _listscreenState extends State<listscreen> {
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
        body: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Card(
              color: Constants.colorbuttonfont,
              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  minLeadingWidth: 80,
                  leading: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.keyboard_backspace,
                      color: Constants.colorfont,
                    ),
                  ),
                  title: Text(
                    "Your Reminder",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  trailing: Image.asset(
                    'assets/images/julie.png',
                    height: 50,
                  ),
                ),
              ),

              elevation: 0,
              margin: EdgeInsets.only(top: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 0,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF89EBD4),
                        Color(0xFF94E5FF),
                      ],
                    ),
                    backgroundBlendMode: BlendMode.multiply),

                margin: EdgeInsets.all(10),
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      title: Text(
                        widget.medicine,
                        style: TextStyle(
                            fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Dose: ${widget.dose}, Time: ${widget.time}",
                        style: TextStyle(
                            fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                      ),
                      trailing: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              Transitions(
                                  transitionType: TransitionType.fade,
                                  curve: Curves.bounceInOut,
                                  duration: const Duration(milliseconds: 500),
                                  reverseCurve: Curves.bounceOut,
                                  widget: editscreen()),
                            );
                          },
                          child: Icon(Icons.settings))),
                ),
              ),
            ),
            /*ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(4),
              children: <Widget>[
                Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF89EBD4),
                            Color(0xFF94E5FF),
                          ],
                        ),
                        backgroundBlendMode: BlendMode.multiply),

                    margin: EdgeInsets.all(10),
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          title: Text(
                            "Your Saved Medicine Name",
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Your Saved Medicine Dose quantity with time",
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  Transitions(
                                      transitionType: TransitionType.fade,
                                      curve: Curves.bounceInOut,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      reverseCurve: Curves.bounceOut,
                                      widget: editscreen()),
                                );
                              },
                              child: Icon(Icons.settings))),
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF89EBD4),
                            Color(0xFF94E5FF),
                          ],
                        ),
                        backgroundBlendMode: BlendMode.multiply),

                    margin: EdgeInsets.all(10),
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          title: Text(
                            "Your Saved Medicine Name",
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Your Saved Medicine Dose quantity with time",
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  Transitions(
                                      transitionType: TransitionType.fade,
                                      curve: Curves.bounceInOut,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      reverseCurve: Curves.bounceOut,
                                      widget: editscreen()),
                                );
                              },
                              child: Icon(Icons.settings))),
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF89EBD4),
                            Color(0xFF94E5FF),
                          ],
                        ),
                        backgroundBlendMode: BlendMode.multiply),

                    margin: EdgeInsets.all(10),
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          title: Text(
                            "Your Saved Medicine Name",
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Your Saved Medicine Dose quantity with time",
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  Transitions(
                                      transitionType: TransitionType.fade,
                                      curve: Curves.bounceInOut,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      reverseCurve: Curves.bounceOut,
                                      widget: editscreen()),
                                );
                              },
                              child: Icon(Icons.settings))),
                    ),
                  ),
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
