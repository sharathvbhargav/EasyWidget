import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final double height;
  final double width;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Size buttonSize;
  final String text;
  final TextStyle style;
  final double iconPadding;
  final String icon;
  final Color color;
  final double borderRadius;
  final VoidCallback onClick;
  const Button({Key key,
    this.height,
    this.width,
    this.margin,
    this.padding,
    this.buttonSize,
    this.text,
    this.style,
    this.iconPadding,
    this.icon,
    this.color,
    this.borderRadius,
    this.onClick
  }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 40.0,
      width: widget.width ?? double.infinity,
      margin: widget.margin ?? EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ElevatedButton(
        onPressed: () {widget.onClick();},
        child: Container(
          padding: widget.padding ?? EdgeInsets.fromLTRB(15, 5, 15, 5),
          child: SizedBox.fromSize(
            size: widget.buttonSize ?? Size(100, 40), // button width and height// button color
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(widget.text ?? "Text", style:  widget.style ?? TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0, letterSpacing: 1.2)),
                Padding(padding: EdgeInsets.all(widget.iconPadding ?? 12.0) ,child: Image.asset(widget.icon ?? "")),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: widget.color ?? Colors.grey,
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
          ),
        ),
      ),
    );
  }
}
