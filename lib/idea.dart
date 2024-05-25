// import 'package:flutter/material.dart';

// void main() {
//   runApp(FoodManagerApp());
// }

// class FoodManagerApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Food Manager',
//       home: FoodManagerScreen(),
//     );
//   }
// }

// class FoodManagerScreen extends StatelessWidget {
//   final List<FoodItem> items = [
//     FoodItem(
//       name: 'Noodles',
//       quantity: '3 packet',
//       addedDate: '02-10-2020',
//       expirationDate: '29-10-2020',
//       imagePath: 'assets/noodles.jpeg',

//     ),
//     FoodItem(
//       name: 'Prawn',
//       quantity: '12 pieces',
//       addedDate: '02-10-2020',
//       expirationDate: '29-10-2020',
//       imagePath: 'assets/prawns.jpeg',
// ),
//  FoodItem(
//       name: 'corn flour',
//       quantity: '0.75kg',
//       addedDate: '02-10-2020',
//       expirationDate: '29-10-2020',
//       imagePath: 'assets/flour.jpeg',
//     ),
//     FoodItem(
//       name: 'eggs',
//       quantity: '24 pieces',
//       addedDate: '02-10-2020',
//       expirationDate: '29-10-2020',
//       imagePath: 'assets/eggs.jpeg',
// ),
//  FoodItem(
//       name: 'tomatoes',
//       quantity: '12 pieces',
//       addedDate: '02-10-2020',
//       expirationDate: '29-10-2020',
//       imagePath: 'assets/toma.jpeg',
//     ),
//     FoodItem(
//       name: 'chicken',
//       quantity: '0.75kg',
//       addedDate: '02-10-2020',
//       expirationDate: '29-10-2020',
//       imagePath: 'assets/chicken.jpeg',
// ),
//  FoodItem(
//       name: 'beef',
//       quantity: '1.5kg',
//       addedDate: '02-10-2020',
//       expirationDate: '29-10-2020',
//       imagePath: 'assets/beef.jpeg',
// ),
//     // Add more food items as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Food Manager'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             // Handle back button press
//           },
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Image.asset(
//                   items[index].imagePath,
//                   width: 80.0,
//                   height: 80.0,
//                 ),
//                 SizedBox(width: 16.0),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         items[index].name,
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 8.0),
//                       Text(items[index].quantity),
//                       SizedBox(height: 8.0),
//                       Text('Added: ${items[index].addedDate}'),
//                       SizedBox(height: 8.0),
//                       Text('Ex: ${items[index].expirationDate}'),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Handle "Add New" button press
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// class FoodItem {
//   final String name;
//   final String quantity;
//   final String addedDate;
//   final String expirationDate;
//   final String imagePath;

//   FoodItem({
//     required this.name,
//     required this.quantity,
//     required this.addedDate,
//     required this.expirationDate,
//     required this.imagePath,
//   });
// }