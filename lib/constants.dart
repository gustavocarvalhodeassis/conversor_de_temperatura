import 'package:flutter/material.dart';

const Color kLightColor = Color(0XFFFFFFFF);
const Color kDarkColor = Color(0XFF000000);
const TextStyle labelTextStyle = TextStyle(color: Colors.white);
const TextStyle prefixTextStyle = TextStyle(color: Colors.white);
const TextStyle inputTextStyle = TextStyle(color: Colors.white);
const TextStyle megaTextStyle = TextStyle(
  color: kLightColor,
  fontSize: 30,
);

Widget buildTextFields(String label, String prefix,
    TextEditingController controler, Function(String) f) {
  return TextFormField(
    onChanged: f,
    controller: controler,
    keyboardType: TextInputType.number,
    textAlignVertical: TextAlignVertical.center,
    textCapitalization: TextCapitalization.words,
    textInputAction: TextInputAction.next,
    style: inputTextStyle,
    decoration: InputDecoration(
        border: inputDecorationNormalState(),
        errorBorder: inputDecorationErro(),
        enabledBorder: inputDecorationNormalState(),
        focusedBorder: inputDecoration(),
        disabledBorder: inputDecorationNormalState(),
        focusedErrorBorder: inputDecorationErro(),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        alignLabelWithHint: true,
        labelText: label,
        labelStyle: labelTextStyle,
        prefixText: prefix,
        prefixStyle: prefixTextStyle,
        filled: true,
        fillColor: kLightColor.withOpacity(0.1)),
  );
}

inputDecoration() {
  return UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: kLightColor));
}

inputDecorationNormalState() {
  return UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: kLightColor.withOpacity(0)));
}

inputDecorationErro() {
  return UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: kLightColor));
}

Widget InputPadding() {
  return Padding(padding: EdgeInsets.only(top: 15));
}
