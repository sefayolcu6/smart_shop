import 'package:flutter/material.dart';

class AppListTileCard extends StatefulWidget {
  final Color? color;
  final bool? enabled;
  final bool? dense;
  final VoidCallback? onTap;
  final Widget title;
  final Widget subtitle;
  final Widget? trailing;
  final Widget? leading;

  const AppListTileCard({
    Key? key,
    this.color,
    this.enabled,
    this.dense,
    this.onTap,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.leading,
  }) : super(key: key);

  @override
  _AppListTileCardState createState() => _AppListTileCardState();
}

class _AppListTileCardState extends State<AppListTileCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      child: ListTile(
        onTap: widget.onTap,
        enabled: widget.enabled ?? true,
        dense: widget.dense,
        title: widget.title,
        subtitle: widget.subtitle,
        trailing: widget.trailing,
        leading: widget.leading,
      ),
    );
  }
}
