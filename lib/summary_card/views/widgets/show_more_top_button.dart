import 'package:flutter/material.dart';
import 'package:summary_card/summary_card/shared/themes/app_colors.dart';

import 'alert_dialog.dart';

class ShowMoreTopButton extends StatelessWidget {
  const ShowMoreTopButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key("testTopButton"),
      onPressed: () {
        showAlertDialog(context, 'superior');
      },
      child: Center(
        child: Icon(
          Icons.more_vert,
          color: AppColors.threeDots,
        ),
      ),
    );
  }
}
