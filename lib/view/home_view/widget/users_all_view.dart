import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      'name': 'Abu Talha',
      'phone': '+880 1968-210824',
      'email': 'talha@alpha.net.bd',
    },
    {
      'name': 'Nazrul',
      'phone': '-',
      'email': 'nazrul@alpha.net.bd',
    },
    {
      'name': 'John Doe',
      'phone': '+12345678906',
      'email': 'john12@doe.com',
    },
    {
      'name': 'Test User',
      'phone': '+12345678905',
      'email': 'test@test.com',
    },
    {
      'name': 'Akramul Haider',
      'phone': '+8801717547393',
      'email': 'ceo@alpha.net.bd',
    },
    {
      'name': 'Nazul Mohammad',
      'phone': '+880 1968-210824',
      'email': 'nazrulislam@alpha.net.bd',
    },
    {
      'name': 'Nina Nielsen',
      'phone': '-',
      'email': 'finupy@mailinator.com',
    },
    {
      'name': 'Hamish Padilla',
      'phone': '+880 1770-814477',
      'email': 'hewu@mailinator.com',
    },
    {
      'name': 'Lael Byrd',
      'phone': '-',
      'email': 'qadinyju@mailinator.com',
    },
    {
      'name': 'Chloe Sampson',
      'phone': '+880 1770-814477',
      'email': 'xefuly@mailinator.com',
    },
    {
      'name': 'Ezekiel Castaneda',
      'phone': '+880 1770-814477',
      'email': 'pided@mailinator.com',
    },
    {
      'name': 'Jeremy Acevedo',
      'phone': '+880 1770-814477',
      'email': 'jykyhe@mailinator.com',
    },
    {
      'name': 'Violet Stephens',
      'phone': '-',
      'email': 'qodidohyn@mailinator.com',
    },
    {
      'name': 'Ezekiel Castaneda',
      'phone': '+880 1770-814477',
      'email': 'pided@mailinator.com',
    },
    {
      'name': 'Jeremy Acevedo',
      'phone': '+880 1770-814477',
      'email': 'jykyhe@mailinator.com',
    },
    {
      'name': 'iammashikur@gmail.com',
      'phone': '-',
      'email': 'iammashikur@gmail.com',
    },
    {
      'name': 'mashikur@alpha.net.bd',
      'phone': '-',
      'email': 'mashikur@alpha.net.bd',
    },
    {
      'name': 'Ezekiel Castaneda',
      'phone': '+880 1770-814477',
      'email': 'pided@mailinator.com',
    },
    {
      'name': 'Jeremy Acevedo',
      'phone': '+880 1770-814477',
      'email': 'jykyhe@mailinator.com',
    },
    {
      'name': 'Ezekiel Castaneda',
      'phone': '+880 1770-814477',
      'email': 'pided@mailinator.com',
    },
    {
      'name': 'Jeremy Acevedo',
      'phone': '+880 1770-814477',
      'email': 'jykyhe@mailinator.com',
    },
  ];

  UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.pop(context);
        }),
        backgroundColor: Colors.indigo[50],
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                Text('Users', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Spacer(),
                Container(
                  height: 32,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Center(child: Text("+ Invite User",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(width: 10),
                Container(
                  height: 32,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: Center(child: Text("+ Add User",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.indigo[100],
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Expanded(child: Text("Name", style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(child: Text("Phone Number", style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(child: Text("Email", style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Text(user['name'] ?? '-',style: TextStyle(overflow: TextOverflow.ellipsis))),
                      Expanded(child: Text(user['phone'] ?? '-',style: TextStyle(overflow: TextOverflow.ellipsis))),
                      Expanded(child: Text(user['email'] ?? '-',style: TextStyle(overflow: TextOverflow.ellipsis))),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
