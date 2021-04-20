import 'package:flutter/material.dart';

class EditText extends StatefulWidget {

  final String hintText;
  final TextStyle hintStyle;
  final EdgeInsets margin;
  final double padding;
  final String icon;
  final double iconHeight;
  final double height;
  final double width;
  final double borderRadius;
  final double borderThickness;
  final Color borderColor;
  final String errorText;
  final TextInputAction action;
  final bool isPassword;
  final Color fillingColor;
  final controller;

  EditText({Key key,
    @required
    this.controller,

    this.hintText,
    this.margin,
    this.hintStyle,
    this.padding,
    this.icon,
    this.iconHeight,
    this.height,
    this.width,
    this.borderRadius,
    this.borderThickness,
    this.borderColor,
    this.errorText,
    this.action,
    this.isPassword,
    this.fillingColor,
  }) : super(key: key);

  @override
  _EditTextState createState() => _EditTextState();

  @override
  MediaQueryData getScreenInfo(BuildContext context) {

    throw UnimplementedError();
  }
}

class _EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? EdgeInsets.all(5),
      padding: EdgeInsets.all(widget.padding ?? 5.0),
      child: Center(
        child: TextFormField(
          textInputAction: widget.action ?? TextInputAction.done,
          controller: widget.controller,
          textAlign: TextAlign.center,
          obscureText: widget.isPassword ?? false,
          decoration: InputDecoration(
            //errorText: 'Hey this cant be empty',
            fillColor: widget.fillingColor ?? Colors.transparent,
            filled: true,
            hintText: widget.hintText ?? "Enter..",
            hintStyle: widget.hintStyle ?? TextStyle(fontSize:12.0, color: Colors.black),
            prefixIcon: Padding( padding: EdgeInsets.all(13.0),
              child: Image(
                image: AssetImage(widget.icon ?? ""),
                height: widget.iconHeight ?? 10,
              ),
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.0),
              borderSide:  BorderSide(color: widget.borderColor ?? Colors.black, width: widget.borderThickness ?? 1.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor ?? Colors.black, width: widget.borderThickness ?? 1.0),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.0)
            ),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor ?? Colors.black, width: widget.borderThickness ?? 1.0),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.0)
            ),
          ),
        ),
      ),
      height: widget.height ?? double.infinity,
      width: widget.width ?? double.infinity,
    );
  }
}
