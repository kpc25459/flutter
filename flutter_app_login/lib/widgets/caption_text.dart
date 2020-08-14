import 'package:flutter/material.dart';

class CaptionText extends StatelessWidget {
  final caption;

  const CaptionText({
    Key key,
    this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 120),
      child: caption,
    );
  }
}