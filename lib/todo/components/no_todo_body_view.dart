// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:todo_app/todo/todo_view_export.dart';
import 'package:todo_app/utils/utils_export.dart';
import '../../const/const_extention.dart';

class NoTodoBodyView extends StatelessWidget {
  const NoTodoBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _todoConstruct = TodoConstruct();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // direction: Axis.horizontal,
          children: [
            const CustomText(
              text: AppText.NO_TODO,
            ),
            3.pw,
            const CustomText(
              text: AppText.PLEASE_VISIT,
            ),
            5.pw,
            GestureDetector(
              onTap: () =>
                  _todoConstruct.createTodoCupertinoModelSheet(context),
              child: CustomText(
                text: AppText.ADD_TODO,
                textStyle: const TextStyle().buttonSubTextStyleExtension,
              ),
            ),
          ],
        ),
        10.ph,
        Image.asset(AppPic.TODO_CHICKLIST_PIC_03),
      ],
    );
  }
}
