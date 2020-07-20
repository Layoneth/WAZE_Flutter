import 'package:flutter/material.dart';
import 'package:waze/utils/typography.dart';

AppBar myAppBar(String text, {List<Widget> actions}){
  return AppBar(
    title: Center(
      child: Text(
        text,
        style: MyTypography.whiteTittle,
      ),
    ),
    actions: actions,
  );
}
