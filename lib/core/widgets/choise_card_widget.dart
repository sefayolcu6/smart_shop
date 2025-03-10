import 'package:flutter/material.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';
import 'package:smart_shop/core/mixins/utils.dart';

class AppChoiseCard extends StatefulWidget {
  final String? imageUrl;
  final Widget? body;
  const AppChoiseCard({
    super.key,
    this.imageUrl,
    this.body,
  });

  @override
  State<AppChoiseCard> createState() => _AppChoiseCardState();
}

class _AppChoiseCardState extends State<AppChoiseCard> with Utils {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: ColorConstant.instance.primaryColor,
          width: 2.0,
        ),
      ),
      child: Container(
        // height: screenWidth(context) * 0.3,
        width: screenWidth(context) * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: ColorConstant.instance.primaryColor.withOpacity(0.1),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: widget.imageUrl != null
                ? Image.asset(
                    widget.imageUrl!,
                    fit: BoxFit.fill,
                  )
                : widget.body),
      ),
    );
  }
}
