import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    Key? key,

    required this.selected,
    this.marginEnd =0

  }) : super(key: key);

  final bool selected;
  final double marginEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      decoration: BoxDecoration(
          color: selected ? Color(0xFF38972E): Color(0xFFdddddd),
          borderRadius: BorderRadius.circular(2)

      ),
    );
  }
}