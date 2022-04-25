// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Dawaie/Customs/Export/import.dart';

// in this screen you can make changes to your save reminder
// class structure and all widgets are same, so no need of adding comments:)
class editscreen extends StatefulWidget {
  @override
  State<editscreen> createState() => _editscreenState();
}

class _editscreenState extends State<editscreen> {
  TextEditingController _medicine = TextEditingController();
  TextEditingController _dose = TextEditingController();
  TextEditingController _time = TextEditingController();
  String? dropdownValue;
  List<String> litems = [];
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
                      Navigator.of(context).push(
                        Transitions(
                            transitionType: TransitionType.fade,
                            curve: Curves.bounceInOut,
                            duration: const Duration(milliseconds: 500),
                            reverseCurve: Curves.bounceOut,
                            widget: homescreen()),
                      );
                    },
                    child: GestureDetector(
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
                      child: Icon(
                        Icons.keyboard_backspace,
                        color: Constants.colorfont,
                      ),
                    ),
                  ),
                  title: Text(
                    "Edit Pill Reminder",
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
            Image.asset(
              'assets/images/4.png',
              height: 130,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Edit Reminder',
              style: TextStyle(
                fontFamily: 'Raleway',
                color: Constants.colorfont,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppLabelWidget(
                    title: 'Medication Name',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: CustomTextField(
                onFieldSubmitted: (v) {
                  FocusScope.of(context).nextFocus();
                },
                textInputAction: TextInputAction.next,
                hintText: '',
                textEditingController: _medicine,
                textInputType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppLabelWidget(
                    title: 'Starting From:',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: CustomTextField(
                onFieldSubmitted: (v) {
                  FocusScope.of(context).nextFocus();
                },
                textInputAction: TextInputAction.next,
                hintText: 'DD/MM//YY',
                textInputType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppLabelWidget(
                    title: 'Number of Doses/Pill',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: CustomTextField(
                onFieldSubmitted: (v) {
                  FocusScope.of(context).nextFocus();
                },
                textInputAction: TextInputAction.next,
                textEditingController: _dose,
                hintText: '',
                textInputType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16),
              child: Row(
                children: [
                  Text('Time: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 40,
                    child: CustomTextField(
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).nextFocus();
                      },
                      textInputAction: TextInputAction.next,
                      textEditingController: _time,
                      hintText: '',
                      textInputType: TextInputType.number,
                    ),
                  ),
                  Text(
                    ' : ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                    child: CustomTextField(
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).nextFocus();
                      },
                      textInputAction: TextInputAction.next,
                      hintText: '',
                      textInputType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 90,
                      height: 47,
                      child: FormField<String>(
                          builder: (FormFieldState<String> state) {
                        return InputDecorator(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(12, 10, 20, 20),
                              // labelText: "hi",
                              // labelStyle: textStyle,
                              // labelText: _dropdownValue == null
                              //     ? 'Where are you from'
                              //     : 'From',

                              hintStyle: TextStyle(color: Constants.colorfont),
                              errorStyle: TextStyle(
                                  fontFamily: Constants.appFont,
                                  color: Constants.coloroborder),
                              filled: true,
                              fillColor: Constants.colorbuttonfont,

                              errorMaxLines: 2,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    width: 1.0, color: Constants.colorfont),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    width: 1.0, color: Constants.coloroborder),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    width: 1.0, color: Constants.coloroborder),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    width: 2.0, color: Constants.coloroborder),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    width: 2.0, color: Colors.red),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.red),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Constants.colorfont,
                                  fontFamily: "Raleway",
                                ),
                                hint: Text(
                                  "AM/PM",
                                  style: TextStyle(
                                    color: Constants.colorfont,
                                    fontSize: 16,
                                    fontFamily: "Raleway",
                                  ),
                                ),
                                value: dropdownValue == null
                                    ? null
                                    : dropdownValue,
                                isExpanded: true,
                                isDense: true,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'AM',
                                  'PM',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ));
                      }),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
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
                            widget: listscreen(
                                _medicine.text, _dose.text, _time.text)),
                      );
                    },
                    child: Text('Save Reminder',
                        style: TextStyle(
                          color: Constants.colorbuttonfont,
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
