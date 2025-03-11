import 'package:flutter/material.dart';

class Validation {
  bool validated;
  String error;

  Validation({this.validated = true, this.error = ''});
}

class RespModel {
  String feedback;
  dynamic response;

  RespModel({this.feedback = '', this.response});
}

enum PageType { home, habits, stats, profile }

List<PageType> pages = [
  PageType.home,
  PageType.habits,
  PageType.stats,
  PageType.profile,
];

class PageItem {
  const PageItem({
    required this.title,
    required this.icon,
    required this.screen,
  });
  final String title;
  final IconData icon;
  final Widget screen;
}
