// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:Dawaie/Customs/Export/import.dart';

class subscribe extends StatelessWidget {
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
              "Subscribe Now in just \$10.0",
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
              height: 230,
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextField(
              onFieldSubmitted: (v) {
                FocusScope.of(context).nextFocus();
              },
              textInputAction: TextInputAction.next,
              hintText: 'Card Number',
              textInputType: TextInputType.number,
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
              hintText: 'Name on card',
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
              hintText: 'Expiration (MM/YY)',
              textInputType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              onFieldSubmitted: (v) {
                FocusScope.of(context).nextFocus();
              },
              textInputAction: TextInputAction.next,
              hintText: 'CVV',
              textInputType: TextInputType.number,
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
                      Constants.toastMessage("Successfully Paid");
                      Future.delayed(Duration(seconds: 2), () {
                        Navigator.of(context).push(
                          Transitions(
                              transitionType: TransitionType.fade,
                              curve: Curves.bounceInOut,
                              duration: const Duration(milliseconds: 500),
                              reverseCurve: Curves.bounceOut,
                              widget: home(0)),
                        );
                      });
                    },
                    child: Text('Pay Now & Continue',
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
                      widget: login()),
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
