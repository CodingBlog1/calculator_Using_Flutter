import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalButton extends StatelessWidget {
    const CalButton({Key? key, required this.text, required this.textColor , this.fillColor= 0xFFFFFFFF,this.textSize=24.0, required this.callback}) : super(key: key);
  final  String text;
 final  int textColor;
final int fillColor;
final double textSize;
final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),

          ),
          child: Text(text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
          onPressed: (){
               callback(text);
          },
          color: fillColor != null ?Color(fillColor):null,
          // textColor: Color(textColor),

        ),
      ),
    );
  }
}
