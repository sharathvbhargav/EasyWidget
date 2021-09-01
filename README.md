# easy_widget

A new Flutter package for easier and simpler usage of widgets

## Getting Started

This use this plugin follow the steps below

1. Add the following code in pubspec.yaml

        dependencies:
          svb_easy_widget: ^0.0.3
          
          
2. Import the file in the .dart file where you want use the widget

        import 'package:svb_easy_widget/edit_text.dart';
        
3. Use the following code block as a widget

        //Use this as Global declaration
        EditText editText;
        
        //Assign the widget to the global variable
        editText = EditText(
            controller: null,
            hintText: "Hello Dude",
            margin: EdgeInsets.fromLTRB(100, 100, 0, 0),
            width: 500,
            height: 50,
        ),
      
4. Call the following method on button click or any action wher eyou want to get text

        editText.getText();

Note: New features on this widget is work in progress update when its available


