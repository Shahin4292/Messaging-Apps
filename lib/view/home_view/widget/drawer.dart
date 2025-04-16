import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GmailStyleDrawer extends StatefulWidget {
  final VoidCallback toggleTheme;
  const GmailStyleDrawer({super.key, required this.toggleTheme});

  @override
  GmailStyleDrawerState createState() => GmailStyleDrawerState();
}

class GmailStyleDrawerState extends State<GmailStyleDrawer> {
  String selectedItem = '';
  bool showFirstMenuItems = false;
  bool showSecondMenuItems = false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: SafeArea(
        child: Row(
          children: [
            Container(
              width: 72,
              color: Colors.grey.shade100,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue, width: 2),
                      shape: BoxShape.circle,
                    ),
                      child: SvgPicture.asset("assets/icon/google.svg",height: 20,width: 20,)
                  ),
                  const SizedBox(height: 20),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add, color: Colors.black),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        showFirstMenuItems = true;
                        showSecondMenuItems = false;
                        selectedIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.home, color: selectedIndex == 0 ? Colors.blue :Colors.grey),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        showFirstMenuItems = true;
                        showSecondMenuItems = false;
                        selectedIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.message_outlined, color: selectedIndex == 1 ? Colors.blue :Colors.grey),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        showFirstMenuItems = false;
                        showSecondMenuItems = true;
                        selectedIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.local_print_shop_outlined, color: selectedIndex == 2 ? Colors.blue :Colors.grey),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        showFirstMenuItems = true;
                        showSecondMenuItems = false;
                        selectedIndex = 3;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.history, color: selectedIndex == 3 ? Colors.blue :Colors.grey),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        showFirstMenuItems = true;
                        showSecondMenuItems = false;
                        selectedIndex = 4;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.campaign_outlined, color: selectedIndex == 4 ? Colors.blue :Colors.grey),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        showFirstMenuItems = true;
                        showSecondMenuItems = false;
                        selectedIndex = 5;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.insert_chart_outlined, color: selectedIndex == 5 ? Colors.blue :Colors.grey),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.help_outline, size: 20),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, size: 20),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Google', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                        Text('bpitalha@gmail.com', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Divider(height: 1),
                  // if (showFirstMenuItems) ...[
                  //   ListTile(
                  //     leading: Icon(Icons.home_outlined,
                  //         color: selectedItem == 'Home' ? Colors.blue : Colors.black),
                  //     title: Text(
                  //       'Home',
                  //       style: TextStyle(
                  //         color: selectedItem == 'Home' ? Colors.blue : Colors.black,
                  //       ),
                  //     ),
                  //     selected: selectedItem == 'Home',
                  //     selectedTileColor: Colors.blue.withOpacity(0.1),
                  //     onTap: () {
                  //       setState(() => selectedItem = 'Home');
                  //     },
                  //   ),
                  //   ListTile(
                  //     leading: Icon(Icons.inbox_outlined,
                  //         color: selectedItem == 'Inbox' ? Colors.blue : Colors.black),
                  //     title: Text(
                  //       'Inbox',
                  //       style: TextStyle(
                  //         color: selectedItem == 'Inbox' ? Colors.blue : Colors.black,
                  //       ),
                  //     ),
                  //     selected: selectedItem == 'Inbox',
                  //     selectedTileColor: Colors.blue.withOpacity(0.1),
                  //     onTap: () {
                  //       setState(() => selectedItem = 'Inbox');
                  //     },
                  //   ),
                  //   ListTile(
                  //     leading: Icon(Icons.edit,
                  //         color: selectedItem == 'Drafts' ? Colors.blue : Colors.black),
                  //     title: Text(
                  //       'Drafts',
                  //       style: TextStyle(
                  //         color: selectedItem == 'Drafts' ? Colors.blue : Colors.black,
                  //       ),
                  //     ),
                  //     selected: selectedItem == 'Drafts',
                  //     selectedTileColor: Colors.blue.withOpacity(0.1),
                  //     onTap: () {
                  //       setState(() => selectedItem = 'Drafts');
                  //     },
                  //   ),
                  // ],
                  if (showSecondMenuItems) ...[
                    // Row(
                    //   children: [
                    //     Icon(Icons.inbox_outlined, color: Colors.blue),
                    //     const SizedBox(width: 10),
                    //     const Text('Inbox', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    //   ],
                    // ),
                    ListTile(
                      leading: Icon(Icons.inbox_outlined,
                          color: selectedItem == 'Inbox' ? Colors.blue : Colors.black),
                      title: Text(
                        'Inbox',
                        style: TextStyle(
                          color: selectedItem == 'Inbox' ? Colors.blue : Colors.black,
                        ),
                      ),
                      selected: selectedItem == 'Inbox',
                      onTap: () {
                        setState(() => selectedItem = 'Inbox');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.mail_outline,
                          color: selectedItem == 'Mail' ? Colors.blue : Colors.black),
                      title: Text(
                        'Mail',
                        style: TextStyle(
                          color: selectedItem == 'Mail' ? Colors.blue : Colors.black,
                        ),
                      ),
                      selected: selectedItem == 'Mail',
                      selectedTileColor: Colors.blue.withOpacity(0.1),
                      onTap: () {
                        setState(() => selectedItem = 'Mail');
                      },
                    ),
                  ],
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
