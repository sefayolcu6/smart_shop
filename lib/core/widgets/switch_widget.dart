import 'package:flutter/material.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';
import 'package:smart_shop/core/constants/padding_constants.dart';

class AppSwitch extends StatefulWidget {
  final bool isActive;
  final bool Function(bool) onChanged;
  const AppSwitch({
    super.key,
    required this.isActive,
    required this.onChanged,
  });

  @override
  State<AppSwitch> createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstant.instance.appPaddingAll2,
      child: Switch(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          focusNode: FocusNode(),
          activeTrackColor: ColorConstant.instance.amber,
          value: widget.isActive,
          activeColor: ColorConstant.instance.red,
          onChanged: widget.onChanged),
    );
  }
}
