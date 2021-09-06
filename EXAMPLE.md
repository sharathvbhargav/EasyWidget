# Usage of Edit text widget
    import 'package:svb_easy_widget/edit_text.dart';
    class Example extends StatelessWidget {
      const Example({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        EditText editText;
        return Scaffold(
          appBar: AppBar(
            title: Text('First Route'),
          ),
          body: SafeArea(
            child:editText = EditText(
              controller: null,
              hintText: "Hello Dude",
              margin: EdgeInsets.fromLTRB(100, 100, 0, 0),
              width: 500,
              height: 50,
            ),
          ),
        );
      }
    }


# Usage of Linear Layout Widget
    import 'package:svb_easy_widget/const/orientation.dart';
    import 'package:svb_easy_widget/linear_layout.dart';

    class Example extends StatelessWidget {
      const Example({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return  Scaffold(
          appBar: AppBar(
            title: Text('First Route'),
          ),
          body: SafeArea(
            child: LinearLayout(
              layoutOrientation: LayoutOrientation.horizontal,
              backgroundColor: Colors.amber[300],
              widgets: [
                Text("Hello"),
                Text("Good")
              ],
            ),
          ),
        );
      }
    }