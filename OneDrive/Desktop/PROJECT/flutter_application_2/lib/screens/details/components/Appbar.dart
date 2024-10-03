import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final List<Widget>? actions;
  final Widget? leading;
  final bool? centerTitle;
  final Color? backgroundColor;
  final double? leadingWidth;
  final TextStyle? stylesubtitle;
  final TextStyle? styletitle;

  Appbar({
    required this.title,
    this.actions,
    this.leading,
    this.centerTitle,
    required this.subtitle,
    this.backgroundColor,
    this.leadingWidth,
    this.stylesubtitle,
    this.styletitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: KTextColorwhite,
        title: Column(
          children: [
            Text(title),
            Text(
              subtitle,
              style: stylesubtitle,
            )
          ],
        ),
        leading: leading,
        leadingWidth: leadingWidth,
        centerTitle: centerTitle,
        actions: actions);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
