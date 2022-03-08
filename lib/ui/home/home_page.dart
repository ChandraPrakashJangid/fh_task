import 'package:fh_task/model/button_model.dart';
import 'package:fh_task/theme/app_colors.dart';
import 'package:fh_task/theme/app_text_style.dart';
import 'package:fh_task/theme/app_theme.dart';
import 'package:fh_task/ui/home/widgets/data_in_row.dart';
import 'package:fh_task/ui/home/widgets/rounded_widget.dart';
import 'package:fh_task/ui/home/widgets/text_with_images.dart';

import 'widgets/main_row.dart';
import 'widgets/top_widget.dart';
import '/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../utils/app_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(AppSize.paddingM),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopWidget(),
              const SizedBox(
                height: AppSize.paddingS,
              ),
              MainRow(
                firstRow: DataInRow(
                  rowData: const [
                    TextWithImages(
                      image1: AppIcons.faceIcon,
                      title: "Mario Mario",
                      secTapImage: AppIcons.copy,
                    ),
                    TextWithImages(
                      image1: AppIcons.callIcon,
                      title: "+47 44 44 44 44",
                      secTapImage: AppIcons.copy,
                    ),
                    TextWithImages(
                      title: "Priority 1",
                    ),
                    TextWithImages(
                      image1: AppIcons.email,
                      title: "mario@castle.com",
                      secTapImage: AppIcons.copy,
                    ),
                  ],
                ),
                secondRow: DataInRow(
                  rowData: [
                    TextWithImages(
                      title: 'Updated At',
                      textStyle: AppTextStyle.getStyle()
                          .bodyMainTextStyle!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const TextWithImages(
                      title: '01.01.1970',
                    ),
                  ],
                ),
                fourthRow: DataInRow(
                  rowData: [
                    RoundedButton(
                      title: 'Edit',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: 'Delete',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.paddingM,
              ),
              MainRow(
                firstRow: DataInRow(
                  rowData: [
                    const TextWithImages(
                      image1: AppIcons.instaIcon,
                      title: "Smoke detector",
                    ),
                    TextWithImages(
                      image1: AppIcons.nullCheckIcon,
                      title: "Offline",
                      textStyle: AppTextStyle.getStyle()
                          .bodyMainTextStyle!
                          .copyWith(
                              fontWeight: FontWeight.w600,
                              color: const AppColor.getColor().warningColor),
                    ),
                    TextWithImages(
                      image1: AppIcons.nullCheckIcon,
                      title: "Tampered",
                      textStyle: AppTextStyle.getStyle()
                          .bodyMainTextStyle!
                          .copyWith(
                              fontWeight: FontWeight.w600,
                              color: const AppColor.getColor().warningColor),
                    ),
                    const TextWithImages(
                      image1: AppIcons.correctIcon,
                      title: "Configured",
                    ),
                  ],
                ),
                secondRow: DataInRow(
                  rowData: [
                    TextWithImages(
                      title: "Address",
                      textStyle: AppTextStyle.getStyle()
                          .bodyMainTextStyle!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const TextWithImages(
                      title: "2_0",
                      secTapImage: AppIcons.copy,
                    )
                  ],
                ),
                thirdRow: DataInRow(
                  rowData: [
                    TextWithImages(
                      title: "Device ID",
                      textStyle: AppTextStyle.getStyle()
                          .bodyMainTextStyle!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const TextWithImages(
                      title: "1",
                    ),
                  ],
                ),
                fourthRow: DataInRow(
                  rowData: [
                    RoundedButton(
                      title: 'Edit',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: 'Unpair',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: 'Delete',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: 'Identify',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: 'Sensitivity',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: 'Test Siren',
                      callback: () {},
                      color: Colors.white,
                    ),
                    const Spacer(),
                    RoundedButton(
                      title: 'Timeline',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: '8 Notes',
                      callback: () {},
                      color: Colors.white,
                      suffixIcon: Icons.arrow_forward_ios_outlined,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.paddingM,
              ),
              MainRow(
                firstRow: DataInRow(
                  rowData: [
                    const TextWithImages(
                      image1: AppIcons.wlsIcon,
                      title: "Water leak detector",
                    ),
                    TextWithImages(
                      image1: AppIcons.nullCheckIcon,
                      title: "Offline",
                      textStyle: AppTextStyle.getStyle()
                          .bodyMainTextStyle!
                          .copyWith(
                              fontWeight: FontWeight.w600,
                              color: const AppColor.getColor().warningColor),
                    ),
                    TextWithImages(
                      image1: AppIcons.nullCheckIcon,
                      title: "Tampered",
                      textStyle: AppTextStyle.getStyle()
                          .bodyMainTextStyle!
                          .copyWith(
                              fontWeight: FontWeight.w600,
                              color: const AppColor.getColor().warningColor),
                    ),
                    const TextWithImages(
                      image1: AppIcons.correctIcon,
                      title: "Configured",
                    ),
                  ],
                ),
                secondRow: DataInRow(
                  rowData: [
                    TextWithImages(
                      title: "Address",
                      textStyle: AppTextStyle.getStyle()
                          .bodyMainTextStyle!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const TextWithImages(
                      title: "2_0",
                      secTapImage: AppIcons.copy,
                    )
                  ],
                ),
                thirdRow: DataInRow(
                  rowData: [
                    TextWithImages(
                      title: "Device ID",
                      textStyle: AppTextStyle.getStyle()
                          .bodyMainTextStyle!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const TextWithImages(
                      title: "1",
                    ),
                  ],
                ),
                fourthRow: DataInRow(
                  rowData: [
                    RoundedButton(
                      title: 'Edit',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: 'Delete',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: 'Identify',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: 'Ping',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    const Spacer(),
                    RoundedButton(
                      title: 'Timeline',
                      callback: () {},
                      color: AppTheme.colors.black,
                    ),
                    RoundedButton(
                      title: '8 Notes',
                      callback: () {},
                      color: Colors.white,
                      suffixIcon: Icons.arrow_forward_ios_outlined,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
