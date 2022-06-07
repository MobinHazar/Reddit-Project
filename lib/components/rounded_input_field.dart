import 'package:flutter/material.dart';
import 'package:reddit/components/text_field_container.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  //final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          icon: const Icon(
            Icons.person,
            color: Colors.yellow ,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
