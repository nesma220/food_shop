import 'package:flutter/material.dart';
import 'package:task_342/main.dart';

class ProFileScreen extends StatelessWidget {
  const ProFileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/bottomImage/Rectangle_Image.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 54, top: 50),
                  child: ListTile(
                    title: Center(child: Text('Profile')),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Positioned(
              top: 132,

                  left: 162,
                  child: Center(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/bottomImage/circle.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            const Center(
              child: Text(
                'Alex Nikiforov',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 4),
            const Center(child: Text('alex@msn.com')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContainerProfile(
                      image: 'assets/images/bottomImage/shop.png',
                      text: 'Progress order'),
                  const SizedBox(width: 9),
                  ContainerProfile(
                      image: 'assets/images/bottomImage/Ticket.png',
                      text: 'Promocodes'),
                  const SizedBox(width: 9),
                  ContainerProfile(
                      image: 'assets/images/bottomImage/star.png',
                      text: 'Reviewes'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 21),
              child: Text(
                'Personal Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 14),
              child: Container(
                width: double.infinity,
                height: 194,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: const Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Text('Name:'),
                      trailing: Text('Chris Harison '),
                    ),
                    ListTile(
                      leading: Text('Email:'),
                      trailing: Text('chris@gmail.com'),
                    ),
                    ListTile(
                      leading: Text('Zip Code: '),
                      trailing: Text('1200'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerProfile extends StatelessWidget {
  ContainerProfile({super.key, required this.image, required this.text});
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 127,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          CircleAvatar(
            backgroundColor: const Color(0xffFFE9E2),
            child: Image.asset(image),
          ),
          const SizedBox(height: 23),
          Text(
            text,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 7),
          const Text(
            '10+',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
