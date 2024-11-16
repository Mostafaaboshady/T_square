import 'package:flutter/material.dart';
class HyperlinkTempl extends StatelessWidget {
  const HyperlinkTempl({super.key , required this.textBefore, required this.textLink,  required this.page});

  final String textBefore;
  final String textLink;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
    
     children: [
    
    
       Text("$textBefore", style: TextStyle(color: Colors.black),),
    
    
       MouseRegion(
       cursor: SystemMouseCursors.click,  // Hand pointer on hover
       child: InkWell(
         onTap: () {
           // Navigate to SecondPage on tap
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => page),
           );
         },
         child: Text(
           '$textLink',
           style: TextStyle(
             color: Color(0xffcc1b24),
             decoration: TextDecoration.underline,  // Make it look like a hyperlink
             
           ),
         ),
       ),
     ),
     ],
    );
  }
}