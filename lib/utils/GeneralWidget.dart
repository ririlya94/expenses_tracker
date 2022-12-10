import 'package:expenses_tracker/utils/ConstantFont.dart';
import 'package:flutter/material.dart';

Widget TextBold(String text, Color color,double fontSize,TextAlign textAlign,int? maxLines){
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        fontSize: fontSize,
        fontFamily: ConstantFontName.interBold,
        color: color
    ),
  );
}