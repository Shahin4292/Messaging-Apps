import 'package:flutter/material.dart';

final List<String> mainFilters = [
  'All',
  'Mine',
  'All inboxes',
  'Sort: Latest'
];

final Map<String, List<String>> subOptionsMap = {
  'Mine': ['Mine', 'Open', 'Pending', 'Snoozed', 'Resolved'],
  'All inboxes': [
    'Alpha',
    'Pbx.com.bd (Fb)',
    'Sms.net.bd (W)',
    'Eckhard Livechat',
    'Go Digital Bd Livechat',
    'Go Digital Bd (Fb)',
    'Alpha Pbx Livechat',
    'Alpha.net.bd Livechat',
    'Lambda Website',
    'Alpha Sms Livechat',
    'Alpha Sms (Fb)',
    'Eckhard.com.bd (Fb)',
    'Alpha Net - Online Shop (Fb)',
  ],
  'Sort: Latest': ['Latest', 'Created At', 'Priority'],
};

final Map<String, IconData> subOptionIcons = {
  'Mine': Icons.apps,
  'Open': Icons.cached_outlined,
  'Pending': Icons.light_mode_outlined,
  'Snoozed': Icons.snooze_outlined,
  'Resolved': Icons.task_alt_outlined,

  'All Inboxes': Icons.all_inbox,
  'Alpha': Icons.public,
  'Pbx.com.bd (Fb)': Icons.chat,
  'Sms.net.bd (W)': Icons.sms,
  'Eckhard Livechat': Icons.support_agent,
  'Go Digital Bd Livechat': Icons.headset_mic,
  'Go Digital Bd (Fb)': Icons.facebook,
  'Alpha Pbx Livechat': Icons.phone,
  'Alpha.net.bd Livechat': Icons.web,
  'Lambda Website': Icons.gavel,
  'Alpha Sms Livechat': Icons.message,
  'Alpha Sms (Fb)': Icons.facebook,
  'Eckhard.com.bd (Fb)': Icons.facebook,
  'Alpha Net - Online Shop (Fb)': Icons.shopping_cart,
};



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../viewModel/chat_controller/chat_controller.dart';
//
// class HomeView extends StatelessWidget {
//   HomeView({super.key});
//
//   final ChatController controller = Get.put(ChatController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: false,
//         automaticallyImplyLeading: false,
//         forceMaterialTransparency: true,
//         backgroundColor: Colors.white,
//         title: Row(
//           spacing: 8,
//           children: [
//             Icon(Icons.menu),
//             Text(
//               "Dashboard",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Padding(
//           padding: EdgeInsets.only(left: 14, right: 14),
//           child: Column(
//             children: [
//               Container(
//                 padding: EdgeInsets.only(bottom: 10),
//                 width: MediaQuery.sizeOf(context).width,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: MediaQuery.sizeOf(context).width,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFE6EAF3),
//                         borderRadius: BorderRadius.only(
//                           topRight: Radius.circular(6),
//                           topLeft: Radius.circular(6),
//                         ),
//                       ),
//                       padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.people_alt,
//                             color: Colors.deepPurple,
//                             size: 20,
//                           ),
//                           SizedBox(width: 8),
//                           Text('Users', style: TextStyle(fontSize: 16)),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: MediaQuery.sizeOf(context).width,
//                       margin: EdgeInsets.only(left: 14, right: 14, top: 14),
//                       padding: EdgeInsets.symmetric(vertical: 15),
//                       decoration: BoxDecoration(
//                         color: Color(0xFFF1F4FB),
//                         borderRadius: BorderRadius.circular(14),
//                       ),
//                       child: Column(
//                         children: [
//                           Text('26', style: TextStyle(fontSize: 34)),
//                           Text(
//                             'Users',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: MediaQuery.sizeOf(context).width,
//                       margin: EdgeInsets.only(left: 14, right: 14, top: 14),
//                       padding: EdgeInsets.symmetric(vertical: 15),
//                       decoration: BoxDecoration(
//                         color: Color(0xFFF1F4FB),
//                         borderRadius: BorderRadius.circular(14),
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.message,
//                                 color: Colors.deepPurple,
//                                 size: 20,
//                               ),
//                               SizedBox(width: 8),
//                               Text('Messages', style: TextStyle(fontSize: 16)),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     // const SizedBox(height: 16),
//                     // const TableHeader(),
//                     // const UserRow(
//                     //   name: 'Abu Talha',
//                     //   date: '09 Apr, 2025 10:05 am',
//                     //   color: Color(0xFFe9eaee),
//                     // ),
//                     // const UserRow(
//                     //   name: 'John Doe',
//                     //   date: '03 Mar, 2025 02:38 pm',
//                     //   color: Color(0xFFf5f7fb),
//                     // ),
//                     // const UserRow(
//                     //   name: 'Test User',
//                     //   date: '03 Mar, 2025 02:22 pm',
//                     //   color: Color(0xFFe9eaee),
//                     // ),
//                     // const UserRow(
//                     //   name: 'Akramul Hai...',
//                     //   date: '02 Dec, 2024 02:47 pm',
//                     //   color: Color(0xFFf5f7fb),
//                     // ),
//                     // const UserRow(
//                     //   name: 'Nazul Moha...',
//                     //   date: '24 Nov, 2024 11:59 am',
//                     //   color: Color(0xFFe9eaee),
//                     // ),
//                     // const SizedBox(height: 12),
//                     InkWell(
//                       onTap: () {},
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         spacing: 3,
//                         children: [
//                           Icon(
//                             Icons.arrow_forward,
//                             color: Colors.deepPurple,
//                             size: 15,
//                           ),
//                           Text(
//                             'View All',
//                             style: TextStyle(
//                               color: Colors.deepPurple,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class TableHeader extends StatelessWidget {
//   const TableHeader({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: const Color(0xFFf5f7fb),
//       ),
//       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//       child: Row(
//         children: const [
//           Expanded(
//             child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
//           ),
//           Text('Date Time', style: TextStyle(fontWeight: FontWeight.bold)),
//         ],
//       ),
//     );
//   }
// }
//
// class UserRow extends StatelessWidget {
//   final String name;
//   final String date;
//   final Color color;
//
//   const UserRow({
//     super.key,
//     required this.name,
//     required this.date,
//     required this.color,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(color: color,),
//       padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//       child: Row(
//         children: [
//           Expanded(child: Text(name)),
//           Text(date, style: TextStyle(fontSize: 12)),
//         ],
//       ),
//     );
//   }
// }
