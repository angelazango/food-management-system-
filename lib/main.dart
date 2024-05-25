import 'package:flutter/material.dart';
//import 'package:manager/buttom.dart';

void main() {
  runApp(FoodManagerApp());
}

class FoodManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Manager',
      debugShowCheckedModeBanner: false,
      home: FoodManagerApp(),

    );
  }
}


class FoodManagerScreen extends StatelessWidget {
  final List<FoodItem> items = [
    FoodItem(
      name: 'Noodles',
      quantity: '3 packets',
      addedDate: '02-10-2020',
      expirationDate: '29-10-2020',
      imagePath: 'assets/noodles.jpeg',
    ),
    FoodItem(
      name: 'Prawn',
      quantity: '12 pieces',
      addedDate: '02-10-2020',
      expirationDate: '29-10-2020',
      imagePath: 'assets/prawns.jpeg',
),
 FoodItem(
      name: 'corn flour',
      quantity: '0.75kg',
      addedDate: '02-10-2020',
      expirationDate: '29-10-2020',
      imagePath: 'assets/flour.jpeg',
    ),
    FoodItem(
      name: 'eggs',
      quantity: '24 pieces',
      addedDate: '02-10-2020',
      expirationDate: '29-10-2020',
      imagePath: 'assets/eggs.jpeg',
),
 FoodItem(
      name: 'tomatoes',
      quantity: '12 pieces',
      addedDate: '02-10-2020',
      expirationDate: '29-10-2020',
      imagePath: 'assets/toma.jpeg',
    ),
    FoodItem(
      name: 'chicken',
      quantity: '0.75kg',
      addedDate: '02-10-2020',
      expirationDate: '29-10-2020',
      imagePath: 'assets/chicken.jpeg',
),
 FoodItem(
      name: 'beef',
      quantity: '1.5kg',
      addedDate: '02-10-2020',
      expirationDate: '29-10-2020',
      imagePath: 'assets/beef.jpeg',
),

    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Manager'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          
          },
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return FoodItemWidget(items[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class FoodItemWidget extends StatelessWidget {
  final FoodItem item;

  FoodItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            item.imagePath,
            width: 80.0,
            height: 80.0,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(item.quantity),
                SizedBox(height: 8.0),
                Text('Added: ${item.addedDate}'),
                SizedBox(height: 8.0),
                Text('Ex: ${item.expirationDate}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodItem {
  final String name;
  final String quantity;
  final String addedDate;
  final String expirationDate;
  final String imagePath;

  FoodItem({
    required this.name,
    required this.quantity,
    required this.addedDate,
    required this.expirationDate,
    required this.imagePath,
  }
  )
  ;
}


















