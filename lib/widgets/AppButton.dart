import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final double height;
  final double? width;
  final double elevation;
  final double borderRadius;
  final double fontSize;
  final Color color;
  final BorderSide? borderSide;
  final Color fontColor;
  final void Function() onPressed;
  final bool isLoading;
  final FontWeight fontWeight;
  final bool? isdisabled;
  const AppButton(
      {Key? key,
      required this.color,
      this.fontColor = Colors.white,
      this.borderSide,
      this.height = 55,
      this.elevation = 1.5,
      this.fontWeight = FontWeight.w500,
      this.width,
      this.borderRadius = 12,
      this.fontSize = 16,
      required this.isLoading,
      required this.title,
      required this.onPressed,
      this.isdisabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.toDouble() ?? 1,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,

          elevation: elevation,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            side: borderSide ?? BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
          ),
          minimumSize: Size(
            width?.toDouble() ?? 1,
            height,
          ),
          // width: width?.toDouble() ?? 1.sw,
          alignment: Alignment.center,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        onPressed: isdisabled == true
            ? null
            : () {
                onPressed();
              },
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: fontColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
            // style: AppTextStyles.r16.copyWith(
            //   color: Colors.white,
            // ),
          ),
        ),
      ),
    );
  }
}
