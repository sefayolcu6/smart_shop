import 'package:flutter/material.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';

class RedirectMenuCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final VoidCallback onTap;

  const RedirectMenuCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  _RedirectMenuCardState createState() => _RedirectMenuCardState();
}

class _RedirectMenuCardState extends State<RedirectMenuCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstant.instance.blue50,
      child: ListTile(
        leading: Icon(widget.leadingIcon),
        title: Text(widget.title),
        subtitle: Text(widget.subtitle),
        trailing: Icon(widget.trailingIcon),
        onTap: widget.onTap,
      ),
    );
  }
}
