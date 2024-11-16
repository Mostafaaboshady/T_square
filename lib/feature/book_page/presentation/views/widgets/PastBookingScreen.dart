import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
class PastBookingScreen extends StatefulWidget {
  const PastBookingScreen({super.key});

  @override
  State<PastBookingScreen> createState() => _PastBookingScreenState();
}

class _PastBookingScreenState extends State<PastBookingScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    print(index);
  }
  List name =["Training Room","Meeting Room"," Funny Room"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(itemBuilder: (context,index){
          return SizedBox(
            height:320 ,
            width: double.infinity,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${name[index]}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xff111111),),),
                    SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month,size: 16,color: kPrimaryred,),
                            SizedBox(width: 1.5,),
                            Text("Date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                          ],
                        ),
                        Text("18/2/2024", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.watch_later,size: 16,color: kPrimaryred,),
                            SizedBox(width: 1.5,),
                            Text("Time", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                          ],
                        ),
                        Text("09:00 Am", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.event_seat,size: 16,color:kPrimaryred,),
                            SizedBox(width: 1.5,),
                            Text(" Seats", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                          ],
                        ),
                        Text("x1", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.attach_money,size: 16,color: kPrimaryred,),
                            SizedBox(width: 1.5,),
                            Text("Deposit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                          ],
                        ),
                        Text("50.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.attach_money,size: 16,color:kPrimaryred,),
                            SizedBox(width: 1.5,),
                            Text("The rest of the money", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                          ],
                        ),
                        Text("30.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.coffee,size: 16,color:kPrimaryred,),
                            SizedBox(width: 1.5,),
                            Text("Coffee", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff262626),),),
                          ],
                        ),
                        Text("20.00 LE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4E4E4E),),),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Booking Status", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff262626),),),
                        Text("Paid", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kPrimaryred,),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },itemCount: 3,),
      ),

    );
  }
}