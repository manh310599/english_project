import 'package:awesome_dialog/awesome_dialog.dart';

import '../api_status.dart';

apiStatus(context,state) {
  if (state.apiStatus == ApiStatus.success) {
    AwesomeDialog(
      context: context,
      btnOkOnPress: () {},
      dialogType: DialogType.success,
      title: 'Load dữ liệu thành công',

    ).show();
  }
  else if (state?.apiStatus == ApiStatus.fail) {
    AwesomeDialog(
      context: context,
      btnOkOnPress: () {},
      dialogType: DialogType.error,
      title: 'Load dữ liệu thất bại',

    ).show();
  }
}