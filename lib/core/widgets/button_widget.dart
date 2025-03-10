import 'package:flutter/material.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';
import 'package:smart_shop/core/constants/padding_constants.dart';
import 'package:smart_shop/core/mixins/utils.dart';

class AppElevatedButton extends StatefulWidget {
  final Widget child;
  final void Function() onPressed;

  const AppElevatedButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  _AppElevatedButtonState createState() => _AppElevatedButtonState();
}

class _AppElevatedButtonState extends State<AppElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: widget.child,
    );
  }
}

class AppTextButtonError extends StatefulWidget {
  final void Function() onTap;
  final String text;

  const AppTextButtonError({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  _AppTextButtonErrorState createState() => _AppTextButtonErrorState();
}

class _AppTextButtonErrorState extends State<AppTextButtonError> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        side: BorderSide(color: ColorConstant.instance.red, width: 2),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
      onPressed: widget.onTap,
      child: Padding(
        padding: PaddingConstant.instance.appPaddingSymmetricHorizontal16,
        child: Text(widget.text, style: TextStyle(color: ColorConstant.instance.red, fontSize: 14, fontWeight: FontWeight.w500)),
      ),
    );
  }
}

class AppTextButtonSuccess extends StatefulWidget {
  final void Function() onTap;
  final String text;

  const AppTextButtonSuccess({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  _AppTextButtonSuccessState createState() => _AppTextButtonSuccessState();
}

class _AppTextButtonSuccessState extends State<AppTextButtonSuccess> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        side: BorderSide(color: ColorConstant.instance.primaryColor, width: 2),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
      onPressed: widget.onTap,
      child: Padding(
        padding: PaddingConstant.instance.appPaddingSymmetricHorizontal8,
        child: Text(widget.text, style: TextStyle(color: ColorConstant.instance.primaryColor, fontSize: 14, fontWeight: FontWeight.w500)),
      ),
    );
  }
}

class AppGeneralButton extends StatefulWidget {
  final void Function() onPressed;
  final String text;

  const AppGeneralButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  _AppGeneralButtonState createState() => _AppGeneralButtonState();
}

class _AppGeneralButtonState extends State<AppGeneralButton> with Utils {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstant.instance.appPaddingAll2,
      child: SizedBox(
        height: screenHeigth(context) * 0.06,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstant.instance.primaryColor,
          ),
          onPressed: widget.onPressed,
          child: Text(
            widget.text,
            style: TextStyle(
              color: ColorConstant.instance.white,
              fontStyle: FontStyle.normal,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class AppElevatedButtonIcon extends StatefulWidget {
  final void Function() onTap;
  final String label;

  const AppElevatedButtonIcon({
    Key? key,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  @override
  _AppElevatedButtonIconState createState() => _AppElevatedButtonIconState();
}

class _AppElevatedButtonIconState extends State<AppElevatedButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.star), // Burada ikon belirlenir
      label: Text(widget.label), // Burada metin belirlenir
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: ColorConstant.instance.purple),
      ),
      onPressed: widget.onTap,
    );
  }
}
