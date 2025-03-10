import 'package:flutter/material.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';

class AppCheckBox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const AppCheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _AppCheckBoxState createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: ColorConstant.instance.primaryColor,
      value: widget.value,
      onChanged: widget.onChanged,
    );
  }
}

class AppCheckBoxLabel extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String label;

  const AppCheckBoxLabel({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.label,
  }) : super(key: key);

  @override
  _AppCheckBoxLabelState createState() => _AppCheckBoxLabelState();
}

class _AppCheckBoxLabelState extends State<AppCheckBoxLabel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: ColorConstant.instance.primaryColor,
          value: widget.value,
          onChanged: widget.onChanged,
        ),
        Text(widget.label),
      ],
    );
  }
}

class AppCheckBoxListTile extends StatefulWidget {
  final Widget title;
  final Widget subtitle;
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const AppCheckBoxListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _AppCheckBoxListTileState createState() => _AppCheckBoxListTileState();
}

class _AppCheckBoxListTileState extends State<AppCheckBoxListTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: widget.title,
      subtitle: widget.subtitle,
      value: widget.value,
      onChanged: widget.onChanged,
    );
  }
}
