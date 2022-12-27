import 'package:expenses_tracker/constant/ConstantColor.dart';
import 'package:expenses_tracker/constant//ConstantFont.dart';
import 'package:expenses_tracker/constant/ConstantStyle.dart';
import 'package:expenses_tracker/utils/HelperFunction.dart';
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

Widget TextTitle1(String text,Color color,TextAlign textAlign,int? maxLines){
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        fontSize: 32,
        fontFamily: ConstantFontName.interBold,
        color: color
    ),
  );
}

Widget TextTitle3(String text,Color color,TextAlign textAlign,int? maxLines){
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: ConstantFontName.interRegular,
        color: color,
    ),
  );
}

Widget TextRegular1(String text,Color color,TextAlign textAlign,int? maxLines){
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        fontSize: 16,
        fontFamily: ConstantFontName.interMedium,
        color: color
    ),
  );
}

Widget EmptySeparator(double top,double bottom,double left,double right){
  return Container(
    margin: EdgeInsets.only(top: top,bottom: bottom,left: left,right: right),
  );
}

Widget ButtonPurpleBgWhiteText(
    String title,
    Function onItemTap,
    {double radius = 12, bool gotpaddingLeftRight = true}
    ) {
  return Container(
      width: double.infinity,
      height: ConstantStyle.btnHeight,
      decoration: BoxDecoration(
        color: HexColor(ConstantColor.violet100),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      alignment: Alignment.center,
      margin: gotpaddingLeftRight ? btnScreenPaddingLeftRight() : EdgeInsets.zero,
      child : TextTitle3(
          title,
          HexColor(ConstantColor.light80),
          TextAlign.center,
          10
      )
  );
}

Widget ButtonWhiteBgPurpleTextText(
    String title,
    Function onItemTap,
    {double radius = 12, bool gotpaddingLeftRight = true}
    ) {
  return Container(
      width: double.infinity,
      height: ConstantStyle.btnHeight,
      decoration: BoxDecoration(
        color: HexColor(ConstantColor.violet20),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      alignment: Alignment.center,
      margin: gotpaddingLeftRight ? btnScreenPaddingLeftRight() : EdgeInsets.zero,
      child : TextTitle3(
          title,
          HexColor(ConstantColor.violet100),
          TextAlign.center,
          10
      )
  );
}