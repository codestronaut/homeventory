import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  final Widget widget;
  const CustomFooter({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 2.0,
            color: Colors.grey[100]!,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: widget,
    );
  }
}
