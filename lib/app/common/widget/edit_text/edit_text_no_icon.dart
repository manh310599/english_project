import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../dimens.dart';

class EditTextNoIcon extends StatefulWidget {
  const EditTextNoIcon({
    super.key,
    this.text,
    this.data,
    this.content,
    this.enable,
    this.styleInput,
  });

  final String? text;
  final Function(String? data)? data;

  final String? content;
  final bool? enable;
  final TextInputType? styleInput;

  @override
  State<EditTextNoIcon> createState() => _EditTextNoIconState();
}

class _EditTextNoIconState extends State<EditTextNoIcon> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.text = widget.content ?? '';
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextFormField(
          keyboardType: widget.styleInput ?? TextInputType.text,
          enabled: widget.enable ?? true,
          controller: textEditingController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Dimens.rad_circular),
                borderSide: BorderSide(
                  color: Colors.white,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Dimens.rad_circular),
                borderSide: BorderSide(
                  color: Colors.white,
                )),
          ),
        ).expand(),
        CupertinoButtonEdit(
          text: widget.text,
          textColor: Colors.black,
          onPressed: () {
            widget.data!(textEditingController.text);
          },
          color: Colors.greenAccent,
        )
      ],
    );
  }
}
