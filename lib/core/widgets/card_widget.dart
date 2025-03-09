import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget icon;
  final Widget title;
  final Widget subtitle;
  final Widget textButtonText;
  final Function()? onPress;

  const AppCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.textButtonText,
    this.onPress,
  }) : super(key: key);

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: widget.icon,
            title: widget.title,
            subtitle: widget.subtitle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: widget.onPress,
                child: widget.textButtonText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
