import 'package:flutter/material.dart';
import 'package:smart_shop/core/widgets/choise_card_widget.dart';

class ChoiseCardRadioButtonWidget extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final int radioButtonValue;
  final int groupValue;
  const ChoiseCardRadioButtonWidget(
      {super.key,
      required this.imageUrl,
      required this.subtitle,
      required this.radioButtonValue,
      required this.groupValue});

  @override
  State<ChoiseCardRadioButtonWidget> createState() =>
      _ChoiseCardRadioButtonWidgetState();
}

class _ChoiseCardRadioButtonWidgetState
    extends State<ChoiseCardRadioButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppChoiseCard(
          imageUrl: widget.imageUrl,
        ),
        Text(widget.subtitle),
        Radio<int>(
          value: widget.radioButtonValue,
          groupValue: widget.groupValue,
          onChanged: (value) {
            setState(() {
              print("Button value: $value");
            });
          },
        ),
      ],
    );
  }
}
