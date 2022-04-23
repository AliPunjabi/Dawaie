// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:figmaproject/Customs/Export/import.dart';

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
                    child: Text('Login',
                        style: TextStyle(
                          color: Constants.colorbuttonfont,
                        ))),
              ),
            ),
            SizedBox(
              height: 20,
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
              child: Row(
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
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontFamily: Constants.appFont,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
