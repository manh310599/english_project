import 'package:english_project/dimens.dart';
import 'package:flutter/material.dart';

class EditText extends StatefulWidget {
  EditText(
      {super.key,
      this.hinText,
      required this.icon,
      this.callback,
      this.click,
      this.stylePassWord,
        this.preIcon
      });

  final String? hinText;
  final Icon icon;
  final bool? click;
  bool? stylePassWord;


  final Function(String? data)? callback;
  final Icon? preIcon;

  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.ic_XS2),
      child: TextFormField(
        obscureText: widget.stylePassWord ?? false,
        onChanged: (value) {
          widget.callback!(value);
        },
        decoration: InputDecoration(
          icon: widget.preIcon,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Dimens.rad_circular),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          hintText: widget.hinText,
          border: const OutlineInputBorder(),
          suffixIcon: InkWell(
              onTap: () {
                widget.click == true ? setState(() {
                  widget.stylePassWord == false
                      ? widget.stylePassWord = true
                      : widget.stylePassWord = false;
                }) : null;
              },
              child: widget.icon),
        ),
      ),
    );
  }
}
