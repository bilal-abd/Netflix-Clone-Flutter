// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:movie_app/homepage/api.dart';
// import 'package:movie_app/homepage/homepage_controller.dart';
// import 'package:movie_app/homepage/homepage_model.dart';

// class Home extends GetView<HomePageController> {
//  const Home({super.key});



 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(66, 6, 3, 61),
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//                 title:
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//               Image.network('https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png',
//                   fit: BoxFit.cover, height: 40),
//             ])
//       ),
//       body: controller._photolist == null || controller._photolist!.isEmpty
//           ? const Center(
//               child: CircularProgressIndicator(),
//             )
//           : ListView.builder(
//             scrollDirection: Axis.horizontal,
//               itemCount: controller._photolist!.length,
//               itemBuilder: (context, index) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Padding(padding: EdgeInsets.only(top: 50)),
//                     Text("Les films du moments:"),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Image.network(controller._photolist![index].url ?? "lala"),
//                         Text(controller._photolist![index].id.toString()),
//                         Text(controller._photolist![index].title ?? ""),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20.0,
//                     ),
                   
//                   ],
//                 );
//               },
//             ),
//     );
//   }
// }
