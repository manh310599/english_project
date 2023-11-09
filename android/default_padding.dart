

import 'package:english_project/dimens.dart';
import 'package:flutter/cupertino.dart';

extension WidgetExtention on Widget{
  Padding pxDefault({Key? key}) => Padding(
    key: key,
    padding: const EdgeInsets.symmetric(horizontal: Dimens.pad_default),
    child: this,
  );
}

