import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
 const StyledText(this.text,{super.key});

 final String text;


  @override
  Widget build(context) {
   return Text(
    text,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 48,
    ),
   );
   
  }
}



// import 'package:flutter/material.dart';

// class StyledText extends StatelessWidget {
//   final String text;
//   final double fontSize;
//   final Color color;

//   const StyledText({
//     super.key,
//     required this.text,
//     this.fontSize = 48,
//     this.color = Colors.white,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         color: color,
//         fontSize: fontSize,
//         fontWeight: FontWeight.bold,
//         letterSpacing: 1.2,
//       ),
//     );
//   }
// }



