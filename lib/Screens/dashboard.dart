// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:Dawaie/Customs/Export/import.dart';

// this is landing page
class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //double width: MediaQuery.of(context).size.width ,
      //Using gradient container as our background
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

      // landing page content starts from here

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Welcome to',
              style:
                  TextStyle(fontFamily: 'Raleway', color: Constants.colorfont),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'DAWAIE',
              style: TextStyle(
                fontFamily: 'Raleway',
                color: Constants.colorfont,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/lottie.png',
              height: 450,
            ),
            SizedBox(
              height: 40,
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
                    // cutom button for signup, you can check it properties from lib/Customs/button.dart
                    onPressed: () {
                      Navigator.of(context).push(
                        //transitions used inside navigation for smooth exchange of screens
                        Transitions(
                            //you can check its properties from lib/Customs/transitions.dart
                            transitionType: TransitionType.fade,
                            curve: Curves.bounceInOut,
                            duration: const Duration(milliseconds: 500),
                            reverseCurve: Curves.bounceOut,
                            widget:
                                signup()), //this will leads you to signup screen
                      );
                    },
                    child: Text('Sign Up',
                        style: TextStyle(
                          color: Constants.colorbuttonfont,
                        ))),
              ),
            ),
            SizedBox(
              height: 15,
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
                //login button
                child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        Transitions(
                            transitionType: TransitionType.fade,
                            curve: Curves.bounceInOut,
                            duration: const Duration(milliseconds: 500),
                            reverseCurve: Curves.bounceOut,
                            widget:
                                login()), //this will leads you to login screen
                      );
                    },
                    child: Text('Login',
                        style: TextStyle(
                          color: Constants
                              .colorbuttonfont, // check lib/Customs/Constants.dart for all colors and fonts used in this app
                        ))),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
