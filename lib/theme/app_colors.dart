import 'dart:ui';


// convenience
AppColor appColors() => AppColor.getColor();

class AppColor {
  final Color? warningColor;
  final Color? skyColor;
  final Color? black;

  const AppColor({
    this.warningColor,
    this.skyColor,
    this.black,
  });

  const AppColor.getColor()
      : warningColor = const Color(0xFFF18303),
        skyColor = const Color(0xFF5CCAF5),
        black = const Color(0xFF2D3436);
}