import 'package:flutter/material.dart';
import 'package:svb_easy_widget/const/orientation.dart';

class LinearLayout extends StatefulWidget {

  final double height;
  final double width;
  final EdgeInsets margin;
  final double padding;
  final LayoutOrientation layoutOrientation;
  final List<Widget> widgets;
  final Color backgroundColor;
  final String backgroundImage;

  const LinearLayout({
    Key key,
    @required
    this.height,
    @required
    this.width,
    this.margin,
    this.padding,
    this.layoutOrientation,
    this.widgets,
    this.backgroundColor,
    this.backgroundImage
  }) : super(key: key);

  @override
  _LinearLayoutState createState() => _LinearLayoutState();
}

class _LinearLayoutState extends State<LinearLayout> {
  @override
  Widget build(BuildContext context) {
    if(widget.layoutOrientation == LayoutOrientation.horizontal){
      if(widget.backgroundImage == null){
        return Container(
          color: widget.backgroundColor ?? Colors.white,
          width: widget.width,
          height: widget.height,
          margin: widget.margin ?? EdgeInsets.all(0),
          padding: widget.padding ?? EdgeInsets.all(0),
          child: Row(
              children: widget.widgets
          ),
        );
      }
      else {
        return Container(
          color: widget.backgroundColor ?? Colors.white,
          width: widget.width,
          height: widget.height,
          margin: widget.margin ?? EdgeInsets.all(0),
          padding: widget.padding ?? EdgeInsets.all(0),
          child: Row(
            children: widget.widgets
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.backgroundImage),
              fit: BoxFit.cover,
            )
          )
        );
      }
    } else {
      if(widget.backgroundImage == null){
        return Container(
          color: widget.backgroundColor ?? Colors.white,
          width: widget.width,
          height: widget.height,
          margin: widget.margin ?? EdgeInsets.all(0),
          padding: widget.padding ?? EdgeInsets.all(0),
          child: Column(
              children: widget.widgets
          ),
        );
      }
      else {
        return Container(
            color: widget.backgroundColor ?? Colors.white,
            width: widget.width,
            height: widget.height,
            margin: widget.margin ?? EdgeInsets.all(0),
            padding: widget.padding ?? EdgeInsets.all(0),
            child: Column(
                children: widget.widgets
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.backgroundImage),
                  fit: BoxFit.cover,
                )
            )
        );
      }
    }
  }
}

