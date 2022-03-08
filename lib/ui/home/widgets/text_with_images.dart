import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/app_text_style.dart';
import '../../../theme/app_theme.dart';
import '../../../utils/app_size.dart';

class TextWithImages extends StatelessWidget {
  final String? image1;
  final String? title;
  final String? secTapImage;
  final TextStyle? textStyle;

  const TextWithImages({
    Key? key,
    this.image1,
    this.title,
    this.secTapImage,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          image1 != null
              ? SvgPicture.asset(
                  image1!,
                  height: AppSize.s15,
                  width: AppSize.s15,
                )
              : const SizedBox.shrink(),
          const SizedBox(
            width: AppSize.paddingXS,
          ),
          Text(
            title!,
            style: textStyle == null
                ? AppTextStyle.getStyle().bodyMainTextStyle
                : textStyle!,
          ),
          const SizedBox(
            width: AppSize.paddingXS,
          ),
          secTapImage != null
              ? SvgPicture.asset(
                  secTapImage!,
                  height: AppSize.s15,
                  width: AppSize.s15,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
