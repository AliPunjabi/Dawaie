// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Dawaie/Customs/Export/import.dart';

enum SingingCharacter { lafayette, jefferson }

class subscribe0 extends StatefulWidget {
  @override
  State<subscribe0> createState() => _subscribe0State();
}

class _subscribe0State extends State<subscribe0> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          child: Column(
            children: [
              SizedBox(
                height: 140,
              ),
              //ere container is used as a app bar
              Center(
                child: Text(
                  "You Are Just One Step Away!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Constants.colorMain,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/sub.png',
                height: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("Subscribe Now For Only \$10.00",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Constants.colorMain,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway')),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "You are just one step away for becoming a premium member of our app. Subscribe now and enjow the exclusive features with the full potential",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Constants.colorMain,
                        fontSize: 15,
                        fontFamily: 'Raleway'),
                  ),
                ),
              ),
              SizedBox(
                height: 230,
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
                        /* Navigator.of(context).push(
                          //transitions used inside navigation for smooth exchange of screens
                          Transitions(
                              //you can check its properties from lib/Customs/transitions.dart
                              transitionType: TransitionType.fade,
                              curve: Curves.bounceInOut,
                              duration: const Duration(milliseconds: 500),
                              reverseCurve: Curves.bounceOut,
                              widget:
                                  subscribe()), //this will leads you to signup screen
                        );*/
                        showModalBottomSheet<void>(
                          // context and builder are
                          // required properties in this widget
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                              builder: (BuildContext context, setState) {
                                return SizedBox(
                                  height: 200,
                                  child: Center(
                                      child: Column(children: [
                                    ListTile(
                                      title: const Text('Debit/Credit'),
                                      leading: Radio<SingingCharacter>(
                                        value: SingingCharacter.lafayette,
                                        groupValue: _character,
                                        onChanged: (SingingCharacter? value) {
                                          _character = value;
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    ListTile(
                                      title: const Text('Paypal'),
                                      leading: Radio<SingingCharacter>(
                                        value: SingingCharacter.jefferson,
                                        groupValue: _character,
                                        onChanged: (SingingCharacter? value) {
                                          _character = value;
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    CustomElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            Transitions(
                                                transitionType:
                                                    TransitionType.fade,
                                                curve: Curves.bounceInOut,
                                                duration: const Duration(
                                                    milliseconds: 500),
                                                reverseCurve: Curves.bounceOut,
                                                widget: subscribe()),
                                          );
                                        },
                                        child: Text('Continue',
                                            style: TextStyle(
                                              color: Constants.colorbuttonfont,
                                            ))),
                                  ])),
                                );
                              },
                            );
                          },
                        );
                      },
                      child: Text('Subscribe Now',
                          style: TextStyle(
                            color: Constants.colorbuttonfont,
                          ))),
                ),
              ),
            ],
          )),
    );
  }
}
