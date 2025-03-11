import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:textstyle_extensions/textstyle_extensions.dart';
import 'package:time/time.dart';

import '../../../core/theme/theme_colors.dart';
import '../../../core/theme/theme_fonts.dart';
import '../../data/models/basic_models.dart';
import '../../utils/constants/app_constants.dart';

part 'sidebar_btn.dart';

class Sidebar extends StatelessWidget {
  final Function(PageType) onSelect;
  final PageType? pageType;

  const Sidebar({super.key, required this.pageType, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    var itemsColumn = Column(
      children: <Widget>[
        SidebarBtn(
          Icons.home_outlined,
          'Home',
          pageType: PageType.home,
          isSelected: pageType == PageType.home,
          onPressed: () => onSelect(PageType.home),
        ),
        SidebarBtn(
          Icons.bar_chart_outlined,
          'Habits',
          pageType: PageType.habits,
          isSelected: pageType == PageType.habits,
          onPressed: () => onSelect(PageType.habits),
        ),
        SidebarBtn(
          Icons.pie_chart_outline,
          'Statistics',
          pageType: PageType.habits,
          isSelected: pageType == PageType.stats,
          onPressed: () => onSelect(PageType.stats),
        ),
        const Spacer(),
        const Divider(color: ThemeColors.primaryDark, height: 1),
        SidebarBtn(
          Icons.person_outline,
          'Profile',
          pageType: PageType.profile,
          isSelected: pageType == PageType.profile,
          onPressed: () => onSelect(PageType.profile),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appTitle, style: TextStyle(fontSize: 25)),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: ThemeColors.primary,
            ),
          ),
        ),
        child: itemsColumn.padding(bottom: 20).constrained(maxWidth: 250),
      ),
    );
  }
}
