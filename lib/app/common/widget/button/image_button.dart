import 'package:flutter/cupertino.dart';

import '../../../../dimens.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
    this.action,
    this.src,
  });

  final VoidCallback? action;
  final String? src;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: action,
      child: Image.asset(
        src ?? 'assets/images/logo.png',
        height: Dimens.ic_XL2,
        width: Dimens.ic_XL2,
      ),
    );
  }
}
