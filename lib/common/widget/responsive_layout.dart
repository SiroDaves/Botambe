import 'package:flutter/material.dart';

import '../../core/theme/theme_colors.dart';
import '../../core/theme/theme_styles.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget child;
  final bool showMobileView;

  const ResponsiveLayout({
    super.key,
    required this.child,
    this.showMobileView = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isLargeScreen = constraints.maxWidth > PageBreaks.standardBreakPt;
        bool isMobileScreen = constraints.maxWidth < PageBreaks.mobileWidth;
        double contentWidth = constraints.maxWidth;

        if (showMobileView) {
          if (isMobileScreen) {
            contentWidth = constraints.maxWidth;
          } else {
            contentWidth = PageBreaks.mobileWidth;
          }
        } else if (isLargeScreen) {
          if (isMobileScreen) {
            contentWidth = constraints.maxWidth;
          } else {
            contentWidth = PageBreaks.bigScreen;
          }
        }

        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: contentWidth),
            child: child,
          ),
        );
      },
    );
  }
}

class SplitScreenLayout extends StatelessWidget {
  final BoxConstraints constraints;
  final Widget leftPanel;
  final Widget rightPanel;
  final String title1;
  final String title2;
  final String title3;
  final bool showNavigation;

  const SplitScreenLayout({
    super.key,
    required this.constraints,
    required this.leftPanel,
    required this.rightPanel,
    this.title1 = '',
    this.title2 = '',
    this.title3 = '',
    this.showNavigation = true,
  });

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = constraints.maxWidth > PageBreaks.standardBreakPt;
    Widget? bodyWidget;
    if (isLargeScreen) {
      bodyWidget = Row(
        children: [
          SizedBox(
            width: constraints.maxWidth / 2.1,
            child: leftPanel,
          ),
          const VerticalDivider(
            thickness: 1,
            width: 40,
            color: Colors.grey,
          ),
          Expanded(
            child: Container(
              color: ThemeColors.lightGray,
              child: rightPanel,
            ),
          ),
        ],
      );
    } else {
      bodyWidget = leftPanel;
    }

    return Scaffold(
      body: bodyWidget,
    );
  }
}
