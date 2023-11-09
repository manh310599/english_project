import 'package:english_project/dimens.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EditText extends StatefulWidget {
  EditText({
    super.key,
    this.hinText,
    this.icon,
    this.callback,
    this.click,
    this.stylePassWord,
    this.preIcon,
    this.search,
  });

  final String? hinText;
  final Icon? icon;
  final bool? click;
  bool? stylePassWord;

  final Function(String? data)? callback;
  final Icon? preIcon;
  final Function(String? data)? search;
  
  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: TextFormField(
        controller: _textEditingController,
        obscureText: widget.stylePassWord ?? false,
        onChanged: (value) {
          if (widget.callback != null) {
            widget.callback!(value);
          }
        },
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Dimens.rad_circular),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          hintText: widget.hinText,
          border: const OutlineInputBorder(),
          // prefixIcon: InkWell(onTap: () {
          //   _textEditingController.clear();
          // },child: widget.preIcon),
          prefixIcon: InkWell(onTap: () {
            _textEditingController.clear();
          },child: widget.preIcon,).h0(context),
          suffixIcon: InkWell(
              onTap: () {
                widget.click == true
                    ? setState(() {
                        widget.stylePassWord == false
                            ? widget.stylePassWord = true
                            : widget.stylePassWord = false;
                      })
                    : widget.search!(_textEditingController.text);
                _textEditingController.clear();
              },
              child: widget.icon),
        ),
      ),
    );
  }
}
