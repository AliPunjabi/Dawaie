// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:Dawaie/Customs/Export/import.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Welcome back',
              style:
                  TextStyle(fontFamily: 'Raleway', color: Constants.colorfont),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Login',
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
              height: 350,
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextField(
              onFieldSubmitted: (v) {
                FocusScope.of(context).nextFocus();
              },
              textInputAction: TextInputAction.next,
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            //textfield for password
            CustomTextField(
              onFieldSubmitted: (v) {
                FocusScope.of(context).nextFocus();
              },
              textInputAction: TextInputAction.next,
              hintText: 'Password',
              textInputType: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              //here gradient is used again with blend mode to adjust button colors
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
                            widget: home(
                                0)), //homescreen is on index of zero in list of widgets on home, so we are passing zero
                      );
                    },
                    child: Text('Login',
                        style: TextStyle(
                          color: Constants.colorbuttonfont,
                        ))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Don\'t have account? ',
                  style: TextStyle(
                    fontFamily: Constants.appFont,
                    fontSize: 14,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      Transitions(
                          transitionType: TransitionType.fade,
                          curve: Curves.bounceInOut,
                          reverseCurve: Curves.bounceOut,
                          widget: signup()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontFamily: Constants.appFont,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
