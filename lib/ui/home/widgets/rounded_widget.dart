import 'package:flutter/material.dart';

import '/theme/app_text_style.dart';
import '/theme/app_theme.dart';
import '/utils/app_size.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final GestureTapCallback? callback;
  final IconData? preFixIcon;
  final IconData? suffixIcon;
  final Color? color;

  const RoundedButton({
    Key? key,
    required this.title,
    required this.callback,
    this.preFixIcon,
    this.suffixIcon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.paddingS),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.paddingM,
            vertical: AppSize.paddingXS,
          ),
          // height: AppSize.s24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(AppSize.s14),
            border: Border.all(
              width: 1.0,
              color: AppTheme.colors.black!,
            ),
          ),
          child: Center(
            child: Row(
              children: [
                if (preFixIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      preFixIcon,
                      size: AppSize.s10,
                      color:
                          color == Colors.white ? Colors.black : Colors.white,
                    ),
                  ),
                Text(
                  title.toUpperCase(),
                  style: AppTextStyle.getStyle().buttonStyle!.copyWith(
                        color: color == AppTheme.colors.black
                            ? Colors.white
                            : AppTheme.colors.black,
                      ),
                ),
                const SizedBox(
                  width: AppSize.paddingXS,
                ),
                if (suffixIcon != null)
                  Icon(
                    suffixIcon,
                    size: AppSize.s10,
                    color: color == Colors.white ? Colors.black : Colors.white,
                  ),
              ],
            ),
          ),
        ),
        onTap: callback,
      ),
    );
  }
}
