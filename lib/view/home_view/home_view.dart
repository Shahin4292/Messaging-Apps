import 'package:demo/view/home_view/widget/drawer.dart';
import 'package:demo/view/home_view/widget/table_header.dart';
import 'package:demo/view/home_view/widget/table_row.dart';
import 'package:demo/view/home_view/widget/users_all_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../viewModel/chat_controller/chat_controller.dart';
import '../chat/chat.dart';
import '../settings/settings_view.dart';



class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ChatController controller = Get.put(ChatController());

  String selected = "Inbox";
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(phoneServices: [{'number': '+12524822998', 'sms': true, 'voice': false, 'efax': false},
      {'number': '+12145630000', 'sms': false, 'voice': false, 'efax': true},
      {'number': '+17862928609', 'sms': false, 'voice': false, 'efax': false},
      {'number': '+14079321363', 'sms': true, 'voice': true, 'efax': true},
      {'number': '+8801889560218', 'sms': false, 'voice': false, 'efax': false},]),
    ChatView(),
    SettingsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // final phoneServices = const [
  //   {'number': '+12524822998', 'sms': true, 'voice': false, 'efax': false},
  //   {'number': '+12145630000', 'sms': false, 'voice': false, 'efax': true},
  //   {'number': '+17862928609', 'sms': false, 'voice': false, 'efax': false},
  //   {'number': '+14079321363', 'sms': true, 'voice': true, 'efax': true},
  //   {'number': '+8801889560218', 'sms': false, 'voice': false, 'efax': false},
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        iconTheme: IconThemeData(color: Colors.deepPurple), // Drawer icon color
      ),
      drawer: GmailStyleDrawer(toggleTheme: () {  },),
      // drawer: Drawer(
      //   backgroundColor: Colors.white,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      //   child: Row(
      //     spacing: 10,
      //     children: [
      //       Container(
      //         width: 70,
      //         color: Color(0xFFf1f1f1),
      //         height: MediaQuery.sizeOf(context).height,
      //         child: SafeArea(
      //           child: Column(
      //             spacing: 15,
      //             children: [
      //               Container(
      //                   padding: EdgeInsets.all(8),
      //                   decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(50),
      //                       border: Border.all(color: Colors.blue,width: 2)
      //                   ),
      //                   child: SvgPicture.asset("assets/icon/google.svg",height: 20,width: 20,)),
      //               Container(
      //                   padding: EdgeInsets.all(4),
      //                   decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(50),
      //                       border: Border.all(color: Colors.grey,width: 2)
      //                   ),
      //                   child: Icon(Icons.add,size: 23,color: Colors.black)),
      //               Spacer(),
      //               Icon(Icons.help, color: Colors.grey),
      //               Icon(Icons.settings, color: Colors.grey),
      //             ],
      //           ),
      //         ),
      //       ),
      //       SafeArea(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Row(
      //               children: [
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       "Google",
      //                       style: TextStyle(
      //                         color: Colors.grey.shade700,
      //                         fontSize: 13,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                     Text(
      //                       "bpitalha@gmail.com",
      //                       style: TextStyle(
      //                         color: Colors.grey,
      //                         fontSize: 11,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //             SizedBox(height: 3),
      //             Container(color: Colors.grey,height: 1,width: 220),
      //             SizedBox(height: 10),
      //             InkWell(
      //               splashColor: Colors.transparent,
      //               onTap: () {
      //                 setState(() {
      //                   selected = "Inbox";
      //                 });
      //               },
      //               child: Row(
      //                 spacing: 8,
      //                 children: [
      //                   Icon(
      //                     Icons.inbox_outlined,size: 20,
      //                     color:
      //                     selected == "Inbox" ? Colors.blue : Colors.grey,
      //                   ),
      //                   Text(
      //                     "Inbox",
      //                     style: TextStyle(
      //                       color:
      //                       selected == "Inbox"
      //                           ? Colors.blue
      //                           : Colors.grey,
      //                       fontSize: 15,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             SizedBox(height: 10),
      //             InkWell(
      //               splashColor: Colors.transparent,
      //               onTap: () {
      //                 setState(() {
      //                   selected = "Drafts";
      //                 });
      //               },
      //               child: Row(
      //                 spacing: 8,
      //                 children: [
      //                   Icon(Icons.drafts_outlined,size: 20, color:
      //                   selected == "Drafts" ? Colors.blue : Colors.grey,),
      //                   Text(
      //                     "Drafts",
      //                     style: TextStyle(
      //                       color:
      //                       selected == "Drafts" ? Colors.blue : Colors.grey,
      //                       fontSize: 15,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.grey.shade300),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:  BorderRadius.circular(30),
                  onTap: () => _onItemTapped(0),
                  child: Container(
                    padding: const EdgeInsets.only(
                      bottom: 15,
                      left: 30,
                      right: 30,
                      top: 15,
                    ),
                    child: Icon(
                      _selectedIndex == 0
                          ? Icons.inbox_rounded
                          : Icons.inbox_outlined,
                      color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ),
            // Chat Icon
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:  BorderRadius.circular(30),
                  onTap: () => _onItemTapped(1),
                  child: Container(
                    padding: const EdgeInsets.only(
                      bottom: 15,
                      left: 30,
                      right: 30,
                      top: 15,
                    ),
                    child: Icon(
                      _selectedIndex == 1
                          ? CupertinoIcons.chat_bubble_fill
                          : CupertinoIcons.chat_bubble,
                      color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ),
            // Settings Icon
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:  BorderRadius.circular(30),
                  onTap: () => _onItemTapped(2),
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 15,
                      left: 30,
                      right: 30,
                      top: 15,
                    ),
                    child: Icon(
                      _selectedIndex == 2
                          ? CupertinoIcons.gear_alt_fill
                          : CupertinoIcons.gear_alt,
                      color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex]
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.phoneServices,
  });

  final List<Map<String, Object>> phoneServices;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(left: 14, right: 14),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6EAF3),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        topLeft: Radius.circular(6),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.people_alt,
                          color: Colors.deepPurple,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Text('Users', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    margin: EdgeInsets.only(left: 14, right: 14, top: 14),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4FB),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        Text('26', style: TextStyle(fontSize: 34)),
                        Text(
                          'Users',
                          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TableHeader(),
                  const UserRow(
                    name: 'Abu Talha',
                    date: '09 Apr, 2025 10:05 am',
                    color: Color(0xFFe9eaee),
                  ),
                  const UserRow(
                    name: 'John Doe',
                    date: '03 Mar, 2025 02:38 pm',
                    color: Color(0xFFf5f7fb),
                  ),
                  const UserRow(
                    name: 'Test User',
                    date: '03 Mar, 2025 02:22 pm',
                    color: Color(0xFFe9eaee),
                  ),
                  const UserRow(
                    name: 'Akramul Hai...',
                    date: '02 Dec, 2024 02:47 pm',
                    color: Color(0xFFf5f7fb),
                  ),
                  const UserRow(
                    name: 'Nazul Moha...',
                    date: '24 Nov, 2024 11:59 am',
                    color: Color(0xFFe9eaee),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UsersPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 3,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.deepPurple,
                          size: 15,
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6EAF3),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        topLeft: Radius.circular(6),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.supervised_user_circle_outlined,
                          color: Colors.deepPurple,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Text('Services', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      _InfoCard(title: 'Numbers', count: 6),
                      const SizedBox(width: 12),
                      _InfoCard(title: 'Services', count: 17),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _TableHeader(),
                  ...phoneServices.map((data) => _PhoneRow(
                    number: data['number'] as String,
                    sms: data['sms'] as bool,
                    voice: data['voice'] as bool,
                    efax: data['efax'] as bool,
                  )),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {},
                    child: const Text('→ View All',
                        style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final int count;

  const _InfoCard({required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          color: const Color(0xFFF1F4FB),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text('$count', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class _TableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE6EAF3),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        children: const [
          Expanded(child: Text('Phone Number', style: TextStyle(fontWeight: FontWeight.bold))),
          Text('SMS', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 16),
          Text('Voice', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 16),
          Text('eFax', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _PhoneRow extends StatelessWidget {
  final String number;
  final bool sms;
  final bool voice;
  final bool efax;

  const _PhoneRow({
    required this.number,
    required this.sms,
    required this.voice,
    required this.efax,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.05),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        spacing: 8,
        children: [
          Expanded(child: Text(number)),
          _ServiceIcon(active: sms),
          const SizedBox(width: 16),
          _ServiceIcon(active: voice),
          const SizedBox(width: 16),
          _ServiceIcon(active: efax),
        ],
      ),
    );
  }
}

class _ServiceIcon extends StatelessWidget {
  final bool active;

  const _ServiceIcon({required this.active});

  @override
  Widget build(BuildContext context) {
    return Icon(
      active ? Icons.check_circle : Icons.check_circle_outline,
      color: active ? Colors.green : Colors.grey,
      size: 18,
    );
  }
}

