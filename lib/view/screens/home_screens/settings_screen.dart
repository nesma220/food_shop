// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_342/main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  toggleSwitch(context) {
    if (isDark == true) {
      MyApp.of(context).changeTheme(ThemeMode.light);
    } else {
      MyApp.of(context).changeTheme(ThemeMode.dark);
    }
  }

  bool Change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            isDark == false ? Colors.white : Colors.orange.shade700,
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 190,
            child: ListView.builder(
              itemCount: 3,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              itemBuilder: (context, index) {
                return ListTileWidget(
                  image: Apptest[index].image,
                  text: Apptest[index].text,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ListTile(
              leading:
                  Image.asset('assets/images/bottomNavigationBar/time.png'),
              title: Text('Notification'),
              trailing: CupertinoSwitch(
                activeColor: Colors.orange.shade800,
                value: isDark,
                onChanged: (value) {
                  setState(() {
                    //   value = isDark;
                    toggleSwitch(context);
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ListTile(
              leading:
                  Image.asset('assets/images/bottomNavigationBar/update.png'),
              title: const Text('update'),
              trailing: CupertinoSwitch(
                activeColor: Colors.orange.shade800,
                value: Change,
                onChanged: (value) {
                  setState(() {
                    Change = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  String image;
  String text;
  ListTileWidget({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Text(text),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

class ListModel {
  String image;
  String text;
  ListModel({
    required this.image,
    required this.text,
  });
}

List<ListModel> Apptest = [
  ListModel(
      image: 'assets/images/bottomNavigationBar/email.png',
      text: 'Notification'),
  ListModel(
      image: 'assets/images/bottomNavigationBar/lock.png',
      text: 'Email Support'),
  ListModel(
      image: 'assets/images/bottomNavigationBar/question.png', text: 'FAQ'),
];
