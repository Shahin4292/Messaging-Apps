import 'package:demo/view/home_view/widget/table_header.dart';
import 'package:demo/view/home_view/widget/table_row.dart';
import 'package:demo/view/home_view/widget/users_all_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../viewModel/chat_controller/chat_controller.dart';



class HomeView extends StatelessWidget {
  HomeView({super.key});

  final ChatController controller = Get.put(ChatController());

  final phoneServices = const [
    {'number': '+12524822998', 'sms': true, 'voice': false, 'efax': false},
    {'number': '+12145630000', 'sms': false, 'voice': false, 'efax': true},
    {'number': '+17862928609', 'sms': false, 'voice': false, 'efax': false},
    {'number': '+14079321363', 'sms': true, 'voice': true, 'efax': true},
    {'number': '+8801889560218', 'sms': false, 'voice': false, 'efax': false},
  ];

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
      body: SingleChildScrollView(
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

