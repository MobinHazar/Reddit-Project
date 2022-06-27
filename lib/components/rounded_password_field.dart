import 'package:flutter/material.dart';
import 'package:reddit/components/text_field_container.dart';


class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {

    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: widget.onChanged,
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          hintText: "Password",
         icon:
         Icon(
           Icons.lock,
           color: Colors.yellow,
         ),
         suffixIcon: Icon(Icons.visibility,
           color: Colors.yellow
         ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
