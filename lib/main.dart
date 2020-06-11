import 'package:flutter/cupertino.dart';

void main(){
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Hello App"),
        ),
        child: HelloRectangle(),
      ),
    )
  );
} 

// Al usarla se requiere Restart
Widget _helloRectangle(){
  return Container(
          color: CupertinoColors.activeBlue,
          width: 300.0,
          height: 400.0,
        );
}

// Al usar la instancia se requiere el Hot Reload
class HelloRectangle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            width: 300.0,
            height: 400.0,
            color: CupertinoColors.activeBlue,
            child: Center(
              child: Text("Hello World!!!", 
                style: TextStyle(fontSize: 40, 
                  color: Color.fromRGBO(255, 255, 255, 1)
                ),
              ),
            ),
          ),
    );
  }
}