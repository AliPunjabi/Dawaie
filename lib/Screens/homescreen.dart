// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:figmaproject/Customs/Export/import.dart';
import 'package:figmaproject/Screens/pillreminder.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          height: 100,
          child: Card(
            color: Colors.transparent,
            // ignore: sort_child_properties_last
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                minLeadingWidth: 0,
                leading: Image.asset(
                  'assets/images/hand.png',
                  height: 30,
                ),
                title: Text(
                  "Hi Julia!",
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 0,
            margin: EdgeInsets.only(top: 30),
          ),
        ),
        ListView(
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
                      "Medical Record",
                      style: TextStyle(
                          fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                    ),
                    trailing: Image.asset(
                      'assets/images/2.png',
                      height: 50,
                    ),
                  ),
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
                      "My Condition",
                      style: TextStyle(
                          fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                    ),
                    trailing: Image.asset(
                      'assets/images/1.png',
                      height: 50,
                    ),
                  ),
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
                      "My Medication",
                      style: TextStyle(
                          fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                    ),
                    trailing: Image.asset(
                      'assets/images/3.png',
                      height: 50,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  Transitions(
                      transitionType: TransitionType.fade,
                      curve: Curves.bounceInOut,
                      duration: const Duration(milliseconds: 500),
                      reverseCurve: Curves.bounceOut,
                      widget: pillscreen()),
                );
              },
              child: Card(
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
                        "Pill Reminder",
                        style: TextStyle(
                            fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                      ),
                      trailing: Image.asset(
                        'assets/images/4.png',
                        height: 50,
                      ),
                    ),
                  ),
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
                      "Symptoms Tracker",
                      style: TextStyle(
                          fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                    ),
                    trailing: Image.asset(
                      'assets/images/5.png',
                      height: 50,
                    ),
                  ),
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
                      "Ask Pharmacist",
                      style: TextStyle(
                          fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                    ),
                    trailing: Image.asset(
                      'assets/images/6.png',
                      height: 50,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
