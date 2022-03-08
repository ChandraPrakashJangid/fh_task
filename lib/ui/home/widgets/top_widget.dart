import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme/app_theme.dart';
import '/theme/app_text_style.dart';
import '/utils/app_assets.dart';
import '/utils/app_size.dart';
import 'rounded_widget.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppIcons.unionIcon,
          height: AppSize.paddingL,
          width: AppSize.paddingL,
        ),
        const SizedBox(
          width: AppSize.paddingS,
        ),
        Text(
          'Common area',
          style: AppTextStyle.getStyle().title,
        ),
        const Spacer(),
        RoundedButton(
          color: AppTheme.colors.black!,
          title: 'contact',
          callback: () {},
          preFixIcon: Icons.add,
        ),
        RoundedButton(
          color: AppTheme.colors.black!,
          title: 'room',
          callback: () {},
          preFixIcon: Icons.add,
        ),
        RoundedButton(
          color: AppTheme.colors.black!,
          title: 'DEVICE',
          callback: () {},
          preFixIcon: Icons.add,
        ),
        RoundedButton(
          color: AppTheme.colors.black!,
          title: '8 NoteS',
          callback: () {},
          preFixIcon: Icons.add,
          suffixIcon: Icons.arrow_forward_ios_outlined,
        ),
      ],
    );
  }
}
