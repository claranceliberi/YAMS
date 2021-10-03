import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  // const InputField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Data value",
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 20, bottom: 11, top: 15, right: 20),
        ),
      ),
      decoration: BoxDecoration(color: Color.fromRGBO(242, 241, 241, 1), borderRadius: BorderRadius.circular(5)),
    );
  }
}
