import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/core/widget/ButtonTempl.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/widgets/build_Category_widget.dart';

class OrdersBuilder extends StatefulWidget {
  @override
  _OrdersBuilderState createState() => _OrdersBuilderState();
}

class _OrdersBuilderState extends State<OrdersBuilder> {
  final List<Map<String, dynamic>> items = [
    {'name': 'Water', 'price': 10, 'quantity': 1},
    {'name': 'Juice', 'price': 15, 'quantity': 0},
    {'name': 'Fresh Juice', 'price': 20, 'quantity': 1},
    {'name': 'Pepsi', 'price': 20, 'quantity': 0},
    {'name': 'Fayrouz', 'price': 20, 'quantity': 0},
  ];

  int get totalPrice {
    return items.fold(0, (sum, item) {
      return sum + ((item['price'] * item['quantity']) as int);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:
            Text('Orders', style: TextStyle(color: Colors.black, fontSize: 24)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('What’s on your mind?', style: Styles.comfortaa16),
              ],
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: BuildCategoryWidget(
                      title: index == 0
                          ? 'Cold Drinks'
                          : index == 1
                              ? 'Hot Drinks'
                              : 'Snacks',
                      imagePath: index == 0 ? test : testimagehome2,
                      isSelected: false,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return _buildItemCard(item, index);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 52.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryred,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Next', style: TextStyle(fontSize: 18)),
                    Text('EGP ${totalPrice.toString()}',
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemCard(Map<String, dynamic> item, int index) {
    return Container(
      width: 342,
      height: 95,
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Center(
              child: ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(testimagehome3),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(item['name']),
                ),
                subtitle: Text('${item['price']} LE'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (items[index]['quantity'] > 0)
                            items[index]['quantity']--;
                        });
                      },
                      icon: Icon(Icons.remove, color: kPrimaryred),
                    ),
                    Text('${item['quantity']}', style: Styles.comfortaa16),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          items[index]['quantity']++;
                        });
                      },
                      icon: Icon(Icons.add, color: kPrimaryred),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
