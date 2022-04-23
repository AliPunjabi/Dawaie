import 'package:figmaproject/Customs/Export/import.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.hintText,
    required this.textInputType,
    required this.textInputAction,
    this.textEditingController,
    this.errorText,
    this.validator,
    required this.onFieldSubmitted,
  }) : super(key: key);

  final String? hintText, errorText;
  String? Function(String?)? validator;
  Function(String)? onFieldSubmitted;
  final TextEditingController? textEditingController;
  final TextInputType textInputType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      keyboardType: textInputType,
      controller: textEditingController,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Constants.colorfont),
        errorStyle: TextStyle(
            fontFamily: Constants.appFont, color: Constants.coloroborder),
        filled: true,
        fillColor: Constants.colorbuttonfont,
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0, right: 14),
        errorMaxLines: 2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(width: 1.0, color: Constants.colorfont),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(width: 1.0, color: Constants.coloroborder),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(width: 1.0, color: Constants.coloroborder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(width: 2.0, color: Constants.coloroborder),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(width: 2.0, color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(width: 1, color: Colors.red),
        ),
      ).copyWith(hintText: hintText, errorText: errorText),
    );
  }
}
