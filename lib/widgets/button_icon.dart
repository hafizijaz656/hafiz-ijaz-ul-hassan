import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/app_theme.dart';

class ButtonIcon {
  final String name;
  final Uri url;
  final double height;
  final double width;

  ButtonIcon({
    required this.name,
    required this.url,
    this.height = 30.0,
    this.width = 30.0,
  });

  Widget returnButton() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          if (!await launchUrl(url)) {
            throw 'Could not launch $url';
          }
          log("Direct to: $url");
        },
        child: Tooltip(
          message: url.toString(),
          child: Image.asset('assets/icons/$name.png',
              height: height, width: width),
        ),
      ),
    );
  }
}

class CustomButton {
  final String name;
  void Function()? onTap;
  final double height;
  final double width;
  final String message;

  CustomButton({
    required this.name,
    this.onTap,
    this.height = 30.0,
    this.width = 30.0,
    this.message = "Click Here",
  });

  Widget returnButton() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Tooltip(
          message: message,
          child: Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: AppThemeData.primaryColor,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  "Send",
                  style: TextStyle(
                    fontSize:
                    AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                    fontWeight:
                    AppThemeData.darkTheme.textTheme.titleLarge!.fontWeight,
                    color: AppThemeData.textWhite,
                  ),
                ),
                Image.asset(
                  'assets/icons/$name.png',
                  height: height,
                  width: width,
                  color: AppThemeData.iconSecondary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
