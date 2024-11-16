import 'package:flutter/material.dart';

class ForgetDialog extends StatelessWidget {
  const ForgetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: Text("Success"),
      content: Container(
        width: 263,
        height: 337,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assests/img_1.png', // Replace with your image path
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 12,),
            const Text("Success",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 12,),
            const Text("You have successfully reset your password.",style: TextStyle(fontSize: 16),),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pushNamed(context, "s2");
        }, child: Text("Done"))
      ],


    );
  }
}
