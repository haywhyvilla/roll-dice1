import 'package:flutter/material.dart';
import 'package:my_first_flutter/dice_roller.dart';


var startAlignmnet = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;


  final Color color1;
  final Color color2;

 

  @override
 Widget build(context) {
  return Container(
          decoration: BoxDecoration( 
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignmnet,
              end: endAlignment, 
            ),
          ),
          child: Center(
            
            child: DiceRoller()
          ),
        );
 }
}


// import 'package:flutter/material.dart';
// import 'styled_text.dart';

// class GradientContainer extends StatefulWidget {
//   const GradientContainer({super.key});

//   @override
//   State<GradientContainer> createState() => _GradientContainerState();
// }

// class _GradientContainerState extends State<GradientContainer>
//     with SingleTickerProviderStateMixin {

//   late AnimationController _controller;
//   late Animation<double> _fadeAnimation;
//   late Animation<Offset> _slideAnimation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 1),
//     );

//     _fadeAnimation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeIn,
//     );

//     _slideAnimation = Tween<Offset>(
//       begin: const Offset(0, 0.3),
//       end: Offset.zero,
//     ).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeOut,
//       ),
//     );

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color(0xFF220628),
//             Color(0xFF4B1056),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Center(
//         child: FadeTransition(
//           opacity: _fadeAnimation,
//           child: SlideTransition(
//             position: _slideAnimation,
//             child: const StyledText(
//               text: 'Hello Flutter 👋',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }






