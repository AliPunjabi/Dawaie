// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:figmaproject/Customs/Export/import.dart';

class pillscreen extends StatefulWidget {
  @override
  State<pillscreen> createState() => _pillscreenState();
}

class _pillscreenState extends State<pillscreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(360, 690), orientation: Orientation.portrait);
    return Column(
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
              leading: Icon(
                Icons.keyboard_backspace,
                color: Constants.colorfont,
              ),
              title: Text(
                "Pill Reminder",
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
        SizedBox(
          height: 30,
        ),
        Image.asset(
          'assets/images/4.png',
          height: 300,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'No Reminders Yet!',
          style: TextStyle(
            fontFamily: 'Raleway',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        SizedBox(
          height: 120,
        ),
        SizedBox(
          width: 350,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF89EBD4),
                    Color(0xFF94E5FF),
                  ],
                ),
                backgroundBlendMode: BlendMode.darken),
            child: CustomElevatedButton(
                onPressed: () {
                  /*Navigator.of(context).push(
                        Transitions(
                            transitionType: TransitionType.fade,
                            curve: Curves.bounceInOut,
                            duration: const Duration(milliseconds: 500),
                            reverseCurve: Curves.bounceOut,
                            widget: SigninScreen()),
                      );*/
                },
                child: Text('Add Reminder',
                    style: TextStyle(
                      color: Constants.colorbuttonfont,
                    ))),
          ),
        ),
      ],
    );
  }
}
