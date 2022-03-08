import 'package:flutter/material.dart';

import '/theme/app_theme.dart';
import '/utils/app_size.dart';

class MainRow extends StatefulWidget {
  final Widget? firstRow;
  final Widget? secondRow;
  final Widget? thirdRow;
  final Widget? fourthRow;

  const MainRow({
    Key? key,
    this.firstRow,
    this.secondRow,
    this.thirdRow,
    this.fourthRow,
  }) : super(key: key);

  @override
  _MainRowState createState() => _MainRowState();
}

class _MainRowState extends State<MainRow> {
  bool height = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(AppSize.paddingS),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: AppTheme.colors.skyColor!,
        ),
        borderRadius: BorderRadius.circular(AppSize.paddingS),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.firstRow!,
              const Spacer(),
              GestureDetector(
                onTap: () => setState(() {
                  height == false ? height = true : height = false;
                }),
                child: Container(
                  child: height == true
                      ? const Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: Colors.black,
                          size: 13.5,
                        )
                      : const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 13.5,
                          color: Colors.black,
                        ),
                ),
              ),
            ],
          ),
          height == true
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: AppSize.s14,
                    ),
                    widget.secondRow!,
                    const SizedBox(
                      height: AppSize.paddingS,
                    ),
                    if (widget.thirdRow != null) widget.thirdRow!,
                    const SizedBox(
                      height: AppSize.paddingS,
                    ),
                    widget.fourthRow!,
                  ],
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
