import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';
import 'buttons.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late String history='';
  late String expression='';

  void clickevent(String text){
    setState(() {
      expression+=text;
    });

  }
  void allclear(String text){
    setState(() {
      history='';
      expression='';
    });

  }

  void clear(String text){
    setState(() {
      expression='';
    });

  }

  void evelute(String text){
Parser p = Parser();
Expression exp = p.parse(expression);
ContextModel cm = ContextModel();
double eval=exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      history=expression;
      expression=eval.toString();
    });
  }
  Future<void> Share()async{
    await FlutterShare.share(
      title:"Share",
      text:'Link',
      linkUrl:'https://calculator',
      chooserTitle:"Whare You Want to Share",
    );
  }


  var _style = TextStyle(
    fontSize: 17,

  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer:Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Shoyab Malik" ,style: _style,),
                  accountEmail: Text("soyabmalik7887@gmail.com",style: _style,),
                currentAccountPicture: CircleAvatar(
                  child: Image.asset('download.jpg'),

                ),

              ),

              ListTile(
                title: Text("Share App",style: TextStyle(
                  fontSize: 18,
                ),),
                leading: Icon(Icons.share),
                onTap: (){
                  Share();
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
       
          title: Text("Calculator"),
        ),
      
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(

                padding: EdgeInsets.all(12),
                child: Text(history,style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                  ),
                )),
                alignment: Alignment(1,1),
              ),

              Container(
                padding: EdgeInsets.all(35),
                child: Text(expression,style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                )),
                alignment: Alignment(1,1),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalButton(
                    text: "AC",
                    textSize: 24,
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    callback: allclear,
                  ),
                  CalButton(
                    text: "C",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clear,
                  ),
                  CalButton(
                    text: "%",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28, callback: clickevent,
                  ),
                  CalButton(
                    text: "/",
                    textColor: 0xFFFF00,
                    textSize: 28,
                    callback: clickevent,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalButton(
                    text: "7",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,

                  ),
                  CalButton(
                    text: "8",

                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "9",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "*",
                    textColor: 0xFFFF00,
                    textSize: 28,
                    callback: clickevent,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalButton(
                    text: "4",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "5",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "6",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "-",
                    textColor: 0xFFFF00,
                    textSize: 28,
                    callback: clickevent,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalButton(
                    text: "1",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "2",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "3",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "+",
                    textColor: 0xFFFF00,
                    textSize: 28,
                    callback: clickevent,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalButton(
                    text: ".",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 45,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "0",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 28,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "00",
                    textColor: 0xFFFFFFFF,
                    fillColor:0xFF66C807F,
                    textSize: 20,
                    callback: clickevent,
                  ),
                  CalButton(
                    text: "=",
                    textColor: 0xFFFF00,
                    textSize: 28,
                    callback: evelute,
                  ),
                ],
              ),
            ],
          ),


        ),
      ),
    );
  }
}





/*text:'1',
textColor: 0xFFFF00, black
fillColor: 0xFFFFFFFF, white*/
