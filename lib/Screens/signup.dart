// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:figmaproject/Customs/Export/import.dart';

class signup extends StatelessWidget {
  final _name = TextEditingController();
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
              'Hello Beautiful',
              style:
                  TextStyle(fontFamily: 'Raleway', color: Constants.colorfont),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Sign Up',
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
              height: 250,
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextField(
              onFieldSubmitted: (v) {
                FocusScope.of(context).nextFocus();
              },
              textInputAction: TextInputAction.next,
              hintText: 'Full Name',
              textInputType: TextInputType.name,
              textEditingController: _name,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              onFieldSubmitted: (v) {
                FocusScope.of(context).nextFocus();
              },
              textInputAction: TextInputAction.next,
              hintText: 'Emirates ID',
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 20,
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
                      Navigator.of(context).push(
                        Transitions(
                            transitionType: TransitionType.fade,
                            curve: Curves.bounceInOut,
                            duration: const Duration(milliseconds: 500),
                            reverseCurve: Curves.bounceOut,
                            widget: home(0)),
                      );
                    },
                    child: Text('Sign Up',
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
                    'Already have an account? ',
                    style: TextStyle(
                      fontFamily: Constants.appFont,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Login',
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
