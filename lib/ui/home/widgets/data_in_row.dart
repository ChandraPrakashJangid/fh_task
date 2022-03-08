import 'package:flutter/material.dart';

class DataInRow extends StatelessWidget {
  List<Widget>? rowData;

  DataInRow({
    Key? key,
    this.rowData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: rowData!.map((e) => e).toList(),
    );
  }
}
